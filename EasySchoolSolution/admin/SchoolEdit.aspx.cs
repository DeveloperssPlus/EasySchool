using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_SchoolEdit : System.Web.UI.Page
{OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["SchoolId"] != null)
        {

        var schoolId = int.Parse(Request.QueryString["SchoolId"]);
            var school = (from k in km.Schools where k.Id == schoolId select k).FirstOrDefault();
        if (!IsPostBack)
        {
            ddlSchooltype.DataBind();
            ddlStudyType.DataBind();
        
         
          
            if (!String.IsNullOrEmpty(school.Name))
                txtSchoolName.Text  = school.Name;
            lblSchoolName.Text=school.Name;
            if (!String.IsNullOrEmpty(school.Area))
                txtArea.Text  =school.Area ;
           
            if (!String.IsNullOrEmpty(school.Address))
                txtaddress.Text =school.Address ;
            if (!String.IsNullOrEmpty(school.EducationalLevel))
                txtEducationalLevel.Text  =  school.EducationalLevel;
            if (!String.IsNullOrEmpty(school.Email))
                txtemail.Text =school.Email ;
            if (!String.IsNullOrEmpty(school.GovernmentBuildingsNo.ToString()))
                txtGovernmentBuildingsNo.Text= school.GovernmentBuildingsNo.ToString() ;
            if (!String.IsNullOrEmpty(school.Office))
                txtOffice.Text  =school.Office ;
            if (!String.IsNullOrEmpty(school.RentedBuildingsNo.ToString()))
                txtRentedBuildingsNo.Text = school.RentedBuildingsNo.ToString();
            
            if (!String.IsNullOrEmpty(school.ThePhone))
                txtphone.Text=school.ThePhone ;
            if (!String.IsNullOrEmpty(school.TotalClass.ToString()))
                txttotalclass.Text =school.TotalClass.ToString() ;
            if (!String.IsNullOrEmpty(school.TotalStaff.ToString()))
                txttotalStaff.Text =school.TotalStaff.ToString();
            if (!String.IsNullOrEmpty(school.TotalStudents.ToString()))
                txttotalStudent.Text=school.TotalStudents.ToString();
            if (!String.IsNullOrEmpty(school.YearFounded))
                txtYearFounded.Text=school.YearFounded ;
            if (!String.IsNullOrEmpty(school.Type.ToString()))
                ddlStudyType.Text = school.Type.ToString();
            if (!String.IsNullOrEmpty(school.Gender.ToString()))
                ddlSchooltype.SelectedValue = school.Gender.ToString();
            if (!String.IsNullOrEmpty(school.NumberOfSecretary.ToString()))
                ddlSecretaryNumber.SelectedValue  = school.NumberOfSecretary.ToString();

                if (!String.IsNullOrEmpty(school.logo))
                {
                    ImgLogo.ImageUrl = "/" + school.logo;
                    ImgLogo.DataBind();
                }
            }
        }
       
    }



    protected void btnEdit_Click(object sender, EventArgs e)
    {
   

        var schoolId = int.Parse(Request.QueryString["SchoolId"]);
       
            var school = (from k in km.Schools where k.Id == schoolId select k).FirstOrDefault();

        if (!String.IsNullOrEmpty(txtSchoolName.Text))
            school.Name = txtSchoolName.Text;
        if (!String.IsNullOrEmpty(txtArea.Text))
            school.Area = txtArea.Text;
        if (!String.IsNullOrEmpty(txtaddress.Text))
            school.Address = txtaddress.Text;
        if (!String.IsNullOrEmpty(txtEducationalLevel.Text))
            school.EducationalLevel = txtEducationalLevel.Text;
        if (!String.IsNullOrEmpty(txtemail.Text))
            school.Email = txtemail.Text;
        if (!String.IsNullOrEmpty(txtGovernmentBuildingsNo.Text))
            school.GovernmentBuildingsNo = int.Parse(txtGovernmentBuildingsNo.Text);
        if (!String.IsNullOrEmpty(txtOffice.Text))
            school.Office = txtOffice.Text;
        if (!String.IsNullOrEmpty(txtRentedBuildingsNo.Text))
            school.RentedBuildingsNo = int.Parse(txtRentedBuildingsNo.Text);
        if (!String.IsNullOrEmpty(txtphone.Text))
        school.ThePhone = txtphone.Text;


        if (fuImage.HasFiles)
            {
                var file = fuImage.PostedFile;
                if (fuImage.PostedFile.ContentType.Contains("image"))
                {
                    String[] sp = file.FileName.Split('.');
                    string fname = Guid.NewGuid() + "." + sp[sp.Length - 1];
                    file.SaveAs(MapPath("~/images/SchoolsLogoes/" + fname));
                    school.logo = "images/SchoolsLogoes/" + fname;

                ImgLogo.ImageUrl = "/" + school.logo;
                ImgLogo.DataBind();
            }
            }


        if (!String.IsNullOrEmpty(txttotalclass.Text))
            school.TotalClass = int.Parse(txttotalclass.Text);
        if (!String.IsNullOrEmpty(txttotalStaff.Text))
            school.TotalStaff = int.Parse(txttotalStaff.Text);
        if (!String.IsNullOrEmpty(txttotalStudent.Text))
            school.TotalStudents = int.Parse(txttotalStudent.Text);
        if (!String.IsNullOrEmpty(txtYearFounded.Text))
            school.YearFounded = txtYearFounded.Text;
        if (ddlStudyType.SelectedValue != "")
            school.Type = int.Parse(ddlStudyType.SelectedValue);
        if (ddlSchooltype.SelectedValue != "")
            school.Gender = int.Parse(ddlSchooltype.SelectedValue);
        if (ddlSecretaryNumber.SelectedValue != "")
            school.NumberOfSecretary = int.Parse(ddlSecretaryNumber.SelectedValue);
               
             
                km.SaveChanges();
           ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تم تعديل بيانات المدرسة بنجاح'); </script>", false);

        //PlaceHolderError.Visible = false;
        //PlaceHolderSuccess.Visible = true;

    }

}
