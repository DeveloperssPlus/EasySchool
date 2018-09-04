using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_LatnessAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "LatnessAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.DataBind();
            ddlType.DataBind();
         //   datepicker.Text = DateTime.Now.ToShortDateString();
            FillEmployeeName();
        }

      
    }
    public  void FillEmployeeName()
    {
        SchoolInformation Info = new SchoolInformation();
        var SId = Info.getId();
        var EmpName = (from s in km.Employees where s.SchoolId==SId orderby s.Name  select s).ToList();
        ddlNameEMp.DataSource = EmpName;
        ddlNameEMp.DataTextField = "Name";
        ddlNameEMp.DataValueField = "IdentityNumber";
        ddlNameEMp.DataBind();
    }
    public void clearText()
    {
        txtamount.Text = "";
        datepicker.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SchoolInformation Info = new SchoolInformation();
        var SID = Info.getId();
        var SemId= MyDate.getCurrentSemesterId();
        Lateness Late = new Lateness();
            var empId=ddlNameEMp.SelectedValue;
        Late.EmployeeId = empId;
        if(Calendar1.CultureName=="ar-SA")
        Late.Date =MyDate.convertHijriToGregorian(datepicker.Text);
        else
            Late.Date = DateTime.ParseExact(datepicker.Text,"yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));

        Late.SchoolId = SID;
        Late.SemesterId = SemId;
            var type=int.Parse(ddlType.SelectedValue);
        Late.Type = type;
        if(type==ConstantManager.getConstantId("خروج دون استئذان"))
        {
            Late.TimeFrom = Convert.ToDateTime(TextTimeFrom.Text).TimeOfDay;
            Late.Timeto = Convert.ToDateTime(TextTimeTo.Text).TimeOfDay;

            Late.Amount = Late.Timeto - Late.TimeFrom;
            Late.TotalSeconds = ((TimeSpan)Late.Amount).TotalSeconds;
        }
        else
        {

        Late.Amount =new TimeSpan(0, int.Parse(txtamount.Text),0);
        Late.TotalSeconds = (TimeSpan.Parse(Late.Amount.ToString())).TotalSeconds;
        }
        var year = DateTime.Now.Year;

        var lateSum = (from k in km.Latenesses
                       where k.EmployeeId == empId && k.Date.Value.Year == year
                       select k.TotalSeconds).Sum();

        if(lateSum != null)
        {

        var total = lateSum + Late.TotalSeconds;

        var currentLate = (int)lateSum / 3600;
        var totalLate = (int)total / 3600;

        if (totalLate > 7 && totalLate > currentLate)
        {
            //اضافة حسم
            LatenessDecision alertdecition = new LatenessDecision();
            alertdecition.SchoolId = Info.getId();
            alertdecition.SemesterId = MyDate.getCurrentSemesterId();
            alertdecition.Date = DateTime.Now.Date;
            // alertdecition.Days=
            alertdecition.EmployeeId = empId;
            alertdecition.Hours = totalLate;
            km.LatenessDecisions.Add(alertdecition);
        }
        else
        if (totalLate > 3 && totalLate > currentLate)
        {
            //اضافة تنبيه

           // LatenessAlert alert = new LatenessAlert();
            LatenessDecision alertdecition = new LatenessDecision();
            alertdecition.SchoolId = Info.getId();
            alertdecition.SemesterId = MyDate.getCurrentSemesterId();
            alertdecition.Date = DateTime.Now.Date;
            alertdecition.Days = 0;
            alertdecition.EmployeeId = empId;
            alertdecition.Hours = totalLate;
            km.LatenessDecisions.Add(alertdecition);

        }
        }
        clearText();
        km.Latenesses.Add(Late);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);
    }



    protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        var type = ddlType.SelectedItem.Text;

        if (type == "خروج دون استئذان")
        {
            PlaceHolderAmount.Visible = false;
            PlaceHolderTime.Visible = true;
        }
        else
        {
            PlaceHolderAmount.Visible = true;
            PlaceHolderTime.Visible = false;
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {

    }
}