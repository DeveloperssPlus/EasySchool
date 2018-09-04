using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_ExperimentsAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ExperimentsAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlNoTeacher.DataBind();

        }

    }
    protected void btnok_Click(object sender, EventArgs e)
    {
       // PlaceHolderSuccess.Visible = false;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
         Experience experience = new Experience();

        

        if (!String.IsNullOrEmpty(txtSemester.Text))
            experience.Class = txtSemester.Text;

        if (!String.IsNullOrEmpty(txtNameExperiment.Text))
            experience.Name = txtNameExperiment.Text;

        if (!String.IsNullOrEmpty(txtNameBook.Text))
            experience.BookName = txtNameBook.Text;

        if (!String.IsNullOrEmpty(txtNoPage.Text))
            experience.BookPage = txtNoPage.Text;

    
        int SchoolID = SchoolInfo.getId();
        experience.SchoolId = SchoolID;

        experience.Week = Convert.ToInt32(txtWeek.Text);

        experience.TeacherId = ddlNoTeacher.SelectedValue;

        experience.SemesterId = MyDate.getCurrentSemesterId();

        if (!String.IsNullOrEmpty(txtSubject.Text))
            experience.Subject = txtSubject.Text;

        if (!String.IsNullOrEmpty(txtExperienceTools.Text))
            experience.Tools = txtExperienceTools.Text;

        km.Experiences.Add(experience);
        km.SaveChanges();
        //PlaceHolderSuccess.Visible = true;
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت الاضافة بنجاح'); </script>", false);

    }


    protected void ddlNoTeacher_DataBinding(object sender, EventArgs e)
    {
        var schoolid = new SchoolInformation().getId();
        if (!IsPostBack)
        {
            var jobid = (from k in km.Jobs where k.Name == "معلم" select k.Id).FirstOrDefault();

            var teacher = (from teach in km.Employees where
                           teach.SchoolId == schoolid && teach.JobId == jobid
                           select teach).ToList();

            ddlNoTeacher.DataValueField = "IdentityNumber";
            ddlNoTeacher.DataTextField = "Name";
            ddlNoTeacher.DataSource = teacher;
        }
    }
}