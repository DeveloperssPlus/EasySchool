using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_SupportStudent : MyPermisionPage
{
    OnlineSchoolEntities Km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "SupportStudent";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {

        SupportStudent support = new SupportStudent();

        if (!String.IsNullOrEmpty(txtNote.Text))
            support.Note = txtNote.Text;

        if (txtPrice.Text != null)
        {
            support.Price = Convert.ToInt32(txtPrice.Text);
        }

        if (txtNoBill.Text != null)
        {
            support.BillNo = Convert.ToInt32(txtNoBill.Text);
        }

        if (!String.IsNullOrEmpty(txtContent.Text))
            support.Contents = txtContent.Text;

        int SchoolID = SchoolInfo.getId();
        support.SchoolId = SchoolID;

        support.SemesterId = MyDate.getCurrentSemesterId();

        Km.SupportStudents.Add(support);
        Km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied(' !! تمت الاضافة بنجاح'); </script>", false);

    }
}