using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_MaterialDestroyAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "MaterialDestroyAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CalendarFrom.DataBind();

        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        MissingMaterial missing = new MissingMaterial();

        if (txtProductNo.Text != null)
        {

            missing.KindId = Convert.ToInt32(txtProductNo.Text);
        }

        if (!String.IsNullOrEmpty(txtProductName.Text))
            missing.KindName = txtProductName.Text;

      

        int SchoolID = SchoolInfo.getId();
        missing.SchoolId = SchoolID;
       

        missing.SemesterId = MyDate.getCurrentSemesterId();

//        missing.Day = ddlDay.SelectedItem.ToString();
        if (txtAmount.Text != null)
        {
            missing.Quantity = Convert.ToInt32(txtAmount.Text);
        }

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            if (CalendarFrom.CultureName == "ar-SA")
                missing.Date = MyDate.convertHijriToGregorian(txtDate.Text);
            else
                missing.Date = DateTime.ParseExact(txtDate.Text,"yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (!String.IsNullOrEmpty(txtNote.Text))
            missing.Comments = txtNote.Text;

        if (!String.IsNullOrEmpty(txtReson.Text))
            missing.Reason = txtReson.Text;

        if (txtUnit.Text != null)
        {
            missing.Unit = txtUnit.Text;
        }

        if (RType.SelectedItem != null)
        {

            missing.IsPerminant = Convert.ToBoolean(RType.SelectedValue);
        }


        km.MissingMaterials.Add(missing);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت الاضافة بنجاح'); </script>", false);

        // PlaceHolderSuccess.Visible = true;
    }
}