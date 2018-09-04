using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_AbsentAlert : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "AbsentAlert";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null || Request.QueryString["view"] != null)
            {
                Calendar1.DataBind();
                Calendar2.DataBind();
                int idd = 0;
                if(Request.QueryString["id"] != null)
                 idd = int.Parse(Request.QueryString["id"]);
                else
                    idd = int.Parse(Request.QueryString["view"]);

                AbsenceAlert absence = (from k in km.AbsenceAlerts where k.Id == idd select k).FirstOrDefault();

                var emp = (from k in km.Employees where k.IdentityNumber == absence.EmployeeId select k).FirstOrDefault();
                lblEmpName.Text = emp.Name;
                lblIdentity.Text = emp.IdentityNumber;
                lblfrom.Text = MyDate.getDate(absence.DateFrom + "");
                lblto.Text = MyDate.getDate(absence.DateTo + "");
                lblCount.Text = absence.count + "";


                if ( Request.QueryString["view"] != null)
                {
                    btnAdd.Visible = false;
                    Calendar1.Visible = false;
                    Calendar2.Visible = false;

                    txtDateReplay.Text = MyDate.getDate(absence.DecisionDate+"");
                    txtDateReplayEmp.Text = MyDate.getDate(absence.ReplyDate+"");
                    txtReson.Text = absence.Reason;

                    txtDateReplay.Enabled = false;
                    txtDateReplayEmp.Enabled = false;
                    txtReson.Enabled = false;

                    lstDecition.SelectedValue = absence.Decision;
                    lstDecition.Enabled = false;
            }
            }
      }
    }
    public void clearText()
    {
        txtDateReplay.Text = "";
        txtDateReplayEmp.Text = "";
        txtReson.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var idd = int.Parse(Request.QueryString["id"]);
        AbsenceAlert alert = (from k in km.AbsenceAlerts where k.Id == idd select k).FirstOrDefault();

        alert.Reason = txtReson.Text;
        if (Calendar1.CultureName == "ar-SA")
        {
            alert.ReplyDate = MyDate.convertHijriToGregorian(txtDateReplayEmp.Text);
            alert.DecisionDate = MyDate.convertHijriToGregorian(txtDateReplay.Text);
        }
        else
        {
            alert.ReplyDate = DateTime.ParseExact(txtDateReplayEmp.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
            alert.DecisionDate = DateTime.ParseExact(txtDateReplay.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        var decition = lstDecition.SelectedValue;
        alert.Decision = decition;
        var year = DateTime.Now.Year;
        int vacationCount = (from k in km.Schools where k.Id == alert.SchoolId select k.VacationNumber).FirstOrDefault();

        if (decition == "اضطرارية")
        {
            EmployeesVacation empvacation = (from k in km.EmployeesVacations where k.Year == year && k.EmployeeId == alert.EmployeeId select k).FirstOrDefault();

            if (empvacation == null)
            {
                empvacation = new EmployeesVacation();
                empvacation.EmployeeId = alert.EmployeeId;
                empvacation.VacationNumber = vacationCount - 1;
                empvacation.Year = year;
                km.EmployeesVacations.Add(empvacation);
            }
            else
              if (empvacation.VacationNumber == 0)
            {
                alert.Decision = "حسم";
            }
            else
            {
                empvacation.VacationNumber = (empvacation.VacationNumber) - 1;
            }
        }else
        if (decition == "حسم")
        {
        }
        else
          if (decition == "مرضية")
        {
        }
        clearText();
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);
    }
}