using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentAttendence_StudentsExcusesAdd : System.Web.UI.Page
{

    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.DataBind();
            Calendar2.DataBind();
            Calendar1.SelectedDate = DateTime.Now;
            FillDropDownList();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
      

        int schoolId = SchoolInfo.getId();
        //task.SchoolId = schoolId;
        int semesterId = MyDate.getCurrentSemesterId();

      

        foreach (ListItem item in Lstpart.Items)
        {

            var userId = item.Value;
            StudentsAbsence abs = new StudentsAbsence();
            abs.StudentId = userId;
            abs.SchoolId = schoolId;
            abs.SemesterId = semesterId;
            abs.IsExcuse = Convert.ToBoolean(radioIsExecuse.SelectedValue);
            if (abs.IsExcuse==true)
            abs.Reason =txtReason.Text ;

            if (Calendar1.CultureName == "ar-EG")
            {
                abs.Date = DateTime.ParseExact(datepicker.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));
            }else
            {
                abs.Date = MyDate.convertHijriToGregorian(datepicker.Text);
            }
            abs.IsOneDay = radioDay.SelectedValue == "1";
            if (abs.IsOneDay == false)
            {


                if (Calendar1.CultureName == "ar-EG")
                {
                    abs.DateTo = DateTime.ParseExact(datepicker2.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));
                }
                else
                {
                    abs.DateTo = MyDate.convertHijriToGregorian(datepicker2.Text);
                }
            }

            km.StudentsAbsences.Add(abs);
            km.SaveChanges();
        }

       
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تم الاضافة بنجاح بنجاح'); </script>", false);

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



    protected void radioIsExecuse_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(radioIsExecuse.SelectedValue== "True")
           divReason.Visible = true;
        else
            divReason.Visible = false;

    }

    protected void radioDay_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radioDay.SelectedValue == "2")
        {

            divDate.Visible = true;
            ltr1.Text = "من";
        }
        else
        {
            divDate.Visible = false;
            ltr1.Text = "التاريخ";


        }
    }
}