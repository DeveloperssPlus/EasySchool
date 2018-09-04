using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form19 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {

            SchoolInformation info = new SchoolInformation();
            OnlineSchoolEntities km = new OnlineSchoolEntities();

            if (Request.QueryString["id"] != null)
            {
                int idd = int.Parse(Request.QueryString["id"]);
                var schoolId = info.getId();
                ltrSchoolName.Text = info.getName();
                Employee emp = new Employee();

               
                var late = (from k in km.LatenessDecisions where k.Id == idd select k).FirstOrDefault();

                emp = (from k in km.Employees where k.IdentityNumber == late.EmployeeId select k).FirstOrDefault();

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

                ltrName.Text = emp.Name;
                ltrSpecialization.Text = emp.Specification;
                ltrGrade.Text = emp.Level;
                ltrJobNo.Text = emp.JobNumber;
                ltrCurrentWork.Text = (from k in km.Jobs where k.Id == emp.JobId select k.Name).FirstOrDefault();
                ltrCommanderName.Text = info.getSchoolManager();
                ltrNumberHours.Text = late.Hours + "";
                ltrNumberDays.Text = late.Days + "";

                ltrManagerr.Text =info.getSchoolManager();
                ltrDate.Text = MyDate.getDate();

                //#endregion

                //ltrIdentityNumber.Text = emp.IdentityNumber;
                //ltrTeacherName.Text = emp.Name;
                //ltrTeacherName2.Text = emp.Name;

                //ltrSchoolCommander.Text = info.getSchoolManager();
                //ltrSchoolCommander2.Text = info.getSchoolManager();
                //ltrCommanderDate.Text = MyDate.getDate();
            }
        } 
    }
}