using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_StudentRecord : System.Web.UI.Page
{
    OnlineSchoolEntities OS = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["IdentityNumber"];
            if (id != null)
            {
                FillLoad();
            }
            FillStudentName();
         
            lstStuName.Items.Insert(0, new ListItem("اسم الطالب..", "select"));
       }
    }

    public void FillStudentName()
    {
        SchoolInformation schInfo = new SchoolInformation();
        var schoolid = schInfo.getId();
        var EmpName = (from k in OS.Students where k.SchoolId == schoolid orderby k.Name select k).ToList();
        lstStuName.DataSource = EmpName;
        lstStuName.DataValueField = "IdentityNumber";
        lstStuName.DataTextField = "Name";
        lstStuName.DataBind();
    }

    public void FillLoad()
    {
        string id = Request.QueryString["IdentityNumber"];

        var c = (from k in OS.Students where k.IdentityNumber == id select k).FirstOrDefault();
        if (c != null)
        {

            if (!String.IsNullOrEmpty(c.Name))
            {
                lblStuName.Text = c.Name;
                lblStuName.Visible = true;
            }
            if (c.Id != null)
                txtNumber.Text = c.Id + "";

            if (!String.IsNullOrEmpty(c.Nationality))
                txtNationality.Text = c.Nationality;

            if (c.IdentityDate!=null)
                txtIdentityDate.Text = MyDate.getDate(c.IdentityDate+"");

            if (c.DOB != null)
                txtDOB.Text = MyDate.getDate(c.DOB+"");

            if (!String.IsNullOrEmpty(c.IdentityNumber))
                txtIdentityNo1.Text = c.IdentityNumber;

            if (!String.IsNullOrEmpty(c.Specification))
                txtSpecification.Text = c.Specification;

            if (c.DateOfStart != null )
                txtJoinedDate.Text = MyDate.getDate(c.DateOfStart+"");

            if (!String.IsNullOrEmpty(c.PassportNumber))
                txtPassportNo.Text = c.PassportNumber;

            if (!String.IsNullOrEmpty(c.Record))
                txtRecordStudent.Text = c.Record.ToString();


            if (!String.IsNullOrEmpty(c.ConstraintState))
                txtState.Text = c.ConstraintState;

            if (!String.IsNullOrEmpty(c.YearofEntry))
                txtYearEntery.Text = c.YearofEntry;

            if (!String.IsNullOrEmpty(c.IdentityType))
                txtIdentityType.Text = c.IdentityType;

            if (!String.IsNullOrEmpty(c.EducationalLevel))
                txtEducationalLevel.Text = c.EducationalLevel;

            if (!String.IsNullOrEmpty(c.Class))
                txtClass.Text = c.Class;

            if (!String.IsNullOrEmpty(c.Semester.ToString()))
                txtSemester.Text = c.Semester.ToString();


            if (!String.IsNullOrEmpty(c.ResidencyNo.ToString()))
                txtResidencyNo.Text = c.ResidencyNo.ToString();


            if (!String.IsNullOrEmpty(c.CountryBirth))
                txtCountryBirth.Text = c.CountryBirth;

            if (!String.IsNullOrEmpty(c.CityBirth))
                txtCityBirth.Text = c.CityBirth;

            if (!String.IsNullOrEmpty(c.OwnershipHousing))
                txtOwnershipHousing.Text = c.OwnershipHousing;

            if (!String.IsNullOrEmpty(c.BloodType))
                txtBloodType.Text = c.BloodType;

            if (!String.IsNullOrEmpty(c.AdministrativeRegion))
                txtAdministrativeRegion.Text = c.AdministrativeRegion;

            if (!String.IsNullOrEmpty(c.City))
                txtCity.Text = c.City;

            if (!String.IsNullOrEmpty(c.District))
                txtDistrict.Text = c.District;

            if (!String.IsNullOrEmpty(c.MainStreet))
                txtMainStreet.Text = c.MainStreet;

            if (!String.IsNullOrEmpty(c.SubStreet))
                txtSubStreet.Text = c.SubStreet;

            if (!String.IsNullOrEmpty(c.HouseNo))
                txtHouseNo.Text = c.HouseNo;

            if (!String.IsNullOrEmpty(c.Email))
                txtEmail.Text = c.Email;

            if (!String.IsNullOrEmpty(c.MailBox))
                txtMailBox.Text = c.MailBox;

            if (!String.IsNullOrEmpty(c.PostalCode))
                txtPostalCode.Text = c.PostalCode;

            if (!String.IsNullOrEmpty(c.Fax))
                txtFax.Text = c.Fax;

            if (!String.IsNullOrEmpty(c.AddressHoliday))
                txtAddressHoliday.Text = c.AddressHoliday;

            if (!String.IsNullOrEmpty(c.GuardianName))
                txtGuardianName.Text = c.GuardianName;

            if (!String.IsNullOrEmpty(c.GuardianNationality))
                txtGuardianNationality.Text = c.GuardianNationality;

            if (!String.IsNullOrEmpty(c.HomePhoneNo))
                txtHomePhoneNo.Text = c.HomePhoneNo;

            if (!String.IsNullOrEmpty(c.MobileNumber))
                txtMobileNumber.Text = c.MobileNumber;

            if (!String.IsNullOrEmpty(c.WorkPhoneNumber))
                txtWorkPhoneNumber.Text = c.WorkPhoneNumber;

            if (!String.IsNullOrEmpty(c.GuardianIdentityType))
                txtGuardianIdentityType.Text = c.GuardianIdentityType;

            if (!String.IsNullOrEmpty(c.GuardianIdentitySource))
                txtGuardianIdentitySource.Text = c.GuardianIdentitySource;

            if (!String.IsNullOrEmpty(c.DateIdentity.ToString()))
                txtDateIdentity.Text = c.DateIdentity.ToString();

            if (!String.IsNullOrEmpty(c.RelativeRelation))
                txtRelativeRelation.Text = c.RelativeRelation;

            if (!String.IsNullOrEmpty(c.NameStudentClose))
                txtNameStudentClose.Text = c.NameStudentClose;

            if (!String.IsNullOrEmpty(c.AddressClose))
                txtAddressClose.Text = c.AddressClose;

            if (!String.IsNullOrEmpty(c.MobileClose))
                txtMobileClose.Text = c.MobileClose;

            if (!String.IsNullOrEmpty(c.NameStudentClose1))
                txtNameStudentClose1.Text = c.NameStudentClose1;

            if (!String.IsNullOrEmpty(c.AddressClose1))
                txtAddressClose1.Text = c.AddressClose1;

            if (!String.IsNullOrEmpty(c.MobileClose1))
                txtMobileClose1.Text = c.MobileClose1;

            if (!String.IsNullOrEmpty(c.EndIdentity.ToString()))
                txtEndIdentity.Text = c.EndIdentity.ToString();



            lnkEdit.NavigateUrl = "~/Manager/StudentAdd.aspx?id=" + c.IdentityNumber;
            lnkEdit.Visible = true;

            lstAttendences.DataBind();
            lstAbsence.DataBind();
            lstLate.DataBind();
            //FillLateness();
            //FillAttendences();
            //FillAbsences();
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (lstStuName.SelectedValue != "select"   || !String.IsNullOrEmpty(txtStdNumber.Text))
        {
            ClearLabel();
            var schoolid = info.getId();
            Student c;

            if (lstStuName.SelectedValue != "select")
            {
            c = (from k in OS.Students where k.SchoolId == schoolid && ( k.IdentityNumber == lstStuName.SelectedValue ) select k).FirstOrDefault();

            }else
            {
                var stdNumber = int.Parse(txtStdNumber.Text);
                c = (from k in OS.Students where k.SchoolId == schoolid && (k.Id == stdNumber) select k).FirstOrDefault();
            }

            if (c != null)
            {
                placeHolderError.Visible = false;

                if (!String.IsNullOrEmpty(c.Name))
                {
                    lblStuName.Text = c.Name;
                    lblStuName.Visible = true;
                }
                
                if (c.Id!=null)
                    txtNumber.Text = c.Id+"";

                if (!String.IsNullOrEmpty(c.Nationality))
                    txtNationality.Text = c.Nationality;

                if (c.IdentityDate != null)
                        txtIdentityDate.Text =MyDate.getDate(c.IdentityDate+"");

                if (c.DOB != null )
                        txtDOB.Text =MyDate.getDate(c.DOB+"");

                if (!String.IsNullOrEmpty(c.IdentityNumber))
                    txtIdentityNo1.Text = c.IdentityNumber;

                lnkEdit.NavigateUrl = "~/Manager/StudentAdd.aspx?id=" + c.IdentityNumber;
                lnkEdit.Visible = true;

                if (!String.IsNullOrEmpty(c.Specification))
                    txtSpecification.Text = c.Specification;        

                if (c.DateOfStart != null )
                        txtJoinedDate.Text = MyDate.getDate(c.DateOfStart+"");

                if (!String.IsNullOrEmpty(c.PassportNumber))
                    txtPassportNo.Text = c.PassportNumber;

                if (!String.IsNullOrEmpty(c.Record))
                    txtRecordStudent.Text = c.Record.ToString();


                if (!String.IsNullOrEmpty(c.ConstraintState))
                    txtState.Text = c.ConstraintState;

                if (!String.IsNullOrEmpty(c.YearofEntry))
                    txtYearEntery.Text = c.YearofEntry;

                if (!String.IsNullOrEmpty(c.IdentityType))
                    txtIdentityType.Text = c.IdentityType;
         
             

                if (!String.IsNullOrEmpty(c.EducationalLevel))
                    txtEducationalLevel.Text = c.EducationalLevel;

                if (!String.IsNullOrEmpty(c.Class))
                    txtClass.Text = c.Class;

                if (!String.IsNullOrEmpty(c.Semester.ToString()))
                    txtSemester.Text = c.Semester.ToString();


                if (!String.IsNullOrEmpty(c.ResidencyNo.ToString()))
                    txtResidencyNo.Text = c.ResidencyNo.ToString();


                if (!String.IsNullOrEmpty(c.CountryBirth))
                    txtCountryBirth.Text = c.CountryBirth;

                if (!String.IsNullOrEmpty(c.CityBirth))
                    txtCityBirth.Text = c.CityBirth;

                if (!String.IsNullOrEmpty(c.OwnershipHousing))
                    txtOwnershipHousing.Text = c.OwnershipHousing;

                if (!String.IsNullOrEmpty(c.BloodType))
                    txtBloodType.Text = c.BloodType;

                if (!String.IsNullOrEmpty(c.AdministrativeRegion))
                    txtAdministrativeRegion.Text = c.AdministrativeRegion;

                if (!String.IsNullOrEmpty(c.City))
                    txtCity.Text = c.City;

                if (!String.IsNullOrEmpty(c.District))
                    txtDistrict.Text = c.District;

                if (!String.IsNullOrEmpty(c.MainStreet))
                    txtMainStreet.Text = c.MainStreet;

                if (!String.IsNullOrEmpty(c.SubStreet))
                    txtSubStreet.Text = c.SubStreet;

                if (!String.IsNullOrEmpty(c.HouseNo))
                    txtHouseNo.Text = c.HouseNo;

                if (!String.IsNullOrEmpty(c.Email))
                    txtEmail.Text = c.Email;

                if (!String.IsNullOrEmpty(c.MailBox))
                    txtMailBox.Text = c.MailBox;

                if (!String.IsNullOrEmpty(c.PostalCode))
                    txtPostalCode.Text = c.PostalCode;

                if (!String.IsNullOrEmpty(c.Fax))
                    txtFax.Text = c.Fax;

                if (!String.IsNullOrEmpty(c.AddressHoliday))
                    txtAddressHoliday.Text = c.AddressHoliday;

                if (!String.IsNullOrEmpty(c.GuardianName))
                    txtGuardianName.Text = c.GuardianName;

                if (!String.IsNullOrEmpty(c.GuardianNationality))
                    txtGuardianNationality.Text = c.GuardianNationality;

                if (!String.IsNullOrEmpty(c.HomePhoneNo))
                    txtHomePhoneNo.Text = c.HomePhoneNo;

                if (!String.IsNullOrEmpty(c.MobileNumber))
                    txtMobileNumber.Text = c.MobileNumber;

                if (!String.IsNullOrEmpty(c.WorkPhoneNumber))
                    txtWorkPhoneNumber.Text = c.WorkPhoneNumber;

                if (!String.IsNullOrEmpty(c.GuardianIdentityType))
                    txtGuardianIdentityType.Text = c.GuardianIdentityType;

                if (!String.IsNullOrEmpty(c.GuardianIdentitySource))
                    txtGuardianIdentitySource.Text = c.GuardianIdentitySource;

                if (!String.IsNullOrEmpty(c.DateIdentity.ToString()))
                    txtDateIdentity.Text = MyDate.getDate(c.DateIdentity.ToString());

                if (!String.IsNullOrEmpty(c.RelativeRelation))
                    txtRelativeRelation.Text = c.RelativeRelation;

                if (!String.IsNullOrEmpty(c.NameStudentClose))
                    txtNameStudentClose.Text = c.NameStudentClose;

                if (!String.IsNullOrEmpty(c.AddressClose))
                    txtAddressClose.Text = c.AddressClose;

                if (!String.IsNullOrEmpty(c.MobileClose))
                    txtMobileClose.Text = c.MobileClose;

                if (!String.IsNullOrEmpty(c.NameStudentClose1))
                    txtNameStudentClose1.Text = c.NameStudentClose1;

                if (!String.IsNullOrEmpty(c.AddressClose1))
                    txtAddressClose1.Text = c.AddressClose1;

                if (!String.IsNullOrEmpty(c.MobileClose1))
                    txtMobileClose1.Text = c.MobileClose1;

                if (!String.IsNullOrEmpty(c.EndIdentity.ToString()))
                    txtEndIdentity.Text = MyDate.getDate(c.EndIdentity.ToString());




                lstAttendences.DataBind();
                lstAbsence.DataBind();
                lstLate.DataBind();
                lstStuName.SelectedIndex = 0;
                txtStdNumber.Text = "";


            }
            else
            {
                placeHolderError.Visible = true;
            }
        }
        else
        {
            lblmsg.Text = "الرجاء ادخال رقم الهوية او اسم الطالب ليتم البحث";
        }
    }

  //  protected void btnEdit_Click(object sender, EventArgs e)
  //  {
  //      string id = Request.QueryString["IdentityNumber"];
  //      var EmpInfo = (from f in OS.Students where f.IdentityNumber == txtIdentityNo.Text || f.IdentityNumber == lstStuName.SelectedValue || f.IdentityNumber == id select f).FirstOrDefault();



  //      if (!String.IsNullOrEmpty(txtIdentityDate.Text))
  //          if (CalendarIdentityDate.CultureName == "ar-SA")
  //              EmpInfo.IdentityDate = txtIdentityDate.Text;
  //      if (!String.IsNullOrEmpty(txtName.Text))
  //          EmpInfo.Name = txtName.Text;
  //      if (!String.IsNullOrEmpty(txtNationality.Text))
  //          EmpInfo.Nationality =txtNationality.Text;
  //      if (!String.IsNullOrEmpty(txtSpecification.Text))
  //          EmpInfo.Specification =txtSpecification.Text;
  //      if (!String.IsNullOrEmpty(txtIdentityNo1.Text))
  //          EmpInfo.IdentityNumber = txtIdentityNo1.Text;
  //      if (!String.IsNullOrEmpty(txtYearEntery.Text))
  //          EmpInfo.YearofEntry = txtYearEntery.Text;
  //      if (!String.IsNullOrEmpty(txtPassportNo.Text))
  //          EmpInfo.PassportNumber = txtPassportNo.Text;
  //      if (!String.IsNullOrEmpty(txtDOB.Text))
  //          if (CalendarDOB.CultureName == "ar-SA")
  //              EmpInfo.DOB = txtDOB.Text;
  //      if (!String.IsNullOrEmpty(txtRecordStudent.Text))
  //          EmpInfo.Record = txtRecordStudent.Text;
  //      if (!String.IsNullOrEmpty(txtState.Text))
  //          EmpInfo.ConstraintState = txtState.Text;
  //      if (!String.IsNullOrEmpty(txtIdentityType.Text))
  //          EmpInfo.IdentityType = txtIdentityType.Text;
  //      if (!String.IsNullOrEmpty(txtJoinedDate.Text))
  //          if (CalendarJoinedDate.CultureName == "ar-SA")
  //              EmpInfo.DateOfStart = txtJoinedDate.Text;
      
  //PlaceHolderSuccess.Visible = true;
  //      OS.SaveChanges();
      
  //  }
    protected void FillLateness()
    {
        //string id = Request.QueryString["IdentityNumber"];
        //var schoolid = info.getId();
        //var stdnumber = int.Parse(txtStdNumber.Text);
        //var c = (from k in OS.Students where k.SchoolId == schoolid && (k.IdentityNumber == lstStuName.SelectedValue || k.Id == stdnumber) select k).FirstOrDefault();

        //lstLateness.DataSource = c;
        //lstLateness.DataBind();
    }
    protected void FillAttendences()
    {
    //    string id = Request.QueryString["IdentityNumber"];
    //    var schoolid = info.getId();
    //    var stdnumber = int.Parse(txtStdNumber.Text);
    //    var c = (from k in OS.Students where k.SchoolId == schoolid && (k.IdentityNumber == lstStuName.SelectedValue || k.Id == stdnumber) select k).FirstOrDefault();

    //    lstAttendences.DataSource = c;
    //    lstAttendences.DataBind();
    }
    protected void FillAbsences()
    {
        //string id = Request.QueryString["IdentityNumber"];
        //var schoolid = info.getId();
        //var stdnumber = int.Parse(txtStdNumber.Text);
        //var c = (from k in OS.Students where k.SchoolId == schoolid && (k.IdentityNumber == lstStuName.SelectedValue || k.Id == stdnumber) select k).FirstOrDefault();

        //lstAbsences.DataSource = c;
        //lstAbsences.DataBind();
    }

    protected void btnok_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }
    public void ClearLabel()
    {
        
            txtNumber.Text = "";

       
            txtNationality.Text = "";

     
            txtIdentityDate.Text =  "";

        
            txtDOB.Text = "";

     
            txtIdentityNo1.Text = "";


     
            txtSpecification.Text = "";


            txtJoinedDate.Text = "";


            txtPassportNo.Text = "";
 
            txtRecordStudent.Text = "";
 
            txtState.Text = "";
 
            txtYearEntery.Text = "";
 
            txtIdentityType.Text = "";
 
            txtEducationalLevel.Text = "";
 
            txtClass.Text = "";
 
            txtSemester.Text = "";
 
            txtResidencyNo.Text = "";
 
            txtCountryBirth.Text = "";
 
            txtCityBirth.Text = "";
 
            txtOwnershipHousing.Text = "";
 
            txtBloodType.Text = "";
 
            txtAdministrativeRegion.Text = "";
 
            txtCity.Text = "";
 
            txtDistrict.Text = "";
 
            txtMainStreet.Text = "";
 
            txtSubStreet.Text = "";
 
            txtHouseNo.Text = "";

            txtEmail.Text = "";
 
            txtMailBox.Text = "";
 
            txtPostalCode.Text = "";
 
            txtFax.Text = "";
 
            txtAddressHoliday.Text = "";
 
            txtGuardianName.Text = "";
 
            txtGuardianNationality.Text = "";
 
            txtHomePhoneNo.Text = "";
 
            txtMobileNumber.Text = "";
 
            txtWorkPhoneNumber.Text = "";
 
            txtGuardianIdentityType.Text = "";
 
            txtGuardianIdentitySource.Text = "";
 
            txtDateIdentity.Text = "";
 
            txtRelativeRelation.Text = "";
 
            txtNameStudentClose.Text = "";
 
            txtAddressClose.Text = "";
 
            txtMobileClose.Text = "";
 
            txtNameStudentClose1.Text = "";
 
            txtAddressClose1.Text = "";
 
            txtMobileClose1.Text = "";
 
            txtEndIdentity.Text = "";

    }

  

    protected void lstAttendences_DataBinding(object sender, EventArgs e)
    {
        counter = 0;
        string id = Request.QueryString["IdentityNumber"];
        var schoolid = info.getId();
        var stdId = lstStuName.SelectedValue;
        var c = (from k in OS.StudentsAttendences where k.SchoolId == schoolid && (k.StudentId == stdId | k.StudentId==id) select k).ToList();

        lstAttendences.DataSource = c;

    }

    protected void lstLate_DataBinding(object sender, EventArgs e)
    {
        string id = Request.QueryString["IdentityNumber"];
        counter = 0;
        var schoolid = new SchoolInformation().getId();
        var stdId = lstStuName.SelectedValue;
        var lst = (from k in OS.StudentsLatenesses
                   join s in OS.Students on k.StudentId equals s.IdentityNumber
                   where k.SchoolId == schoolid && (s.IdentityNumber == stdId | s.IdentityNumber == id)

                   select new
                   {
                       s.Id,
                       s.Name,
                       k.Amount,

                   }).ToList();
        lstLate.DataSource = lst;
    }

    protected void lstAbsence_DataBinding(object sender, EventArgs e)
    {
        string id = Request.QueryString["IdentityNumber"];
        counter = 0;
        var schoolid = new SchoolInformation().getId();
        var stdId = lstStuName.SelectedValue;
        var lst = (from k in OS.StudentsAbsences
                   join s in OS.Students on k.StudentId equals s.IdentityNumber
                   where k.SchoolId == schoolid && (s.IdentityNumber == stdId | s.IdentityNumber==id)
                   select new
                   {
                       s.Id,
                       s.Name,
                       k.IsExcuse,

                   }).ToList();
        lstAbsence.DataSource = lst;
    }
}