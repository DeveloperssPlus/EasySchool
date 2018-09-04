using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_ShiftAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ShiftAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            FillDroup();
            Calendar.DataBind();
        }
    }
   
    public void FillDroup()
    {
        var Teacher = (from c in km.Employees where  c.JobId == 5 orderby c.Name select c).ToList();
      
            
        ddlTeacherAlternate.DataSource = Teacher;
        ddlTeacherAlternate.DataValueField = "IdentityNumber";
        ddlTeacherAlternate.DataTextField = "Name";
        ddlTeacherAlternate.DataBind();

        ddlTeacherAlternate2.DataSource = Teacher;
        ddlTeacherAlternate2.DataValueField = "IdentityNumber";
        ddlTeacherAlternate2.DataTextField = "Name";
        ddlTeacherAlternate2.DataBind();

        ddlTeacherAlternate3.DataSource = Teacher;
        ddlTeacherAlternate3.DataValueField = "IdentityNumber";
        ddlTeacherAlternate3.DataTextField = "Name";
        ddlTeacherAlternate3.DataBind();

        ddlTeacherSupervisor1.DataSource = Teacher;
        ddlTeacherSupervisor1.DataValueField = "IdentityNumber";
        ddlTeacherSupervisor1.DataTextField = "Name";
        ddlTeacherSupervisor1.DataBind();

        ddlTeacherSupervisor2.DataSource = Teacher;
        ddlTeacherSupervisor2.DataValueField = "IdentityNumber";
        ddlTeacherSupervisor2.DataTextField = "Name";
        ddlTeacherSupervisor2.DataBind();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        DailyShift Shift = new DailyShift();
        DailyShift Shift1 = new DailyShift();
        DailyShift Shift2 = new DailyShift();
        DailyShift Shift3 = new DailyShift();
        DailyShift Shift4 = new DailyShift();
        if (Calendar.CultureName == "ar-SA")
        {
            Shift.Date = MyDate.convertHijriToGregorian(txtdate.Text);
            Shift1.Date = MyDate.convertHijriToGregorian(txtdate.Text);
            Shift2.Date = MyDate.convertHijriToGregorian(txtdate.Text);
            Shift3.Date = MyDate.convertHijriToGregorian(txtdate.Text);
            Shift4.Date = MyDate.convertHijriToGregorian(txtdate.Text);
           
        }
        else
        {
            Shift.Date = Convert.ToDateTime(txtdate.Text);
            Shift1.Date = Convert.ToDateTime(txtdate.Text);
            Shift2.Date = Convert.ToDateTime(txtdate.Text);
            Shift3.Date = Convert.ToDateTime(txtdate.Text);
            Shift4.Date = Convert.ToDateTime(txtdate.Text);
        }
        if (!String.IsNullOrEmpty(txtNote.Text))
        {
            Shift.Note = txtNote.Text;
            Shift1.Note = txtNote.Text;
            Shift2.Note = txtNote.Text;
            Shift3.Note = txtNote.Text;
            Shift4.Note = txtNote.Text;
        }
        Shift.TeacherID = ddlTeacherAlternate.SelectedValue;
        Shift1.TeacherID = ddlTeacherAlternate2.SelectedValue;
        Shift2.TeacherID = ddlTeacherAlternate3.SelectedValue;
        Shift3.TeacherID = ddlTeacherSupervisor1.SelectedValue;
        Shift4.TeacherID = ddlTeacherSupervisor2.SelectedValue;

        Shift.IsAlternate = true;
        Shift1.IsAlternate = true;
        Shift2.IsAlternate = true;
        Shift3.IsSupervisor = true;
        Shift4.IsSupervisor = true;

        Shift.SchoolId = info.getId();
        Shift.SemesterId = MyDate.getCurrentSemesterId();
        Shift1.SchoolId = info.getId();
        Shift1.SemesterId = MyDate.getCurrentSemesterId();
        Shift2.SchoolId = info.getId();
        Shift2.SemesterId = MyDate.getCurrentSemesterId();
        Shift3.SchoolId = info.getId();
        Shift3.SemesterId = MyDate.getCurrentSemesterId();
        Shift4.SchoolId = info.getId();
        Shift4.SemesterId = MyDate.getCurrentSemesterId();
    
        km.DailyShifts.Add(Shift);
        km.DailyShifts.Add(Shift1);
        km.DailyShifts.Add(Shift2);
        km.DailyShifts.Add(Shift3);
        km.DailyShifts.Add(Shift4);
        km.SaveChanges();

            ClientScript.RegisterStartupScript(this.GetType(), "success", "<script> addSuccess(' تم الإضافة بنجاح'); </script>", false);
    }
}