using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_DeliveryAmount : MyPermisionPage
{
    OnlineSchoolEntities onlineSchool = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "DeliveryAmount";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDLItem.DataBind();
            CalendarFrom.DataBind();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Purchase purchase = new Purchase();

      
        purchase.ItemId = Convert.ToInt32(DDLItem.SelectedValue);

       

        if (txtAmount.Text != null)
        {
            purchase.Quantity = Convert.ToInt32(txtAmount.Text);
        }

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            if (CalendarFrom.CultureName == "ar-SA")
                purchase.Date = MyDate.convertHijriToGregorian(txtDate.Text);
            else
                purchase.Date = Convert.ToDateTime(txtDate.Text);
        }

        if (txtTotalPrice.Text != null)
        {

            purchase.TotalPrice = Convert.ToInt32(txtTotalPrice.Text);
        }

        if (txtBillNo.Text != null)
        {

            purchase.BillNumber = Convert.ToInt32(txtBillNo.Text);
        }
        if ( txtUnitPrice.Text != null)
        {

            purchase.UnitPrice = Convert.ToInt32(txtUnitPrice.Text);
        }

        if (!String.IsNullOrEmpty(txtBillSide.Text))
            purchase.BillSide = txtBillSide.Text;

        int SchoolID = SchoolInfo.getId();
        purchase.SchoolId = SchoolID;

        purchase.SemesterId = MyDate.getCurrentSemesterId();

        onlineSchool.Purchases.Add(purchase);
        onlineSchool.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' !! تمت الاضافة بنجاح'); </script>", false);


    }
}