using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class StudentAdd : System.Web.UI.Page
{
    OnlineSchoolEntities onlineschool = new OnlineSchoolEntities();
    SchoolInformation schoolinfo = new SchoolInformation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CalendarDOB.DataBind();
            CalendarIdentityDate.DataBind();
            CalendarJoinedDate.DataBind();
            CalendarDateIdentity.DataBind();
            CalendarEndIdentity.DataBind();

            if (Request.QueryString["id"] != null)
            {
                string id = Request.QueryString["id"].ToString();
                var student = (from k in onlineschool.Students where k.IdentityNumber == id select k).FirstOrDefault();
                //Student student = new Student();

                //if (student.SchoolId != null)
                //{
                //    int SchoolID = schoolinfo.getId();

                //    student.SchoolId = SchoolID;
                //}

                if (!String.IsNullOrEmpty(student.Name))
                    txtName.Text = student.Name;
                //   student.Name = txtName.Text;


                if (!String.IsNullOrEmpty(student.NameEnglish))
                    txtNameEnglish.Text = student.NameEnglish;

                if (!String.IsNullOrEmpty(student.EducationalLevel))
                    txtEducationalLevel.Text = student.EducationalLevel;

                if (!String.IsNullOrEmpty(student.Class))
                    txtClass.Text = student.Class;

                if (!String.IsNullOrEmpty(student.Semester.ToString()))
                    txtSemester.Text = student.Semester.ToString();

                if (!String.IsNullOrEmpty(student.Nationality))
                    txtNationality.Text = student.Nationality;

                if (!String.IsNullOrEmpty(student.ResidencyNo.ToString()))
                    txtResidencyNo.Text = student.ResidencyNo.ToString();

                if (!String.IsNullOrEmpty(student.NationalityEnglish))
                    txtNationalityEnglish.Text = student.NationalityEnglish;

                if (!String.IsNullOrEmpty(student.CountryBirth))
                    txtCountryBirth.Text = student.CountryBirth;

                if (!String.IsNullOrEmpty(student.CityBirth))
                    txtCityBirth.Text = student.CityBirth;

                if (!String.IsNullOrEmpty(student.OwnershipHousing))
                    txtOwnershipHousing.Text = student.OwnershipHousing;

                if (!String.IsNullOrEmpty(student.BloodType))
                    txtBloodType.Text = student.BloodType;

                if (!String.IsNullOrEmpty(student.AdministrativeRegion))
                    txtAdministrativeRegion.Text = student.AdministrativeRegion;

                if (!String.IsNullOrEmpty(student.City))
                    txtCity.Text = student.City;

                if (!String.IsNullOrEmpty(student.District))
                    txtDistrict.Text = student.District;

                if (!String.IsNullOrEmpty(student.MainStreet))
                    txtMainStreet.Text = student.MainStreet;

                if (!String.IsNullOrEmpty(student.SubStreet))
                    txtSubStreet.Text = student.SubStreet;

                if (!String.IsNullOrEmpty(student.HouseNo))
                    txtHouseNo.Text = student.HouseNo;

                if (!String.IsNullOrEmpty(student.Email))
                    txtEmail.Text = student.Email;

                if (!String.IsNullOrEmpty(student.MailBox))
                    txtMailBox.Text = student.MailBox;

                if (!String.IsNullOrEmpty(student.PostalCode))
                    txtPostalCode.Text = student.PostalCode;

                if (!String.IsNullOrEmpty(student.Fax))
                    txtFax.Text = student.Fax;

                if (!String.IsNullOrEmpty(student.AddressHoliday))
                    txtAddressHoliday.Text = student.AddressHoliday;

                if (!String.IsNullOrEmpty(student.GuardianName))
                    txtGuardianName.Text = student.GuardianName;

                if (!String.IsNullOrEmpty(student.GuardianNationality))
                    txtGuardianNationality.Text = student.GuardianNationality;

                if (!String.IsNullOrEmpty(student.HomePhoneNo))
                    txtHomePhoneNo.Text = student.HomePhoneNo;

                if (!String.IsNullOrEmpty(student.MobileNumber))
                    txtMobileNumber.Text = student.MobileNumber;

                if (!String.IsNullOrEmpty(student.WorkPhoneNumber))
                    txtWorkPhoneNumber.Text = student.WorkPhoneNumber;

                if (!String.IsNullOrEmpty(student.GuardianIdentityType))
                    txtGuardianIdentityType.Text = student.GuardianIdentityType;

                if (!String.IsNullOrEmpty(student.GuardianIdentitySource))
                    txtGuardianIdentitySource.Text = student.GuardianIdentitySource;

                if (!String.IsNullOrEmpty(student.DateIdentity.ToString()))
                    txtDateIdentity.Text = student.DateIdentity.ToString();

                if (!String.IsNullOrEmpty(student.RelativeRelation))
                    txtRelativeRelation.Text = student.RelativeRelation;

                if (!String.IsNullOrEmpty(student.NameStudentClose))
                    txtNameStudentClose.Text = student.NameStudentClose;

                if (!String.IsNullOrEmpty(student.AddressClose))
                    txtAddressClose.Text = student.AddressClose;

                if (!String.IsNullOrEmpty(student.MobileClose))
                    txtMobileClose.Text = student.MobileClose;

                if (!String.IsNullOrEmpty(student.NameStudentClose1))
                    txtNameStudentClose1.Text = student.NameStudentClose1;

                if (!String.IsNullOrEmpty(student.AddressClose1))
                    txtAddressClose1.Text = student.AddressClose1;

                if (!String.IsNullOrEmpty(student.MobileClose1))
                    txtMobileClose1.Text = student.MobileClose1;

                if (!String.IsNullOrEmpty(student.EndIdentity.ToString()))
                    txtEndIdentity.Text = student.EndIdentity.ToString();


                if (!String.IsNullOrEmpty(student.Specification))
                    txtSpecification.Text = student.Specification;

                if (!String.IsNullOrEmpty(student.YearofEntry))
                    txtYearEntery.Text = student.YearofEntry;

                if (!String.IsNullOrEmpty(student.IdentityNumber))
                    txtIdentityNo1.Text = student.IdentityNumber;

                if (!String.IsNullOrEmpty(student.IdentityType))
                    txtIdentityType.Text = student.IdentityType;

                if (student.IdentityDate != null && !string.IsNullOrEmpty(student.IdentityDate.ToString()))
                {
                    txtIdentityDate.Text = MyDate.getDate(student.IdentityDate.ToString());
                    //if (CalendarIdentityDate.CultureName == "ar-SA")
                    //    student.IdentityDate = MyDate.convertHijriToGregorian(txtIdentityDate.Text);
                    //else
                    //    student.IdentityDate = DateTime.ParseExact(txtIdentityDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
                }
                if (!String.IsNullOrEmpty(student.PassportNumber))
                    txtPassportNo.Text = student.PassportNumber;

                if (student.DOB != null && !string.IsNullOrEmpty(student.DOB.ToString()))
                {
                    txtDOB.Text = MyDate.getDate(student.DOB.ToString());
                    //if (CalendarDOB.CultureName == "ar-SA")
                    //    student.DOB = MyDate.convertHijriToGregorian(txtDOB.Text);
                    //else
                    //    student.DOB = DateTime.ParseExact(txtDOB.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
                }

                if (!String.IsNullOrEmpty(student.Record))
                    txtRecordStudent.Text = student.Record;

                if (!String.IsNullOrEmpty(student.ConstraintState))
                    txtState.Text = student.ConstraintState;

                if (student.DateOfStart != null && !string.IsNullOrEmpty(student.DateOfStart.ToString()))
                {
                    txtJoinedDate.Text = MyDate.getDate(student.DateOfStart.ToString());
                    //    if (CalendarJoinedDate.CultureName == "ar-SA")
                    //        student.DateOfStart = MyDate.convertHijriToGregorian(txtJoinedDate.Text);
                    //    else
                    //        student.DateOfStart = DateTime.ParseExact(txtJoinedDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
                }
                if (!String.IsNullOrEmpty(student.Comment))
                    txtNote.Text = student.Comment;

                if (!String.IsNullOrEmpty(student.IdentitySource))
                    txtIdentitySource.Text = student.IdentitySource;

                btnAdd.Text = "تعديل الطالب";

            }
            else
            {
                btnAdd.Text = "تسجيل الطالب";
            }
            //onlineschool.SaveChanges();
        }
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
          PlaceHolderSuccess.Visible = false;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Student student = new Student();


        if (btnAdd.Text == "تعديل الطالب")
        {
            string id = Request.QueryString["id"].ToString();
            student = (from k in onlineschool.Students where k.IdentityNumber == id select k).FirstOrDefault();
            lblerror.Text = "تم التعديل بنجاح";
        }
     
            int SchoolID = schoolinfo.getId();
            student.SchoolId = SchoolID;

        if (!String.IsNullOrEmpty(txtCountryBirth.Text))
           student.CountryBirth  = txtCountryBirth.Text;

        if (!String.IsNullOrEmpty(txtCityBirth.Text))
           student.CityBirth  = txtCityBirth.Text;

        if (!String.IsNullOrEmpty(txtOwnershipHousing.Text))
            student.OwnershipHousing = txtOwnershipHousing.Text;

        if (!String.IsNullOrEmpty(txtBloodType.Text))
           student.BloodType  = txtBloodType.Text;

        if (!String.IsNullOrEmpty(txtHomePhoneNo.Text))
          student.HomePhoneNo = txtHomePhoneNo.Text;

        if (!String.IsNullOrEmpty(txtMobileNumber.Text))
           student.MobileNumber = txtMobileNumber.Text;

        if (!String.IsNullOrEmpty(txtWorkPhoneNumber.Text))
           student.WorkPhoneNumber  = txtWorkPhoneNumber.Text;

        if (!String.IsNullOrEmpty(txtAdministrativeRegion.Text))
            student.AdministrativeRegion = txtAdministrativeRegion.Text;

        if (!String.IsNullOrEmpty(txtCity.Text))
            student.City = txtCity.Text;

        if (!String.IsNullOrEmpty(txtDistrict.Text))
            student.District = txtDistrict.Text;

        if (!String.IsNullOrEmpty(txtMainStreet.Text))
            student.MainStreet = txtMainStreet.Text;

        if (!String.IsNullOrEmpty(txtSubStreet.Text))
            student.SubStreet = txtSubStreet.Text;

        if (!String.IsNullOrEmpty(txtHouseNo.Text))
           student.HouseNo  = txtHouseNo.Text;

        if (!String.IsNullOrEmpty(txtEmail.Text))
            student.Email = txtEmail.Text;

        if (!String.IsNullOrEmpty(txtMailBox.Text))
           student.MailBox = txtMailBox.Text;

        if (!String.IsNullOrEmpty(txtPostalCode.Text))
           student.PostalCode  = txtPostalCode.Text;

        if (!String.IsNullOrEmpty(txtFax.Text))
            student.Fax = txtFax.Text;

        if (!String.IsNullOrEmpty(txtAddressHoliday.Text))
            student.AddressHoliday = txtAddressHoliday.Text;

        if (!String.IsNullOrEmpty(txtGuardianName.Text))
             student.GuardianName = txtGuardianName.Text;

        if (!String.IsNullOrEmpty(txtGuardianNationality.Text))
           student.GuardianNationality  = txtGuardianNationality.Text;

        if (!String.IsNullOrEmpty(txtGuardianIdentityType.Text))
            student.GuardianIdentityType = txtGuardianIdentityType.Text;

        if (!String.IsNullOrEmpty(txtGuardianIdentitySource.Text))
           student.GuardianIdentitySource = txtGuardianIdentitySource.Text;

        if (txtDateIdentity.Text != null && !String.IsNullOrEmpty(txtDateIdentity.Text))
        {
            if (CalendarDateIdentity.CultureName == "ar-SA")
                student.DateIdentity = MyDate.convertHijriToGregorian(txtDateIdentity.Text);
            else
                student.IdentityDate = DateTime.ParseExact(txtDateIdentity.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }
        if (txtEndIdentity.Text != null && !String.IsNullOrEmpty(txtEndIdentity.Text))
        {
            if (CalendarEndIdentity.CultureName == "ar-SA")
                student.EndIdentity = MyDate.convertHijriToGregorian(txtEndIdentity.Text);
            else
                student.EndIdentity = DateTime.ParseExact(txtEndIdentity.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));

        }

        if (!String.IsNullOrEmpty(txtEducationalLevel.Text))
           student.EducationalLevel = txtEducationalLevel.Text;

        if (!String.IsNullOrEmpty(txtClass.Text))
           student.Class = txtClass.Text;

        if (!String.IsNullOrEmpty(txtSemester.Text))
            student.Semester = int.Parse(txtSemester.Text);

      

        if (!String.IsNullOrEmpty(txtResidencyNo.Text))
           student.ResidencyNo =int.Parse( txtResidencyNo.Text);

        if (!String.IsNullOrEmpty(txtRelativeRelation.Text))
             student.RelativeRelation= txtRelativeRelation.Text;

        if (!String.IsNullOrEmpty(txtNameStudentClose.Text))
          student.NameStudentClose = txtNameStudentClose.Text;

        if (!String.IsNullOrEmpty(txtAddressClose.Text))
            student.AddressClose = txtAddressClose.Text;

        if (!String.IsNullOrEmpty(txtMobileClose.Text))
          student.MobileClose   = txtMobileClose.Text;

        if (!String.IsNullOrEmpty(txtNameStudentClose1.Text))
         student.NameStudentClose1 = txtNameStudentClose1.Text;

        if (!String.IsNullOrEmpty(txtAddressClose1.Text))
            student.AddressClose1 = txtAddressClose1.Text;

        if (!String.IsNullOrEmpty(txtMobileClose1.Text))
           student.MobileClose1  = txtMobileClose1.Text;
    

        if (!String.IsNullOrEmpty(txtName.Text))
            student.Name = txtName.Text;

        if (!String.IsNullOrEmpty(txtNameEnglish.Text))
            student.NameEnglish = txtNameEnglish.Text;

        if (!String.IsNullOrEmpty(txtNationality.Text))
            student.Nationality = txtNationality.Text;

        if (!String.IsNullOrEmpty(txtNationalityEnglish.Text))
            student.NationalityEnglish = txtNationalityEnglish.Text;

        if (!String.IsNullOrEmpty(txtSpecification.Text))
            student.Specification = txtSpecification.Text;

        if (!String.IsNullOrEmpty(txtYearEntery.Text))
            student.YearofEntry = txtYearEntery.Text;

        if (!String.IsNullOrEmpty(txtIdentityNo1.Text))
            student.IdentityNumber = txtIdentityNo1.Text;

        if (!String.IsNullOrEmpty(txtIdentityType.Text))
            student.IdentityType = txtIdentityType.Text;

        if (txtIdentityDate.Text != null && !string.IsNullOrEmpty(txtIdentityDate.Text))
        {
            if (CalendarIdentityDate.CultureName == "ar-SA")
                student.IdentityDate = MyDate.convertHijriToGregorian(txtIdentityDate.Text);
            else
                student.IdentityDate = DateTime.ParseExact(txtIdentityDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (!String.IsNullOrEmpty(txtPassportNo.Text))
            student.PassportNumber = txtPassportNo.Text;

        if (txtDOB.Text != null && !string.IsNullOrEmpty(txtDOB.Text))
        {
            if (CalendarDOB.CultureName == "ar-SA")
                student.DOB = MyDate.convertHijriToGregorian(txtDOB.Text);
            else
                student.DOB = DateTime.ParseExact(txtDOB.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }
        if (!String.IsNullOrEmpty(txtRecordStudent.Text))
            student.Record = txtRecordStudent.Text;

        if (!String.IsNullOrEmpty(txtState.Text))
            student.ConstraintState = txtState.Text;

        if (txtJoinedDate.Text != null && !string.IsNullOrEmpty(txtJoinedDate.Text))
        {
            if (CalendarJoinedDate.CultureName == "ar-SA")
                student.DateOfStart = MyDate.convertHijriToGregorian(txtJoinedDate.Text);
            else
                student.DateOfStart = DateTime.ParseExact(txtJoinedDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (!String.IsNullOrEmpty(txtNote.Text))
        student.Comment = txtNote.Text;

        if (!String.IsNullOrEmpty(txtIdentitySource.Text))
            student.IdentitySource = txtIdentitySource.Text;
        PlaceHolderSuccess.Visible = true;

        if(btnAdd.Text == "تسجيل الطالب")
        {
        onlineschool.Students.Add(student);
        }

        PlaceHolderSuccess.Visible = true;
        onlineschool.SaveChanges();
    }
        
    
   
}