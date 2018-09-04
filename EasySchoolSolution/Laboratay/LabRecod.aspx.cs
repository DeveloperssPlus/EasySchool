using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_LabRecod : MyPermisionPage
{
    OnlineSchoolEntities onlineSchool = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "LabRecod";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
   
    protected void btnSave_Click(object sender, EventArgs e)
    {

        Laboratory laboratory = new Laboratory();

        if (txtProductNo.Text != null)
        {

            laboratory.KindId = Convert.ToInt32(txtProductNo.Text);
        }

        if (!String.IsNullOrEmpty(txtProductName.Text))
            laboratory.KindName = txtProductName.Text;

        if (txtAmount.Text != null)
        {
            laboratory.Quantity = Convert.ToInt32(txtAmount.Text);
        }

        if (!String.IsNullOrEmpty(txtUnit.Text))
            laboratory.Unit = txtUnit.Text;

        if (!String.IsNullOrEmpty(txtNote.Text))
            laboratory.Comment = txtNote.Text;

        laboratory.SchoolId = new SchoolInformation().getId();
        laboratory.SemesterId = MyDate.getCurrentSemesterId();
        onlineSchool.Laboratories.Add(laboratory);
        onlineSchool.SaveChanges();
        PlaceHolderSuccess.Visible = true;

    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }
}