using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Temp_Activity_task : System.Web.UI.Page
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CalendarDate.DataBind();
            ddlEventType.DataBind();

            int schoolId = SchoolInfo.getId();
            var Emp1 = (from II in km.Employees
                        where II.Name != null && II.SchoolId == schoolId
                        orderby II.Name
                        select II).ToList();

            ddlEmployee.DataSource = Emp1;
            ddlEmployee.DataBind();

            FillEmpName();
            FillSpecification();
            FillListJopName();
            FillDropDownList();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Task task = new Task();

        task.Title = txtTitle.Text;
        task.TypeId = Convert.ToInt32(ddlEventType.SelectedValue);

        if (!String.IsNullOrEmpty(txtLocationExecution.Text))
            task.Location = txtLocationExecution.Text;

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            TimeSpan time = Convert.ToDateTime(txtTime.Text).TimeOfDay;

            if (CalendarDate.CultureName == "ar-SA")
            {
                task.Date = MyDate.convertHijriToGregorian(txtDate.Text).Add(time);
            }
            else
            {
                task.Date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG")).Add(time);
            }
        }

        if (txtAlarmDate.Text != null && !string.IsNullOrEmpty(txtAlarmDate.Text.ToString()))
        {
            TimeSpan time = Convert.ToDateTime(txtAlarmTime.Text).TimeOfDay;

            if (CalendarDate.CultureName == "ar-SA")
            {
                task.DateAlarm = MyDate.convertHijriToGregorian(txtAlarmDate.Text).Add(time);
            }
            else
            {
                task.DateAlarm = DateTime.ParseExact(txtAlarmDate.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG")).Add(time);
            }
        }


        if (!String.IsNullOrEmpty(txtDescription.Text))
            task.Description = txtDescription.Text;

        if (ddlIncoming.SelectedValue != "-1")
            task.IncommingId = int.Parse (ddlIncoming.SelectedValue);

        if (ddlEmployee.SelectedValue != "-1")
            task.EmployeeId = ddlEmployee.SelectedValue;


        int schoolId = SchoolInfo.getId();
        task.SchoolId = schoolId;
        task.SemesterId = MyDate.getCurrentSemesterId();

        task.IsStudentRequired = chxStudent.Checked;
        task.IsEmployeeRequired = chxEmployee.Checked;

        if ((bool)task.IsStudentRequired)
        {
            //نسجبل غياب بعذر للطلاب
        }

        if ((bool)task.IsEmployeeRequired)
        {
            //تسجيل غياب بعذر للموظفين
        }
        km.Tasks.Add(task);
        km.SaveChanges();



        List<Employee> empLst = new List<Employee>();
        foreach (ListViewItem item in LstJopEmployees.Items)
        {
            CheckBox che = (CheckBox)item.FindControl("chkRow");
            if (che.Checked)
            {
                var jobid = int.Parse(((HiddenField)item.FindControl("HiddenField2")).Value);

                foreach (var emp in km.Employees)
                {
                    if (emp.JobId == jobid && emp.SchoolId == schoolId)
                        empLst.Add(emp);
                }
            }
        }

        foreach (ListViewItem item in LstEmp.Items)
        {
            CheckBox che = (CheckBox)item.FindControl("chkRow");
            if (che.Checked)
            {
                var userId = ((HiddenField)item.FindControl("HiddenField1")).Value;

                empLst.Add((from k in km.Employees where k.IdentityNumber == userId select k).FirstOrDefault());
            }
        }

        foreach (ListViewItem item in LstSpecification.Items)
        {
            CheckBox che = (CheckBox)item.FindControl("chkRow");
            if (che.Checked)
            {
                UsersTask ut = new UsersTask();
                string specification = ((Label)item.FindControl("NameLabel")).Text;

                foreach (Employee emp in km.Employees)
                {
                    if (emp.Specification == specification && emp.SchoolId == schoolId)
                        empLst.Add(emp);
                }
            }
        }

        foreach (ListItem item in Lstpart.Items)
        {

            var userId = item.Value;
            UsersTask usertask = new UsersTask();
            usertask.UserId = userId;
            usertask.TaskId = task.Id;
            usertask.IsEmployee = false;

            km.UsersTasks.Add(usertask);
            km.SaveChanges();
        }

        foreach (Employee emp in empLst.Distinct())
        {
            if (emp.SchoolId == schoolId)
            {
                UsersTask usertask = new UsersTask();
                usertask.UserId = emp.IdentityNumber;
                usertask.TaskId = task.Id;
                usertask.IsEmployee = true;

                km.UsersTasks.Add(usertask);
                km.SaveChanges();
              
            }
        }

        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تم تسجيل الحدث بنجاح'); </script>", false);

    }

    public void FillDropDownList()
    {
        if (!IsPostBack)
        {
            int schoolId = SchoolInfo.getId();
        int semesterId = MyDate.getCurrentSemesterId();
        var lststudents = (from k in km.Students where k.SchoolId == schoolId select k).ToList();

        ddlClass.DataSource = (from k in km.SubjectsInSemesters where k.SchoolId == schoolId && k.SemesterId == semesterId orderby k.ClassId select k.ClassId).Distinct().ToList();
        ddlClass.DataBind();

        ddlSubject.DataSource = (from k in km.SubjectsInSemesters join s in km.Subjects on k.SubjectId equals s.Id where k.SchoolId == schoolId && k.SemesterId == semesterId orderby s.Name select s).Distinct().ToList();
        ddlSubject.DataBind();

        ddlSpecification.DataSource = (from k in lststudents orderby k.Specification select k.Specification).Distinct().ToList();
        ddlSpecification.DataBind();

        ddlYear.DataSource = (from k in lststudents where k.Id != null orderby k.Id select (k.Id / 1000)).Distinct().ToList();
        ddlYear.DataBind();

        ddlStdNumber.DataSource = (from k in lststudents where k.Id != null orderby k.Id select k).ToList();
        ddlStdNumber.DataBind();

        ddlName.DataSource = lststudents;
        ddlName.DataBind();

    }
    }


    public void FillListJopName()
    {
        var jobs = (from I in km.Jobs
                    where I.Name != null
                    orderby I.Name
                    select I).ToList();
        LstJopEmployees.DataSource = jobs;
        LstJopEmployees.DataBind();
    }

    public void FillEmpName()
    {
        int schoolId = SchoolInfo.getId();
        var Emp1 = (from II in km.Employees
                    where II.Name != null && II.SchoolId == schoolId
                    orderby II.Name
                    select II).ToList();

        LstEmp.DataSource = Emp1;
        LstEmp.DataBind();

    }

    public void FillSpecification()
    {
        var Emp1 = (from II in km.Employees
                    where II.Specification != null && II.Specification != ""
                    orderby II.Specification
                    select new
                    {
                        II.Specification
                    }).Distinct().ToList();

        LstSpecification.DataSource = Emp1;
        LstSpecification.DataBind();
    }

    protected void btnAdd_Click1111(object sender, EventArgs e)
    {
        //int schoolId = SchoolInfo.getId();

        //Task ta = new Task();

        //ta.Title = txtNameTask.Text;
        //ta.SchoolId = schoolId;
        //ta.SemesterId = MyDate.getCurrentSemesterId();

        //if (Calendar1.CultureName == "ar-SA")
        //    ta.EndDate = MyDate.convertHijriToGregorian(txtDate.Text);
        //else
        //    ta.EndDate = Convert.ToDateTime(txtDate.Text);

        //ta.Description = txtDescription.Text;

        //if (Request.QueryString["type"] != null)
        //{
        //    string type = Request.QueryString["type"];
        //    if (type == "Incoming")
        //    {
        //        ta.Type = ConstantManager.getConstantId("وارد");
        //    }
        //    else
        //        if (type == "Outcoming")
        //    {
        //        ta.Type = ConstantManager.getConstantId("صادر");
        //    }

        //    ta.TypeId = int.Parse(Request.QueryString["typeId"]);
        //}

        //km.Tasks.Add(ta);
        //km.SaveChanges();

        //List<Employee> empLst = new List<Employee>();

        //foreach (ListViewItem item in LstJopEmployees.Items)
        //{
        //    CheckBox che = (CheckBox)item.FindControl("chkRow");
        //    if (che.Checked)
        //    {
        //        var jobid = int.Parse(((HiddenField)item.FindControl("HiddenField2")).Value);

        //        foreach (var emp in km.Employees)
        //        {
        //            if (emp.JobId == jobid && emp.SchoolId == schoolId)
        //                empLst.Add(emp);
        //        }
        //    }

        //}

        //foreach (ListViewItem item in LstEmp.Items)
        //{
        //    CheckBox che = (CheckBox)item.FindControl("chkRow");
        //    if (che.Checked)
        //    {
        //        var userId = ((HiddenField)item.FindControl("HiddenField1")).Value;

        //        empLst.Add((from k in km.Employees where k.IdentityNumber == userId select k).FirstOrDefault());
        //    }
        //}

        //foreach (ListViewItem item in LstSpecification.Items)
        //{
        //    CheckBox che = (CheckBox)item.FindControl("chkRow");
        //    if (che.Checked)
        //    {
        //        UsersTask ut = new UsersTask();
        //        string specification = ((Label)item.FindControl("NameLabel")).Text;

        //        foreach (Employee emp in km.Employees)
        //        {
        //            if (emp.Specification == specification && emp.SchoolId == schoolId)
        //                empLst.Add(emp);
        //        }
        //    }
        //}

        //foreach (Employee emp in empLst.Distinct())
        //{
        //    if (emp.SchoolId == schoolId)
        //    {
        //        UsersTask usertask = new UsersTask();
        //        usertask.UserId = emp.IdentityNumber;
        //        usertask.TaskId = ta.Id;
        //        usertask.IsDone = false;

        //        km.UsersTasks.Add(usertask);
        //        km.SaveChanges();
        //        PlaceHolderSuccess.Visible = true;
        //    }
        //}
    }

    protected void chkAll_CheckedChanged(object sender, EventArgs e)
    {
        bool tf = chkAll.Checked;
        CheckUncheckAll(tf);

    }

    void CheckUncheckAll(bool tf)
    {
        foreach (ListViewItem item in LstEmp.Items)
        {
            var chx = (CheckBox)item.FindControl("chkRow");
            chx.Checked = tf;
        }
    }




    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var value = RadioButtonList1.SelectedValue;
        switch (value)
        {
            case "1":
                PlaceHolderStdName.Visible = false;

                PlaceHolderClass.Visible = false;
                PlaceHolderYear.Visible = false;
                PlaceHolderStdNumber.Visible = true;
                PlaceHolderSpecification.Visible = false;
                break;
            case "2":
                PlaceHolderStdName.Visible = false;

                PlaceHolderClass.Visible = false;
                PlaceHolderYear.Visible = true;
                PlaceHolderStdNumber.Visible = false;
                PlaceHolderSpecification.Visible = false;
                break;
            case "3":
                PlaceHolderStdName.Visible = false;

                PlaceHolderClass.Visible = true;
                PlaceHolderYear.Visible = false;
                PlaceHolderStdNumber.Visible = false;
                PlaceHolderSpecification.Visible = false;
                break;
            case "4":
                PlaceHolderStdName.Visible = false;
                PlaceHolderClass.Visible = false;
                PlaceHolderYear.Visible = false;
                PlaceHolderStdNumber.Visible = false;
                PlaceHolderSpecification.Visible = true;
                break;
            default:
                PlaceHolderStdName.Visible = true;
                PlaceHolderClass.Visible = false;
                PlaceHolderYear.Visible = false;
                PlaceHolderStdNumber.Visible = false;
                PlaceHolderSpecification.Visible = false;
                break;
        }
    }



    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var lstRemove = new List<ListItem>();
        foreach (ListItem lst in Lstpart.Items)
        {
            if (lst.Selected)
            {
                LstStudentName.Items.Add(new ListItem(lst.Text, lst.Value));
                var item = Lstpart.Items.FindByValue(lst.Value);
                lstRemove.Add(item);
            }

        }

        foreach (ListItem item in lstRemove)
        {
            Lstpart.Items.Remove(item);
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var lstRemove = new List<ListItem>();
        foreach (ListItem lst in LstStudentName.Items)
        {
            if (lst.Selected)
            {
                Lstpart.Items.Add(new ListItem(lst.Text, lst.Value));
                var item = LstStudentName.Items.FindByValue(lst.Value);
                lstRemove.Add(item);
            }

        }

        foreach (ListItem item in lstRemove)
        {
            LstStudentName.Items.Remove(item);
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var lst = new List<Student>();
        int schoolId = SchoolInfo.getId();
        int semesterId = MyDate.getCurrentSemesterId();

        var lststudents = (from k in km.Students where k.SchoolId == schoolId select k).ToList();


        ddlName.DataSource = lststudents;
        ddlName.DataBind();
        if (PlaceHolderStdName.Visible == true)
        {
            LstStudentName.DataSource= (from k in lststudents where k.IdentityNumber == ddlName.SelectedValue select k).ToList();
        }
        else
            if (PlaceHolderClass.Visible == true)
        {
            var subjectId = int.Parse(ddlSubject.SelectedValue);
            var classId = ddlClass.SelectedValue;
            //ERROR
            LstStudentName.DataSource = (from k in lststudents
                                         join      ss in km.StudentsSubjects on k.IdentityNumber equals ss.StudentId
                                             join s in km.SubjectsInSemesters on ss.SubjectId equals s.Id
                                         where s.ClassId==classId && s.SubjectId==subjectId
                                         orderby k.Name
                                         select k).ToList();

        }
        else if (PlaceHolderYear.Visible == true)
        {
            var year = int.Parse(ddlYear.SelectedValue);
            LstStudentName.DataSource = (from k in lststudents where k.Id != null &&  (k.Id / 1000) == year orderby k.Name select k).Distinct().ToList();
        }
        else if (PlaceHolderStdNumber.Visible == true)
        {
            LstStudentName.DataSource = (from k in lststudents where k.IdentityNumber == ddlStdNumber.SelectedValue  select k).ToList();
        }
        else if (PlaceHolderSpecification.Visible == true)
        {
            LstStudentName.DataSource = (from k in lststudents where k.Specification == ddlSpecification.SelectedValue orderby k.Name select k).ToList();

        }

        LstStudentName.DataBind();
    }
}