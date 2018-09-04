using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_OutstandingStudend : MyPermisionPage
{
    OnlineSchoolEntities Km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "OutstandingStudend";
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

        OutstandingStudent outstanding = new OutstandingStudent();

        if (!String.IsNullOrEmpty(txtfield.Text))
            outstanding.FieldExcellence = txtfield.Text;

        if (!String.IsNullOrEmpty(txtNote.Text))
            outstanding.Note = txtNote.Text;

        if (!String.IsNullOrEmpty(txtClass.Text))
            outstanding.Class = txtClass.Text;

        outstanding.StudentId = ddlStuName.SelectedValue;


        if (RBLPrice.SelectedItem != null)
        {

            outstanding.Price = Convert.ToBoolean(RBLPrice.SelectedValue);
        }

        int SchoolID = SchoolInfo.getId();
        outstanding.SchoolId = SchoolID;

        outstanding.SemesterId = MyDate.getCurrentSemesterId();

        Km.OutstandingStudents.Add(outstanding);
        Km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied(' !! تمت الاضافة بنجاح'); </script>", false);

    }

    public void FillListStudent()
    {
        if (!IsPostBack)
        {
            var SId = SchoolInfo.getId();

            var studentt = (from stu in Km.Students
                            where stu.SchoolId == SId
                            select stu).ToList();
            ddlStuName.DataValueField = "IdentityNumber";
            ddlStuName.DataTextField = "Name";
            ddlStuName.DataSource = studentt;
            ddlStuName.DataBind();
        }
    }
}