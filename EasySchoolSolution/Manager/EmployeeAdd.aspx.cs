using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Globalization;

public partial class Manager_EmployeeAdd : MyPermisionPage
{
    OnlineSchoolEntities onlineschool = new OnlineSchoolEntities();
    SchoolInformation schoolinfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "EmployeeAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CalendarIdentityDate.DataBind();
            //CalendarYearQualification.DataBind();
            CalendarJobStartMinistry.DataBind();
            CalendarJobStartSchool.DataBind();
            CalendarJobStartCurrent.DataBind();

            if (Request.QueryString["id"] != null)
            {
                string id = Request.QueryString["id"].ToString();
                var employees = (from k in onlineschool.Employees where k.IdentityNumber == id select k).FirstOrDefault();

                if (employees.SchoolId != null)
                {
                    int SchoolID = schoolinfo.getId();

                    employees.SchoolId = SchoolID;
                }
                if (!String.IsNullOrEmpty(employees.Name))
                    txtName.Text = employees.Name;

              
                    ddlJobName.SelectedValue = employees.JobId.ToString();

                if (!String.IsNullOrEmpty(employees.Nationality))
                    txtNationality.Text = employees.Nationality;

                if (!String.IsNullOrEmpty(employees.Specification))
                    txtSpecification.Text = employees.Specification;

                if (!String.IsNullOrEmpty(employees.YearofQualification))
                    txtYearQualification.Text = employees.YearofQualification;

                if (!String.IsNullOrEmpty(employees.IdentityNumber))
                    txtIdentityNumber.Text = employees.IdentityNumber;

                if (!String.IsNullOrEmpty(employees.Email))
                    txtEmail.Text = employees.Email;

                if (employees.IdentityDate != null && !string.IsNullOrEmpty(employees.IdentityDate.ToString()))
                {
                    txtIdentityDate.Text = MyDate.getDate(employees.IdentityDate.ToString());
                  
                }
                if (!String.IsNullOrEmpty(employees.Qualification))
                    txtQualification.Text = employees.Qualification;

                if (employees.JobStartSchool != null && !string.IsNullOrEmpty(employees.JobStartSchool.ToString()))
                {
                    txtJobStartSchool.Text = MyDate.getDate(employees.JobStartSchool.ToString());
                 
                }

                if (!String.IsNullOrEmpty(employees.Level))
                    txtLevel.Text = employees.Level;

                if (!String.IsNullOrEmpty(employees.Degree))
                    txtDegree.Text = employees.Degree;

                if (!String.IsNullOrEmpty(employees.PhoneHome))
                    txtPhoneHome.Text = employees.PhoneHome;

                if (employees.JobStartMinistry != null && !string.IsNullOrEmpty(employees.JobStartMinistry.ToString()))
                {
                    txtJobStartMinistry.Text = MyDate.getDate(employees.JobStartMinistry.ToString());
                  
                }
                if (!String.IsNullOrEmpty(employees.Mobile))
                    txtMobile.Text = employees.Mobile;

                if (!String.IsNullOrEmpty(employees.Comments))
                    txtComments.Text = employees.Comments;

                if (employees.JobStartCurrent != null && !string.IsNullOrEmpty(employees.JobStartCurrent.ToString()))
                {
                    txtJobStartCurrent.Text = MyDate.getDate(employees.JobStartCurrent.ToString());

                }

                btnAdd.Text = "تعديل الموظف";
                ltrTitle.Text = "تعديل بيانات الموظف";

            }
            else
            {
                btnAdd.Text = "تسجيل الموظف";
                ltrTitle.Text = "إضافة موظف جديد";
            }
            onlineschool.SaveChanges();
        }
    
            
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
       Employee employee = new Employee();
        if (btnAdd.Text == "تعديل الموظف")
        {
            string id = Request.QueryString["id"].ToString();
            employee = (from k in onlineschool.Employees where k.IdentityNumber == id select k).FirstOrDefault();
            lblerror.Text = "تم التعديل بنجاح";
        }

            int SchoolID = schoolinfo.getId();
            employee.SchoolId = SchoolID;
        
        if (!String.IsNullOrEmpty(txtIdentityNumber.Text))
            employee.IdentityNumber = txtIdentityNumber.Text;

        if (!String.IsNullOrEmpty(txtName.Text))
            employee.Name = txtName.Text;

        if (!String.IsNullOrEmpty(txtNationality.Text))
            employee.Nationality = txtNationality.Text;

        if (txtIdentityDate.Text != null && !string.IsNullOrEmpty(txtIdentityDate.Text.ToString()))
        {
            if (CalendarIdentityDate.CultureName == "ar-SA")
                employee.IdentityDate = MyDate.convertHijriToGregorian(txtIdentityDate.Text);
            else
                employee.IdentityDate = DateTime.ParseExact(txtIdentityDate.Text,"yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (!String.IsNullOrEmpty(txtQualification.Text))
            employee.Qualification = txtQualification.Text;

        if (txtYearQualification.Text != null && !string.IsNullOrEmpty(txtYearQualification.Text.ToString()))
        {
            //if (CalendarYearQualification.CultureName == "ar-SA")
                employee.YearofQualification = txtYearQualification.Text;
            //else
            //    employee.YearofQualification = txtYearQualification.Text;
        }

        if (!String.IsNullOrEmpty(txtSpecification.Text))
            employee.Specification = txtSpecification.Text;

        if (txtJobStartCurrent.Text != null && !string.IsNullOrEmpty(txtJobStartCurrent.Text.ToString()))
        {
            if (CalendarJobStartCurrent.CultureName == "ar-SA")
                employee.JobStartCurrent = MyDate.convertHijriToGregorian(txtJobStartCurrent.Text);
            else
                employee.JobStartCurrent = DateTime.ParseExact(txtJobStartCurrent.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (txtJobStartMinistry.Text != null && !string.IsNullOrEmpty(txtJobStartMinistry.Text))
        {
            if (CalendarJobStartMinistry.CultureName == "ar-SA")
                employee.JobStartMinistry = MyDate.convertHijriToGregorian(txtJobStartMinistry.Text);
            else
                employee.JobStartMinistry = DateTime.ParseExact(txtJobStartMinistry.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (txtJobStartSchool.Text != null && !string.IsNullOrEmpty(txtJobStartSchool.Text))
        {
            if (CalendarJobStartSchool.CultureName == "ar-SA")
                employee.JobStartSchool = MyDate.convertHijriToGregorian(txtJobStartSchool.Text);
            else
                employee.JobStartSchool = DateTime.ParseExact(txtJobStartSchool.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (!String.IsNullOrEmpty(txtLevel.Text))
            employee.Level = txtLevel.Text;

        if (!String.IsNullOrEmpty(txtDegree.Text))
            employee.Degree = txtDegree.Text;

        if (!String.IsNullOrEmpty(txtPhoneHome.Text))
            employee.PhoneHome = txtPhoneHome.Text;

        if (!String.IsNullOrEmpty(txtMobile.Text))
            employee.Mobile = txtMobile.Text;

        if (!String.IsNullOrEmpty(txtEmail.Text))
            employee.Email = txtEmail.Text;

        if (!String.IsNullOrEmpty(txtComments.Text))
            employee.Comments = txtComments.Text;


        if (!String.IsNullOrEmpty(employee.JobId.ToString()))
            employee.JobId = int.Parse(ddlJobName.SelectedValue);

        if (btnAdd.Text == "تسجيل الموظف")
        {
            onlineschool.Employees.Add(employee);
        }

        PlaceHolderSuccess.Visible = true;

        onlineschool.SaveChanges();
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }
}