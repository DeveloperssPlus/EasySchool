using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentAttendence_StudentLatnessAdd : System.Web.UI.Page
{

    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.DataBind();
        //    Calendar2.DataBind();
            Calendar1.SelectedDate = DateTime.Now;
            FillDropDownList();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (Lstpart.Items.Count != 0)
        {


        int schoolId = SchoolInfo.getId();
        //task.SchoolId = schoolId;
        int semesterId = MyDate.getCurrentSemesterId();



        foreach (ListItem item in Lstpart.Items)
        {

            var userId = item.Value;
            StudentsLateness late = new StudentsLateness();
                late.StudentId = userId;
                late.SchoolId = schoolId;
                late.SemesterId = semesterId;

                late.Type = ConstantManager.getConstantId("تأخر صباحي");
                var minute = string.IsNullOrEmpty(txtMinute.Text) ? "0" : txtMinute.Text;
                var hour = string.IsNullOrEmpty(txtHour.Text) ? "0" : txtHour.Text;

                late.Amount = new TimeSpan(int.Parse(hour), int.Parse(minute), 0);
                late.TotalSeconds = (TimeSpan.Parse(late.Amount.ToString())).TotalSeconds;
                late.Reason = txtReason.Text;

                if (Calendar1.CultureName == "ar-EG")
            {
                    late.Date = DateTime.ParseExact(datepicker.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));
            }
            else
            {
                    late.Date = MyDate.convertHijriToGregorian(datepicker.Text);
            }

                km.StudentsLatenesses.Add(late);
                km.SaveChanges();
                lblError.Text = "";


                ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تم الاضافة بنجاح'); </script>", false);

        }
        }
        else
        {
            lblError.Text = "الرجاء اختيار الطلاب";
        }
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
            LstStudentName.DataSource = (from k in lststudents where k.IdentityNumber == ddlName.SelectedValue select k).ToList();
        }
        else
            if (PlaceHolderClass.Visible == true)
        {
            var subjectId = int.Parse(ddlSubject.SelectedValue);
            var classId = ddlClass.SelectedValue;
      
            LstStudentName.DataSource = (from k in lststudents
                                         join ss in km.StudentsSubjects on k.IdentityNumber equals ss.StudentId
                                         join s in km.SubjectsInSemesters on ss.SubjectId equals s.Id
                                         where s.ClassId == classId && s.SubjectId == subjectId
                                         orderby k.Name
                                         select k).ToList();

        }
        else if (PlaceHolderYear.Visible == true)
        {
            var year = int.Parse(ddlYear.SelectedValue);
            LstStudentName.DataSource = (from k in lststudents where k.Id != null && (k.Id / 1000) == year orderby k.Name select k).Distinct().ToList();
        }
        else if (PlaceHolderStdNumber.Visible == true)
        {
            LstStudentName.DataSource = (from k in lststudents where k.IdentityNumber == ddlStdNumber.SelectedValue select k).ToList();
        }
        else if (PlaceHolderSpecification.Visible == true)
        {
            LstStudentName.DataSource = (from k in lststudents where k.Specification == ddlSpecification.SelectedValue orderby k.Name select k).ToList();

        }

        LstStudentName.DataBind();
    }




}