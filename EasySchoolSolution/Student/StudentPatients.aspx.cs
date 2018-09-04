using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_StudentPatients : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentPatients";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillListStudent();
        }
       
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        StudentPatient student = new StudentPatient();

      

        if (!String.IsNullOrEmpty(txtClass.Text))
            student.Class = txtClass.Text;

       
        int SchoolID = SchoolInfo.getId();
        student.SchoolId = SchoolID;

        student.SemesterId = MyDate.getCurrentSemesterId();

       
            student.HomeTel = txtHomeTel.Text;

        if (!String.IsNullOrEmpty(txtDescribe.Text))
            student.Description = txtDescribe.Text;

        if (!String.IsNullOrEmpty(txtAction.Text))
            student.Action = txtAction.Text;

        if (!String.IsNullOrEmpty(txtRecommendations.Text))
            student.Recommendations = txtRecommendations.Text;

        if (!String.IsNullOrEmpty(txtWorkTel.Text))
            student.WorkTel = txtWorkTel.Text;

        if (!String.IsNullOrEmpty(txtMobile.Text))
            student.Mobile = txtMobile.Text;

        student.StudentId = DDLStudName.SelectedValue;

        km.StudentPatients.Add(student);
        km.SaveChanges();
    

    }

    public void FillListStudent()
    {
        if (!IsPostBack)
        {
            var SId = SchoolInfo.getId();
          
            var studentt = (from stu in km.Students
                            where stu.SchoolId == SId
                            select stu).ToList();
            DDLStudName.DataValueField = "IdentityNumber";
            DDLStudName.DataTextField = "Name";
            DDLStudName.DataSource = studentt;
            DDLStudName.DataBind();
        }
    }

   
}