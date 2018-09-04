using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_RevenuesAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "RevenuesAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDLItem.DataBind();
            FillListNameEmp();
            Calendar1.DataBind();
            DDLReciveName.Items.Insert(0, new ListItem("اختر المستلم..", "select"));
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Revenue revenue = new Revenue();


        if (txtAmount.Text != null)
        {
            revenue.Price = Convert.ToInt32(txtAmount.Text);
        }

        revenue.TypeId = Convert.ToInt32(DDLItem.SelectedValue);

        int SchoolID = SchoolInfo.getId();
        revenue.SchoolId = SchoolID;


        revenue.SemesterId = MyDate.getCurrentSemesterId();

        revenue.deliveryType = int.Parse(ddlDelivery.SelectedValue);

        if (DDLReciveName.SelectedItem != null)
        {

            revenue.RecipientsName = DDLReciveName.SelectedValue;
        }

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            if (Calendar1.CultureName == "ar-SA")
                revenue.ReceiveDate = MyDate.convertHijriToGregorian(txtDate.Text);
            else
                revenue.ReceiveDate = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }
        km.Revenues.Add(revenue);
        km.SaveChanges();
        //PlaceHolderSuccess.Visible = true;
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' !! تمت الاضافة بنجاح'); </script>", false);
    }

      public void FillListNameEmp()
    {
        if (!IsPostBack)
        {
            var employee = (from emp in km.Employees
                            select emp).ToList();
            DDLReciveName.DataValueField = "IdentityNumber";
            DDLReciveName.DataTextField = "Name";
            DDLReciveName.DataSource = employee;
            DDLReciveName.DataBind();
        }

    }

}