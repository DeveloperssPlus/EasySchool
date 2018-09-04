using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_jhj : MyPermisionPage
{
    OnlineSchoolEntities OS = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "jhj";
        base.OnPreInit(e);
    }
    //c = (from k in OS.Employees where k.SchoolId == schoolid &&
    //     (k.IdentityNumber == lstEmpName.SelectedValue || k.IdentityNumber == txtIdentityNo.Text) 
    //     select k).FirstOrDefault();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillLoad();
            FillEmployeeName();
            lstEmpName.Items.Insert(0, new ListItem("اسم الموظف..", "select"));
        }

    }
    protected void FillLateness()
    {
        string id = Request.QueryString["IdentityNumber"];

        var c = (from k in OS.Latenesses where k.EmployeeId == txtIdentityNo.Text || k.EmployeeId == lstEmpName.SelectedValue || k.EmployeeId == id orderby k.Date descending select k).ToList();

        lstLateness.DataSource = c;
        lstLateness.DataBind();
    }
    protected void FillPermission()
    {
        string id = Request.QueryString["IdentityNumber"];

        var c = (from k in OS.Permissions where k.EmployeeId == txtIdentityNo.Text || k.EmployeeId == lstEmpName.SelectedValue || k.EmployeeId == id orderby k.Date descending select k).ToList();

        lstPermission.DataSource = c;
        lstPermission.DataBind();
    }
    protected void FillAbsences()
    {
        string id = Request.QueryString["IdentityNumber"];

        var c = (from k in OS.Absences where k.EmployeeId == txtIdentityNo.Text || k.EmployeeId == lstEmpName.SelectedValue || k.EmployeeId == id
                 orderby k.Date descending select k).ToList();

        lstAbsences.DataSource = c;
        lstAbsences.DataBind();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        if (txtIdentityNo.Text != null || lstEmpName.Text != null)
        {
            var c = (from k in OS.Employees where k.SchoolId == schoolid && (k.IdentityNumber == txtIdentityNo.Text || k.IdentityNumber == lstEmpName.SelectedValue) select k).FirstOrDefault();
            if (c != null)
            {
                placeHolderError.Visible = false;
                if (c.JobId != null)
                {

                    if (c.JobId == 5)
                    {
                        var m = (from k in OS.Teachers where k.SchoolId == schoolid && (k.IdentityNumber == txtIdentityNo.Text || k.IdentityNumber == lstEmpName.SelectedValue) select k).FirstOrDefault();
                        if (m != null)
                        {

                        if (!String.IsNullOrEmpty(m.MailBox))
                            txtMailBox.Text = m.MailBox;
                        if (!String.IsNullOrEmpty(m.Address))
                            txtaddres.Text = m.Address;
                        if (!String.IsNullOrEmpty(m.SonsYounger24))
                            txtsonles24.Text = m.SonsYounger24;
                        if (!String.IsNullOrEmpty(m.SonsYounger6))
                            txtsonLess6.Text = m.SonsYounger6;
                        if (!String.IsNullOrEmpty(m.SonsOLder24))
                            txtsonold24.Text = m.SonsOLder24;
                        if (!String.IsNullOrEmpty(m.BirthLocation))
                            txtbirthLocation.Text = m.BirthLocation;
                        if (m.BirthDate!=null)
                             txtBod.Text = MyDate.getDate(m.BirthDate+"");
                        if (!String.IsNullOrEmpty(m.PostalCode))
                            txtpostCard.Text = m.PostalCode;
                        if (!String.IsNullOrEmpty(m.Sons))
                            txtsons.Text = m.Sons;
                        if (!String.IsNullOrEmpty(m.Status))
                            txtstate.Text = m.Status;
                        placeEmpInfo.Visible = true;
                        }else
                        {
                            placeEmpInfo.Visible = false;
                        }
                    }
                    else
                        placeEmpInfo.Visible = false;

                    var JobName = (from k in OS.Jobs where k.Id == c.JobId select k).FirstOrDefault();
                    if (!String.IsNullOrEmpty(JobName.Name))
                    {
                        lblJobName.Text = JobName.Name;
                        lblJobName.Visible = true;
                    }
                }

                txtIdentityNumber.Text = c.IdentityNumber;
                lnkEdit.NavigateUrl = "~/Manager/EmployeeAdd.aspx?id=" + c.IdentityNumber;
                lnkEdit.Visible = true;
                if (!String.IsNullOrEmpty(c.Name))
                    txtName.Text = c.Name;

                if (!String.IsNullOrEmpty(c.Nationality))
                    txtNationality.Text = c.Nationality;

                if (c.IdentityDate != null)
                        txtIdentityDate.Text = MyDate.getDate(c.IdentityDate.ToString());

                if (!String.IsNullOrEmpty(c.Qualification))
                    txtQualification.Text = c.Qualification;

                if (c.YearofQualification != null)
                    txtYearQualification.Text = c.YearofQualification.ToString();

                if (!String.IsNullOrEmpty(c.Specification))
                    txtSpecification.Text = c.Specification;

                if (c.JobStartMinistry != null)
                        txtJobStartMinistry.Text = MyDate.getDate(c.JobStartMinistry.ToString());

                if (c.JobStartSchool != null)
                        txtJobStartSchool.Text = MyDate.getDate(c.JobStartSchool.ToString());

                if (c.JobStartCurrent != null)
                        txtJobStartCurrent.Text = MyDate.getDate(c.JobStartCurrent.ToString());

                if (!String.IsNullOrEmpty(c.Level))
                    txtLevel.Text = c.Level;

                if (c.Degree != null)
                    txtDegree.Text = c.Degree.ToString();

                if (!String.IsNullOrEmpty(c.PhoneHome))
                    txtPhoneHome.Text = c.PhoneHome;

                if (!String.IsNullOrEmpty(c.Mobile))
                    txtMobile.Text = c.Mobile;

                if (!String.IsNullOrEmpty(c.Email))
                    txtEmail.Text = c.Email;

                if (!String.IsNullOrEmpty(c.Comments))
                    txtComments.Text = c.Comments;
                if (!String.IsNullOrEmpty(c.Name))
                {
                    lblEmpName.Text = c.Name;
                    lblEmpName.Visible = true;
                }

                FillLateness();
                FillAbsences();
                FillPermission();
            }
            else
            {
                placeHolderError.Visible = true;
            }
        }

        lstEmpName.SelectedIndex = 0;
        txtIdentityNo.Text = "";
    }
    public void FillLoad()
    {
        var schoolid = info.getId();
        string id = Request.QueryString["IdentityNumber"];
        var c = (from k in OS.Employees where k.IdentityNumber == id select k).FirstOrDefault();
        if (id != null)
        {
            if (c != null)
            {
                placeHolderError.Visible = false;
                if (c.JobId != null)
                {
                    if (c.JobId == 5)
                    {
                        var m = (from k in OS.Teachers where k.SchoolId == schoolid && k.IdentityNumber == id select k).FirstOrDefault();
                        if (m != null)
                        {

                        if (!String.IsNullOrEmpty(m.MailBox))
                            txtMailBox.Text = m.MailBox;
                        if (!String.IsNullOrEmpty(m.Address))
                            txtaddres.Text = m.Address;
                        if (!String.IsNullOrEmpty(m.SonsYounger24))
                            txtsonles24.Text = m.SonsYounger24;
                        if (!String.IsNullOrEmpty(m.SonsYounger6))
                            txtsonLess6.Text = m.SonsYounger6;
                        if (!String.IsNullOrEmpty(m.SonsOLder24))
                            txtsonold24.Text = m.SonsOLder24;
                        if (!String.IsNullOrEmpty(m.BirthLocation))
                            txtbirthLocation.Text = m.BirthLocation;
                        if (m.BirthDate!=null)
                                txtBod.Text = MyDate.getDate(m.BirthDate+"");
                        if (!String.IsNullOrEmpty(m.PostalCode))
                            txtpostCard.Text = m.PostalCode;
                        if (!String.IsNullOrEmpty(m.Sons))
                            txtsons.Text = m.Sons;
                        if (!String.IsNullOrEmpty(m.Status))
                            txtstate.Text = m.Status;
                        placeEmpInfo.Visible = true;
                        }
                        else
                        {
                            placeEmpInfo.Visible = false;

                        }
                    }
                    else
                        placeEmpInfo.Visible = false;


                    var JobName = (from k in OS.Jobs where k.Id == c.JobId select k).FirstOrDefault();
                    if (!String.IsNullOrEmpty(JobName.Name))
                    {
                        lblJobName.Text = JobName.Name;
                        lblJobName.Visible = true;
                    }
                }

                txtIdentityNumber.Text = c.IdentityNumber;
                lnkEdit.NavigateUrl = "~/Manager/EmployeeAdd.aspx?id=" + c.IdentityNumber;
                lnkEdit.Visible = true;


                if (!String.IsNullOrEmpty(c.Name))
                    txtName.Text = c.Name;


                if (!String.IsNullOrEmpty(c.Nationality))
                    txtNationality.Text = c.Nationality;

                if (c.IdentityDate != null)
                        txtIdentityDate.Text = MyDate.getDate(c.IdentityDate.ToString());

                if (!String.IsNullOrEmpty(c.Qualification))
                    txtQualification.Text = c.Qualification;

                if (c.YearofQualification != null)
                    txtYearQualification.Text = c.YearofQualification.ToString();

                if (!String.IsNullOrEmpty(c.Specification))
                    txtSpecification.Text = c.Specification;

                if (c.JobStartMinistry != null)
                        txtJobStartMinistry.Text = MyDate.getDate(c.JobStartMinistry.ToString());

                if (c.JobStartSchool != null)
                        txtJobStartSchool.Text = MyDate.getDate(c.JobStartSchool.ToString());

                if (c.JobStartCurrent != null)
                        txtJobStartCurrent.Text = MyDate.getDate(c.JobStartCurrent.ToString());

                if (!String.IsNullOrEmpty(c.Level))
                    txtLevel.Text = c.Level;

                if (c.Degree != null)
                    txtDegree.Text = c.Degree.ToString();

                if (!String.IsNullOrEmpty(c.PhoneHome))
                    txtPhoneHome.Text = c.PhoneHome;

                if (!String.IsNullOrEmpty(c.Mobile))
                    txtMobile.Text = c.Mobile;

                if (!String.IsNullOrEmpty(c.Email))
                    txtEmail.Text = c.Email;

                if (!String.IsNullOrEmpty(c.Comments))
                    txtComments.Text = c.Comments;
                if (!String.IsNullOrEmpty(c.Name))
                {
                    lblEmpName.Text = c.Name;
                    lblEmpName.Visible = true;
                }

                FillLateness();
                FillAbsences();
                FillPermission();
            }
        }
    }
    public void FillEmployeeName()
    {
        SchoolInformation schInfo = new SchoolInformation();
        var schoolid = schInfo.getId();
        var EmpName = (from k in OS.Employees where k.SchoolId == schoolid orderby k.Name select k).ToList();
        lstEmpName.DataSource = EmpName;
        lstEmpName.DataValueField = "IdentityNumber";
        lstEmpName.DataTextField = "Name";
        lstEmpName.DataBind();
    }
  
    protected void btnok_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }
}