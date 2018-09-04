using System;
using System.Collections.Generic;
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
    //    MyDate mydate = new MyDate();
        if (!IsPostBack)
        {
            var schoolid = new SchoolInformation().getId();
            var semesterid = MyDate.getCurrentSemesterId();

            lbldate.Text ="التاريخ: "+ MyDate.getHijriDate();
            lblDay.Text = "اليوم: "+MyDate.getDay();

            ddlClass.DataSource = (from k in km.SubjectsInSemesters where 
                                   k.SchoolId==schoolid && k.SemesterId==semesterid
                                   orderby k.ClassId
                                   select k.ClassId).ToList().Distinct();
            ddlClass.DataBind();

   
            ddlSubject.DataBind();
            SchoolInformation info = new SchoolInformation();
       //     var schoolid = info.getId();
            var lstStudents = (from k in km.Students
                               where k.SchoolId == schoolid
                               select new
                               {
                                   k.IdentityNumber,
                                   k.Name
                               }).ToList();
            ListView1.DataSource = lstStudents;
            ListView1.DataBind();



        }
       // VisiblePlaceHolder();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        SchoolInformation info = new SchoolInformation();
        MyDate mydate = new MyDate();

        foreach (ListViewItem item in ListView1.Items)
        {
            Button btnActive = (Button)item.FindControl("btnActive");
            if (btnActive.Text=="غياب")
            {
                StudentsAbsence abs = new StudentsAbsence();
                RadioButtonList radio = ((RadioButtonList)item.FindControl("radio"));
                abs.SemesterId = MyDate.getCurrentSemesterId();
                abs.SchoolId = info.getId();
                abs.StudentId = int.Parse(((HiddenField)item.FindControl("HiddenField1")).Value).ToString();
                abs.Date = DateTime.Now;
                abs.IsExcuse =Convert.ToBoolean( radio.SelectedValue) ;
                km.StudentsAbsences.Add(abs);
                km.SaveChanges();
            }
            else if(btnActive.Text == "حضور")
            {
                StudentsAttendence att = new StudentsAttendence();
                att.Date = DateTime.Now;
                att.SchoolId = info.getId();
                att.SemesterId = MyDate.getCurrentSemesterId();
                att.StudentId = ((HiddenField)item.FindControl("HiddenField1")).Value;
                //TextBox txtArrive = (TextBox)item.FindControl("txtarrivingTime");
                //if (!String.IsNullOrEmpty(txtArrive.Text))
                //att.ArrivingTime = Convert.ToDateTime(txtArrive.Text).TimeOfDay;
                //TextBox txtDeparture = (TextBox)item.FindControl("txtdeptime");
                //if (!String.IsNullOrEmpty(txtDeparture.Text))
                //    att.DepartureTime = Convert.ToDateTime(txtDeparture.Text).TimeOfDay;
                km.StudentsAttendences.Add(att);
                km.SaveChanges();
            }
            else if(btnActive.Text == "تأخر")
            {
                StudentsLateness late = new StudentsLateness();

                if (!String.IsNullOrEmpty(((TextBox)item.FindControl("TimeLate")).Text))
                {

                    late.TotalSeconds = Convert.ToDateTime(((TextBox)item.FindControl("TimeLate")).Text).TimeOfDay.TotalSeconds;
                    late.Amount = Convert.ToDateTime(((TextBox)item.FindControl("TimeLate")).Text).TimeOfDay;
                }

                late.Date = DateTime.Now;
                late.SchoolId = info.getId();
                late.SemesterId = MyDate.getCurrentSemesterId();
                late.StudentId = ((HiddenField)item.FindControl("HiddenField1")).Value;
                km.StudentsLatenesses.Add(late);
                km.SaveChanges();
            }
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('تم التسجيل بنجاح')", true);

        }

        Response.Redirect("~/Student/StudentAttendenceReport.aspx");

    }

    //protected void ListView1_DataBinding(object sender, EventArgs e)
    //{
       
    //}

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

    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        //if (e.Item.ItemType == ListViewItemType.DataItem)
        //{
        //    Literal a1 = (Literal)e.Item.FindControl("litJ1");
        //    Panel p1 = (Panel)e.Item.FindControl("datetimepicker3");
        //    Literal a2 = (Literal)e.Item.FindControl("litJ2");
        //    Panel p2 = (Panel)e.Item.FindControl("datetimepicker4");
        //    a1.Text = @"<script type=""text/javascript"">$(function () {$('#" + p1.ClientID + "').datetimepicker({format: 'LT',locale: 'en'});});</script>";
        //    a2.Text = @"<script type=""text/javascript"">$(function () {$('#" + p2.ClientID + "').datetimepicker({format: 'LT',locale: 'en'});});</script>";
        //}
    }

    protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlSubject.DataBind();
    }

    protected void ddlSubject_DataBinding(object sender, EventArgs e)
    {
        var schoolid = new SchoolInformation().getId();
        var semesterid = MyDate.getCurrentSemesterId();

        var classid = ddlClass.SelectedValue;
        ddlSubject.DataSource = (from k in km.SubjectsInSemesters
                                 join s in km.Subjects on k.SubjectId equals s.Id
                                 where k.SchoolId == schoolid && k.SemesterId == semesterid
                                 && k.ClassId == classid
                                 select s.Name).ToList().Distinct();
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnView_Click(object sender, EventArgs e)
    {

        var classid = ddlClass.SelectedValue;
        var subjectid = (from k in km.Subjects where k.Name == ddlSubject.SelectedValue select k.Id).FirstOrDefault();
        var schoolid = new SchoolInformation().getId();
        var semesterid = MyDate.getCurrentSemesterId();

        var subject = (from k in km.SubjectsInSemesters
                       where k.SchoolId == schoolid && k.SemesterId == semesterid
                       && k.SubjectId == subjectid && k.ClassId == classid
                       select k
                   ).FirstOrDefault();

        var lstStudent = (from k in km.StudentsSubjects
                          join
s in km.Students on k.StudentId equals s.IdentityNumber
                          where k.SubjectId == subject.Id
                          orderby s.Name
                          select new
                          {
                              s.Name,
                              s.Id,
                              s.IdentityNumber
                          }).ToList();

        ListView1.DataSource = lstStudent;
        ListView1.DataBind();
    }
}


