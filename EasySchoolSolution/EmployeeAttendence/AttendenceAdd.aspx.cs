using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeAttendence_AttendenceAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    List<Absence> lstAbs = new List<Absence>();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "AttendenceAdd";
        base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbldate.Text = MyDate.getHijriDate();
            lblDay.Text = MyDate.getDay();
            ListView1.DataBind();
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (IsValid) { 
        SchoolInformation info = new SchoolInformation();
        MyDate mydate = new MyDate();

        foreach (ListViewItem item in ListView1.Items)
        {
            Button btnActive = (Button)item.FindControl("btnActive");
            if (btnActive.Text=="غياب")
            {
                Absence abs = new Absence();
                abs.SemesterId = MyDate.getCurrentSemesterId();
                abs.SchoolId = info.getId();
                var empId=((HiddenField)item.FindControl("HiddenField1")).Value.ToString();
                abs.EmployeeId = empId;
                if (Calendar1.CultureName == "ar-SA")
                    abs.Date = MyDate.convertHijriToGregorian(datepicker.Text);
                else
                    abs.Date = DateTime.ParseExact(datepicker.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));

                abs.Type = int.Parse(((DropDownList)item.FindControl("lstResonLate")).SelectedValue);

                var today = DateTime.Now.DayOfWeek;

                var schoolid = info.getId();

                DateTime yesterday = DateTime.Now.AddDays(-1).Date;
                if (today == DayOfWeek.Sunday)
                {
                    yesterday = DateTime.Now.AddDays(-3).Date;
                }
              
                var absentYesterday = ((from k in km.Absences where k.EmployeeId ==empId && k.Date == yesterday select k).FirstOrDefault());
                if (absentYesterday != null)
                {
                    AbsenceAlert alert = (from k in km.AbsenceAlerts where k.Id== absentYesterday.AlertId select k).FirstOrDefault();
                    alert.DateTo = DateTime.Now;
                    abs.AlertId = alert.Id;
                    alert.count ++;
                    if (today == DayOfWeek.Sunday)
                    {
                        alert.countHoliday = alert.countHoliday + 2;
                    } 
                }
                else
                {
                    AbsenceAlert alert = new AbsenceAlert();
                    alert.SemesterId = MyDate.getCurrentSemesterId();
                    alert.SchoolId = info.getId();
                    alert.EmployeeId = empId;
                    alert.DateFrom = DateTime.Now;
                    alert.DateTo = DateTime.Now;
                    alert.count = 1;
                    alert.countHoliday = 0;
                    km.AbsenceAlerts.Add(alert);
                    km.SaveChanges();

                    abs.AlertId = alert.Id;
                }

                lstAbs.Add(abs);
                km.Absences.Add(abs);
                km.SaveChanges();
            }
            else if(btnActive.Text == "حضور")
            {
                Attendence att = new Attendence();
                att.Date = DateTime.Now;
                    var schoolId=info.getId();
                att.SchoolId = schoolId;
                att.SemesterId = MyDate.getCurrentSemesterId();
                att.EmployeeId = ((HiddenField)item.FindControl("HiddenField1")).Value;
                TextBox txtArrive = (TextBox)item.FindControl("txtarrivingTime");
                if (!String.IsNullOrEmpty(txtArrive.Text))
                att.ArrivingTime = Convert.ToDateTime(txtArrive.Text).TimeOfDay;
                TextBox txtDeparture = (TextBox)item.FindControl("txtdeptime");
                if (!String.IsNullOrEmpty(txtDeparture.Text))
                {
                    TimeSpan departure = Convert.ToDateTime(txtDeparture.Text).TimeOfDay;
                    var timeWorkEnd= (from k in km.Schools where k.Id == schoolId select k.TimeEndWork).FirstOrDefault();
                    var amount = timeWorkEnd - departure;
                    if (amount.TotalSeconds > 0)
                    {
                        Lateness late = new Lateness();
                        late.Amount = amount;
                        late.TotalSeconds = amount.TotalSeconds;
                        late.IsPrinted = false;
                        late.Type = ConstantManager.getConstantId("انصراف مبكر");
                        late.SchoolId = schoolId;
                        late.SemesterId = MyDate.getCurrentSemesterId();
                        late.Date = DateTime.Now.Date;
                        late.EmployeeId= ((HiddenField)item.FindControl("HiddenField1")).Value;
                        km.Latenesses.Add(late);
                    }
                    att.DepartureTime = departure;
                }

                km.Attendences.Add(att);
                km.SaveChanges();
            }
            else if(btnActive.Text == "تأخر")
            {
                Lateness late = new Lateness();

                if (!String.IsNullOrEmpty(((TextBox)item.FindControl("TimeLate")).Text))
                {
                    var schoolId = info.getId();

                    TimeSpan timearrive = Convert.ToDateTime(((TextBox)item.FindControl("TimeLate")).Text).TimeOfDay;
                    TimeSpan timestartwork = (TimeSpan)(from k in km.Schools where k.Id == schoolId select k.TimeStartWork).FirstOrDefault();
                    TimeSpan amount = timearrive - timestartwork;
                    if (amount.TotalSeconds > 0)
                    {
                        late.TotalSeconds = amount.TotalSeconds;
                        late.Type = ConstantManager.getConstantId("تأخر صباحي");
                        late.Amount = amount;
                        late.Date = DateTime.Now;
                        late.SchoolId = info.getId();
                        late.SemesterId = MyDate.getCurrentSemesterId();
                        var empId = ((HiddenField)item.FindControl("HiddenField1")).Value;
                        late.EmployeeId = empId;
                        km.Latenesses.Add(late);
                        var year = DateTime.Now.Year;

                        var lateSum = (from k in km.Latenesses
                                       where k.EmployeeId == empId && k.Date.Value.Year == year
                                       select k.TotalSeconds).Sum();

                        if (lateSum != null)
                        {

                        var total = lateSum + late.TotalSeconds;

                        var currentLate =(int) lateSum / 3600;
                        var totalLate = (int)total / 3600;

                        if (totalLate >= 7 && totalLate > currentLate)
                        {
                            //اضافة حسم
                            LatenessDecision alertdecition = new LatenessDecision();
                            alertdecition.SchoolId = info.getId();
                            alertdecition.SemesterId = MyDate.getCurrentSemesterId();
                            alertdecition.Date = DateTime.Now.Date;
                            alertdecition.Days = 1;
                            alertdecition.EmployeeId = empId;
                            alertdecition.Hours = totalLate;
                            km.LatenessDecisions.Add(alertdecition);
                        }
                        else
                        if (totalLate >= 3 && totalLate> currentLate)
                        {
                            //اضافة تنبيه
                            LatenessDecision alertdecition = new LatenessDecision();
                            alertdecition.SchoolId = info.getId();
                            alertdecition.SemesterId = MyDate.getCurrentSemesterId();
                            alertdecition.Date = DateTime.Now.Date;
                            alertdecition.Days=0;
                            alertdecition.EmployeeId = empId;
                            alertdecition.Hours = totalLate;
                            km.LatenessDecisions.Add(alertdecition);

                        }
                    }
                        }
                    else
                    {
                        Attendence att = new Attendence();
                        att.Date = DateTime.Now;
                        att.SchoolId = info.getId();
                        att.SemesterId = MyDate.getCurrentSemesterId();
                        att.EmployeeId = ((HiddenField)item.FindControl("HiddenField1")).Value;
                        att.ArrivingTime = timearrive;
                      
                        km.Attendences.Add(att);
                    }
                }
                km.SaveChanges();
            }
        }

       Response.Redirect("~/EmployeeAttendence/AttendenceReport.aspx");

    }
    }

    protected void ListView1_DataBinding(object sender, EventArgs e)
    {
        SchoolInformation info = new SchoolInformation();
        var schoolid = info.getId();
        var lstemployees = (from k in km.Employees where k.SchoolId == schoolid
                            orderby k.Name 
                            select new
                            {
                                k.IdentityNumber,
                                k.Name,
                                job=k.Job.Name
                            }).ToList();
        ListView1.DataSource = lstemployees;
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    { ListViewDataItem dataItem = (ListViewDataItem)e.Item;
       
        if (e.CommandName== "Active")
        {
           
            PlaceHolder Time = ((PlaceHolder)dataItem.FindControl("Time"));
            PlaceHolder Late = ((PlaceHolder)dataItem.FindControl("Late"));
            PlaceHolder Absent = ((PlaceHolder)dataItem.FindControl("Absent"));
            Button btnActive = ((Button)dataItem.FindControl("btnActive"));

            if (btnActive.Text == "حضور") {
                btnActive.Text = "تأخر";
                btnActive.CssClass = "btn btn-warning";
                Time.Visible = false;
                Absent.Visible = false;
                Late.Visible = true;
            }
            else if(btnActive.Text == "غياب")
            {
                btnActive.Text = "حضور";
                btnActive.CssClass = "btn btn-success";
                Time.Visible = true;
                Absent.Visible = false;
                Late.Visible = false;
               
            }
            else if (btnActive.Text == "تأخر")
            {
                btnActive.Text = "غياب";
                btnActive.CssClass = "btn btn-danger";
                Time.Visible = false;
                Absent.Visible = true;
                Late.Visible = false;
            }

        }
       

    }


    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            Literal a1 = (Literal)e.Item.FindControl("litJ1");
            Panel p1 = (Panel)e.Item.FindControl("datetimepicker3");
            Literal a2 = (Literal)e.Item.FindControl("litJ2");
            Panel p2 = (Panel)e.Item.FindControl("datetimepicker4");
            a1.Text = @"<script type=""text/javascript"">$(function () {$('#" + p1.ClientID + "').datetimepicker({format: 'LT',locale: 'en'});});</script>";
            a2.Text = @"<script type=""text/javascript"">$(function () {$('#" + p2.ClientID + "').datetimepicker({format: 'LT',locale: 'en'});});</script>";
        }
    }
    protected void btnTime_Click(object sender, EventArgs e)
    {
       
            foreach (ListViewItem item in ListView1.Items)
            {
                Button Active = (Button)item.FindControl("btnActive");
            PlaceHolder Time = ((PlaceHolder)item.FindControl("Time"));
            PlaceHolder Late = ((PlaceHolder)item.FindControl("Late"));
            PlaceHolder Absent = ((PlaceHolder)item.FindControl("Absent"));
            Active.Text = "حضور";
               Active.CssClass = "btn btn-success";
                Time.Visible = true;
                Absent.Visible = false;
                Late.Visible = false;
            }

        
    }

    protected void btnAbsent_Click(object sender, EventArgs e)
    {
        foreach (ListViewItem item in ListView1.Items)
        {
            Button Active = (Button)item.FindControl("btnActive");
            PlaceHolder Time = ((PlaceHolder)item.FindControl("Time"));
            PlaceHolder Late = ((PlaceHolder)item.FindControl("Late"));
            PlaceHolder Absent = ((PlaceHolder)item.FindControl("Absent"));
            Active.Text = "غياب";
            Active.CssClass = "btn btn-danger";
            Time.Visible = false;
            Absent.Visible = true;
            Late.Visible = false;
        }
    }

    protected void btnLate_Click(object sender, EventArgs e)
    {
       foreach (ListViewItem item in ListView1.Items)
       {
            Button Active = (Button)item.FindControl("btnActive");
            PlaceHolder Time = ((PlaceHolder)item.FindControl("Time"));
            PlaceHolder Late = ((PlaceHolder)item.FindControl("Late"));
            PlaceHolder Absent = ((PlaceHolder)item.FindControl("Absent"));
            Active.Text = "تأخر";
            Active.CssClass = "btn btn-warning";
            Time.Visible = false;
            Absent.Visible = false;
            Late.Visible = true;
        }
    }
}


