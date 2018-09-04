using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form18 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SchoolInformation info = new SchoolInformation();
        OnlineSchoolEntities km = new OnlineSchoolEntities();

        if (Request.QueryString["id"] != null)
        {
            int idd = int.Parse(Request.QueryString["id"]);
            var schoolId = info.getId();
            ltrSchoolName.Text = info.getName();
            Employee emp = new Employee();
       
            #region 
       
            var late = (from k in km.Latenesses where k.Id == idd select k).FirstOrDefault();
          
              emp = (from k in km.Employees where k.IdentityNumber == late.EmployeeId select k).FirstOrDefault();


                if (late.Type == (ConstantManager.getConstantId("تأخر صباحي")))
                {
                    PlaceHolderLateBegin.Visible = true;

                    TimeSpan amount =(TimeSpan) late.Amount;
                    TimeSpan timestartwork = (TimeSpan)(from k in km.Schools where k.Id == schoolId select k.TimeStartWork).FirstOrDefault();
                    TimeSpan timearrive=amount + timestartwork;

                    ltrTimeArrive.Text = timearrive.ToString();
                }


                if (late.Type == (ConstantManager.getConstantId("انصراف مبكر")))
                {
                    PlaceHolderLateEnd.Visible = true;

                    TimeSpan amount = (TimeSpan)late.Amount;
                    TimeSpan timeEnd = (TimeSpan)(from k in km.Schools where k.Id == schoolId select k.TimeEndWork).FirstOrDefault();
                    TimeSpan timeleave = timeEnd- amount;

                    ltrTimeLeave.Text = timeleave.ToString();
                }

            if (late.Type == (ConstantManager.getConstantId("خروج دون استئذان")))
            {
                PlaceHolderPermission.Visible = true;

                ltrTimeFrom.Text = late.TimeFrom.ToString();
                ltrTimeTo.Text = late.Timeto.ToString();
            }

            ltrDay.Text = MyDate.getDay((DateTime)late.Date);
                ltrDate.Text = MyDate.getDate(late.Date.ToString());
      
            #endregion

            ltrIdentityNumber.Text = emp.IdentityNumber;
            ltrName.Text = emp.Name;
            ltrTeacherName.Text = emp.Name;
            ltrTeacherName2.Text = emp.Name;

            ltrSpecialization.Text = emp.Specification;
            ltrGrade.Text = emp.Level;
            ltrJobNo.Text = emp.JobNumber;
            ltrCurrentWork.Text = (from k in km.Jobs where k.Id == emp.JobId select k.Name).FirstOrDefault();
            ltrCommanderName.Text = info.getSchoolManager();
            ltrSchoolCommander.Text= info.getSchoolManager();
            ltrSchoolCommander2.Text= info.getSchoolManager();
            ltrCommanderDate.Text = MyDate.getDate();
        }
    }
}