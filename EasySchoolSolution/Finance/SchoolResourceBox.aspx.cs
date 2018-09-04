using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_SchoolResourceBox : MyPermisionPage
{
    OnlineSchoolEntities Km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "SchoolResourceBox";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SchoolResourceBox ResourceBox = new SchoolResourceBox();

       

        if (!String.IsNullOrEmpty(txtNote.Text))
            ResourceBox.Note = txtNote.Text;

        if (txtPrice.Text != null)
        {
            ResourceBox.Price = Convert.ToInt32(txtPrice.Text);
        }

        if (txtTotal.Text != null)
        {
            ResourceBox.Total = Convert.ToInt32(txtTotal.Text);
        }

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            if (CalendarDate.CultureName == "ar-SA")
                ResourceBox.Date = MyDate.convertHijriToGregorian(txtDate.Text);
            else
                ResourceBox.Date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        ResourceBox.TypeId = Convert.ToInt32(ddlPriceCome.SelectedValue);

        int SchoolID = SchoolInfo.getId();
        ResourceBox.SchoolId = SchoolID;

        ResourceBox.SemesterId = MyDate.getCurrentSemesterId();

        Km.SchoolResourceBoxes.Add(ResourceBox);
        Km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied(' !! تمت الاضافة بنجاح'); </script>", false);

    }
}