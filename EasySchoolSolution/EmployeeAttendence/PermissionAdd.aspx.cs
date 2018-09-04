using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class EmployeeAttendence_PermissionAdd : MyPermisionPage
{
    OnlineSchoolEntities ose = new OnlineSchoolEntities();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "PermissionAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        FillDrop();
            Calendar1.DataBind();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SchoolInformation info = new SchoolInformation();

        DateTime startTime, endTime;
        startTime = Convert.ToDateTime(txtTime2.Text);
        endTime = Convert.ToDateTime(txtTime1.Text);

        PlaceHolderSuccess.Visible = false;
        if (startTime > endTime/*||datepicker.Text.Length !=null*/)
        {
            lblerror.Text = "";
          //  string dateSchool1 = datepicker.Text;
      
            Permission per = new Permission();
        //    per.Date = Convert.ToDateTime(dateSchool1);

            if (Calendar1.CultureName == "ar-SA")
                per.Date = MyDate.convertHijriToGregorian(datepicker.Text);
            else
                per.Date = DateTime.ParseExact(datepicker.Text,"yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));

            per.Reason = txtReason.Text;
            per.TimeFrom = Convert.ToDateTime(txtTime1.Text).TimeOfDay;
            per.TimeTo = Convert.ToDateTime(txtTime2.Text).TimeOfDay;
            per.SemesterId = MyDate.getCurrentSemesterId();
            per.SchoolId = info.getId();
            per.EmployeeId = ddlNameEMp.SelectedValue;
            per.Comments = txtNote.Text;
            ose.Permissions.Add(per);
            ose.SaveChanges();
            PlaceHolderSuccess.Visible = true;
        }
        else
        {
            lblerror.Text = "ادخل الوقت الصحيح";
        }
    }

    public void FillDrop()
    {
        if (!IsPostBack)
        {
            SchoolInformation info =new SchoolInformation();
            var schoolId = info.getId();
            var Emp = (from p in ose.Employees
                       where p.SchoolId== schoolId
                       orderby p.Name 
                       select p).ToList();
            ddlNameEMp.DataValueField = "IdentityNumber";
            ddlNameEMp.DataTextField = "Name";
            ddlNameEMp.DataSource =Emp;
            ddlNameEMp.DataBind();
        }
    }
}