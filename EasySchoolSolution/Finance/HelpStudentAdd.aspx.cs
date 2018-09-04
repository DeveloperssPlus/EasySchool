using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_HelpStudentAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "HelpStudentAdd";
        base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillListStudent();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        HelpStudent help = new HelpStudent();
        help.StudentId = ddlStuName.SelectedValue;

        if (!String.IsNullOrEmpty(txtClass.Text))
            help.Class = txtClass.Text;


        int SchoolID = SchoolInfo.getId();
        help.SchoolId = SchoolID;

        help.SemesterId = MyDate.getCurrentSemesterId();


        if (!String.IsNullOrEmpty(txtNote.Text))
            help.Note = txtNote.Text;

        if (RBLPrice.SelectedItem != null)
        {

            help.Price =Convert.ToBoolean(RBLPrice.SelectedValue);
        }

        if (txtRest.Text != null)
        {
            help.Rest = Convert.ToInt32(txtRest.Text);
        }

        km.HelpStudents.Add(help);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied(' !! تمت الاضافة بنجاح'); </script>", false);
    }

    public void FillListStudent()
    {
        if (!IsPostBack)
        {
            var SId = SchoolInfo.getId();

            var studentt = (from stu in km.Students
                            where stu.SchoolId == SId
                            select stu).ToList();
            ddlStuName.DataValueField = "IdentityNumber";
            ddlStuName.DataTextField = "Name";
            ddlStuName.DataSource = studentt;
            ddlStuName.DataBind();
        }
    }
}