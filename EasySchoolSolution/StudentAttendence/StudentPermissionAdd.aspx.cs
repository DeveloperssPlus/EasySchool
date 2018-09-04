using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class StudentAttendence_StudentPermissionAdd : MyPermisionPage
{
    OnlineSchoolEntities ose = new OnlineSchoolEntities();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentPermissionAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        var schoolid = new SchoolInformation().getId();

        var Emp = (from p in ose.Students
                   where p.SchoolId == schoolid
                   orderby p.Name
                   select p).ToList();
        ddlStudentName.DataValueField = "IdentityNumber";
        ddlStudentName.DataTextField = "Name";
        ddlStudentName.DataSource = Emp;
        ddlStudentName.DataBind();

            Calendar1.DataBind();

        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SchoolInformation info = new SchoolInformation();
     //   MyDate mydate = new MyDate();
     //   DateTime startTime, endTime;
     //   startTime = Convert.ToDateTime(txtTime2.Text);
    //    endTime = Convert.ToDateTime(txtTime1.Text);

         //   lblerror.Text = "";
            string dateSchool1 = datepicker.Text + " " + txtTime1.Text;
          //  string dateSchool2 = datepicker.Text + " " + txtTime2.Text;
            StudentsPermission per = new StudentsPermission();
        if (Calendar1.CultureName == "ar-SA")
            per.Date = MyDate.convertHijriToGregorian(datepicker.Text);
        else
            per.Date = DateTime.ParseExact(datepicker.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));


            per.Reason = txtReason.Text;
            per.TimeFrom = Convert.ToDateTime(txtTime1.Text).TimeOfDay;
        per.ParentName = txtParent.Text;
        //    per.TimeTo = Convert.ToDateTime(txtTime2.Text).TimeOfDay;
            per.SemesterId = MyDate.getCurrentSemesterId();
            per.SchoolId = info.getId();
            per.StudentId = ddlStudentName.SelectedValue;
            per.Comments = txtNote.Text;
        per.Class = txtClass.Text;
            ose.StudentsPermissions.Add(per);
            ose.SaveChanges();

        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت اضافة الاستئذان بنجاح'); </script>", false);

    }
}