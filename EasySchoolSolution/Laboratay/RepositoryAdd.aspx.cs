using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_RepositoryAdd : MyPermisionPage
{
    OnlineSchoolEntities onlineSchool = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "RepositoryAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CalendarFrom.DataBind();
        }
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        Repository repositay = new Repository();

        if (txtProductNo.Text!= null)
        {

            repositay.KindId = Convert.ToInt32(txtProductNo.Text);
        }

            if (!String.IsNullOrEmpty(txtDescription.Text))
                repositay.Description = txtDescription.Text;

        if (txtAmount.Text != null)
        {
            repositay.Quantity = Convert.ToInt32(txtAmount.Text);
        }

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            if (CalendarFrom.CultureName == "ar-SA")
                repositay.Date = MyDate.convertHijriToGregorian(txtDate.Text);
            else
                repositay.Date = Convert.ToDateTime(txtDate.Text);
        }

        if (!String.IsNullOrEmpty(txtNote.Text))
            repositay.Comment = txtNote.Text;

        if (RState.SelectedItem != null)
        {
            
                repositay.IsDamaged = Convert.ToBoolean(RState.SelectedValue);
        }

        if (RType.SelectedItem != null)
        {

            repositay.IsPerminant = Convert.ToBoolean(RType.SelectedValue);
        }

        repositay.SchoolId = new SchoolInformation().getId();
        repositay.SemesterId = MyDate.getCurrentSemesterId();

        onlineSchool.Repositories.Add(repositay);
        onlineSchool.SaveChanges();
        PlaceHolderSuccess.Visible = true;


    }
}