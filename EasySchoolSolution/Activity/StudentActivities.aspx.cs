using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentActivities : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentActivities";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StudentName();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Lstpart.Items.Add(LstStudentName.SelectedItem);
      
        LstStudentName.Items.Remove(LstStudentName.SelectedItem);
       
    }
    public void StudentName()
    {
        var StName = (from r in km.Students orderby r.Name select r).ToList();
        LstStudentName.DataSource = StName;
        LstStudentName.DataTextField = "Name";
        LstStudentName.DataValueField = "IdentityNumber";
        LstStudentName.DataBind();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Lstpart.Items.Remove(Lstpart.SelectedItem);
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        StudentActivity active = new StudentActivity();

        if (!String.IsNullOrEmpty(txtFieldName.Text))
            active.FieldName = txtFieldName.Text;

        if (!String.IsNullOrEmpty(txtActivity.Text))
            active.Activity = txtActivity.Text;

        if (!String.IsNullOrEmpty(txtSeat.Text))
            active.Seat = txtSeat.Text;

        if (txtFrom.Text != null && !string.IsNullOrEmpty(txtFrom.Text.ToString()))
        {
            if (CalendarFrom.CultureName == "ar-SA")
                active.DateFrom = MyDate.convertHijriToGregorian(txtFrom.Text);
            else
                active.DateFrom = DateTime.ParseExact(txtFrom.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (txtTo.Text != null && !string.IsNullOrEmpty(txtTo.Text.ToString()))
        {
            if (CalendarTo.CultureName == "ar-SA")
                active.DateTo = MyDate.convertHijriToGregorian(txtTo.Text);
            else
                active.DateTo = DateTime.ParseExact(txtTo.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        int SchoolID = SchoolInfo.getId();
        active.SchoolId = SchoolID;
        active.SemesterId = MyDate.getCurrentSemesterId();

        km.StudentActivities.Add(active);
        km.SaveChanges();

        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' !! تمت الاضافة بنجاح'); </script>", false);

        foreach (ListItem lst in Lstpart.Items)
        {

            StudentsInActivity activety = new StudentsInActivity();
            activety.StudentId = lst.Value;
            activety.ActiviteId = active.Id;
            km.StudentsInActivities.Add(activety);
            km.SaveChanges();


        }


    }


    protected void Lstpart_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (ListItem lst in Lstpart.Items)
        {
            if (lst.Selected)
            {

                Lstpart.Items.Add(new ListItem(lst.Text.ToString(), lst.Value.ToString()));

            }

        }
    }
}