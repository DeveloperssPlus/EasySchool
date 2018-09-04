using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form20 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            var idd =int.Parse (Request.QueryString["id"]);
            OnlineSchoolEntities km = new OnlineSchoolEntities();
            SchoolInformation info = new SchoolInformation();

            var absentalert = (from k in km.AbsenceAlerts where k.Id == idd select k).FirstOrDefault();
            ltrSchoolName.Text = info.getName();

            var emp = (from k in km.Employees where k.IdentityNumber == absentalert.EmployeeId select k).FirstOrDefault();
            ltrName.Text = emp.Name;
            ltrTeacherName.Text = emp.Name;
            ltrTeacherName2.Text = emp.Name;

            ltrCivilRegistry10.Text = emp.IdentityNumber.ElementAt(0).ToString();
            ltrCivilRegistry9.Text = emp.IdentityNumber.ElementAt(1).ToString();
            ltrCivilRegistry8.Text = emp.IdentityNumber.ElementAt(2).ToString();
            ltrCivilRegistry7.Text = emp.IdentityNumber.ElementAt(3).ToString();
            ltrCivilRegistry6.Text = emp.IdentityNumber.ElementAt(4).ToString();
            ltrCivilRegistry5.Text = emp.IdentityNumber.ElementAt(5).ToString();
            ltrCivilRegistry4.Text = emp.IdentityNumber.ElementAt(6).ToString();
            ltrCivilRegistry3.Text = emp.IdentityNumber.ElementAt(7).ToString();
            ltrCivilRegistry2.Text = emp.IdentityNumber.ElementAt(8).ToString();
            ltrCivilRegistry1.Text = emp.IdentityNumber.ElementAt(9).ToString();

            ltrSpecialization.Text = emp.Specification;
            ltrJobNo.Text = emp.JobNumber;
            ltrGrade.Text = emp.Level;
            ltrCommander.Text = EmployeeManager.getDirectManager(emp.IdentityNumber);
            ltrCommanderName.Text = info.getSchoolManager();
            ltrCommanderDate.Text = MyDate.getDate();

            ltrCurrentWork.Text =(from k in km.Jobs where k.Id == emp.JobId select k.Name).FirstOrDefault();

            ltrClass.Text = emp.Degree;
            var DateFrom =(DateTime) absentalert.DateFrom;
            var DateTo = (DateTime)absentalert.DateTo;

            ltrDayFrom.Text ="  "+ MyDate.getDay(DateFrom) +"  ";
            ltrDayTo.Text = "  " + MyDate.getDay(DateTo)+"  ";

            ltrDateTo.Text = "  " + DateTo.Date.ToString("yyyy/MM/dd") +"  ";
            ltrDateFrom.Text = "  " + DateFrom.Date.ToString("yyyy/MM/dd") +"  ";

            bool count = Convert.ToBoolean(Request.QueryString["count"]);
            if(count)
            ltrNoAbsenceDay.Text = absentalert.count+absentalert.countHoliday+"";
            else
                ltrNoAbsenceDay.Text = absentalert.count + "";

        }
    }
}