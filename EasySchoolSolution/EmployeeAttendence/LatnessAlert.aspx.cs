using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_LatnessAlert : MyPermisionPage
{

    SchoolInformation info = new SchoolInformation();
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "LatnessAlert";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.DataBind();
            Calendar2.DataBind();

            if (Request.QueryString["id"] != null)
            {
                int idd = int.Parse(Request.QueryString["id"]);
                string type = Request.QueryString["type"];
                var schoolId = info.getId();

                Employee emp = new Employee();

                #region 
             
                    var late = (from k in km.Latenesses where k.Id == idd select k).FirstOrDefault();

                    emp = (from k in km.Employees where k.IdentityNumber == late.EmployeeId select k).FirstOrDefault();


                    if (late.Type == (ConstantManager.getConstantId("تأخر صباحي")))
                    {

                        TimeSpan amount = (TimeSpan)late.Amount;
                        TimeSpan timestartwork = (TimeSpan)(from k in km.Schools where k.Id == schoolId select k.TimeStartWork).FirstOrDefault();
                        TimeSpan timearrive = amount + timestartwork;

                        lblReson.Text = "نأخر من بداية  العمل ، والحضور الساعة " + timearrive.ToString();
                    }

                    else
                    if (late.Type == (ConstantManager.getConstantId("انصراف مبكر")))
                    {

                        TimeSpan amount = (TimeSpan)late.Amount;
                        TimeSpan timeEnd = (TimeSpan)(from k in km.Schools where k.Id == schoolId select k.TimeEndWork).FirstOrDefault();
                        TimeSpan timeleave = timeEnd - amount;

                        lblReson.Text = " انصراف مبكر قبل نهاية العمل من الساعة  " + timeleave.ToString();
                    }
                    else
                           if (late.Type == (ConstantManager.getConstantId("خروج دون استئذان")))
                {

                    TimeSpan timeFrom = (TimeSpan)late.TimeFrom;
                    TimeSpan timeTo = (TimeSpan)late.Timeto;
               //     TimeSpan timeleave = timeEnd - amount;

                    lblReson.Text = " عدم تواجد أثناء العمل من الساعة ("+timeFrom+"إلى الساعة ( "+timeTo+")  " ;
                }

                lblDay.Text = MyDate.getDay((DateTime)late.Date);
                    lblDate.Text = MyDate.getDate(late.Date.ToString());
               
                #endregion

                lblEmpName.Text = emp.Name;
                lblIdentity.Text = emp.IdentityNumber;

            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int idd = int.Parse(Request.QueryString["id"]);

        LatenessAlert alert = new LatenessAlert();
        alert.LatenessId = idd;
        alert.Reason = txtExecuse.Text;
        alert.isAccepted =Convert.ToBoolean(RadioButtonList1.SelectedValue);

        if (Calendar1.CultureName == "ar-SA")
        {
           alert.ReplyDate= MyDate.convertHijriToGregorian(txtDateReplayEmp.Text);
           alert.AcceptDate= MyDate.convertHijriToGregorian(txtAcceptDate.Text);
        }
        else
        {
            alert.ReplyDate = DateTime.ParseExact(txtDateReplayEmp.Text,"yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
           alert.AcceptDate = DateTime.ParseExact(txtAcceptDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        km.LatenessAlerts.Add(alert);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);

    }

    protected void btnok_Click(object sender, EventArgs e)
    {
        
    }
}