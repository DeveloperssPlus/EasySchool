using Aspose.Pdf;
using Aspose.Pdf.Devices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_IncomingAdd : MyPermisionPage
{
    OnlineSchoolEntities ose = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();


    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "IncomingAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlType.DataBind();
            ddlFileAttach.DataBind();
            ddlFrom.DataBind();
            Calendar1.DataBind();
            FillEmpName();
            FillListJopName();
            FillSpecification();

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                PlaceHolder2.Visible = false;
                var c = (from k in ose.Incomings where k.Id == id select k).FirstOrDefault();

                txtIncomingID.Text = c.Number;
                txtFileNumber.Text = c.FileNumber.ToString();
                txtDate.Text = ((DateTime)c.Date).ToString("yyyy/MM/dd");
                ddlFrom.Text = c.Type.ToString();

                ddlType.SelectedValue = c.Type.ToString();
                ddlFileAttach.Text = c.Id.ToString();
                txtSubject.Text = c.Subject;

                if(c.FileLocation != null)
                pdfFrame.Attributes.Add("src", "~/" + c.FileLocation);

                btnAdd.Text = "تعديل الوارد";
            }
            else
            {
                btnAdd.Text = "تسجيل الوارد";
            }
        }
    }

    public void FillListJopName()
    {
        var jobs = (from I in ose.Jobs
                    where I.Name != null
                    select I).ToList();
        LstJopEmployees.DataSource = jobs;
        LstJopEmployees.DataBind();
    }

    public void FillEmpName()
    {
        int schoolId = info.getId();
        var Emp1 = (from II in ose.Employees
                    where II.Name != null && II.SchoolId == schoolId
                    select II).ToList();

        LstEmp.DataSource = Emp1;
        LstEmp.DataBind();
        
    }

    public void FillSpecification()
    {
        var Emp1 = (from II in ose.Employees
                    where II.Specification != null && II.Specification != ""
                    select new
                    {
                        II.Specification
                    }).ToList().Distinct();

        LstSpecification.DataSource = Emp1;
        LstSpecification.DataBind();
    }

    protected void clear()
    {
        txtIncomingID.Text = "";
        txtFileNumber.Text = "";
        txtDate.Text = "";
   //     txtFrom.Text = "";
        ddlType.SelectedIndex = -1;
        ddlFileAttach.SelectedIndex = -1;
        txtSubject.Text = "";
        pdfFrame.Attributes.Add("src", "");

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int SchoolID = info.getId();
        if(btnAdd.Text== "تسجيل الوارد")
        {
            Incoming inc = new Incoming();

            inc.Number = txtIncomingID.Text;
            //  inc.Date = Convert.ToDateTime(txtDate.Text);
     
            if (Calendar1.CultureName == "ar-SA")
            {
                inc.Date = MyDate.convertHijriToGregorian(txtDate.Text);
            }
            else
            {
                inc.Date = Convert.ToDateTime(txtDate.Text);
            }
     
            inc.Source =int.Parse( ddlFrom.SelectedValue);
            inc.Subject = txtSubject.Text;
            inc.SemesterId = MyDate.getCurrentSemesterId();
            inc.FileNumber = txtFileNumber.Text;
            inc.SchoolId = SchoolID;
            inc.Type = int.Parse(ddlType.SelectedValue);
            inc.Attachment = int.Parse(ddlFileAttach.SelectedValue);
            inc.IsDeleted = false;
                
  
            var fileLocation=pdfFrame.Attributes["src"];
            ose.Incomings.Add(inc);
            ose.SaveChanges();

            if (!String.IsNullOrEmpty(fileLocation))
            {
            inc.FileLocation = fileLocation.Substring(2, fileLocation.Length - 2);

                var path = MapPath("~/");
                Document pdfDocument = new Document(path + "testImage.pdf");
   
                Resolution resolution = new Resolution(300);
                JpegDevice jpegDevice = new JpegDevice(resolution, 100);

                var x = pdfDocument.Pages.Count;

                for (int i = 1; i <= x; ++i)
                {
                    string filename = "images/Incomings/"+Guid.NewGuid() + ".jpg";
                    jpegDevice.Process(pdfDocument.Pages[i], path + filename);

                    IncomingsImage img = new IncomingsImage();
                    img.IncomingId = inc.Id;
                    img.Image = filename;
                    ose.IncomingsImages.Add(img);
                }
            }

            ose.SaveChanges();

            /******************************************************************************************************************/
                List<Employee> empLst = new List<Employee>();
                OnlineSchoolEntities km = new OnlineSchoolEntities();

            if(RadioType.SelectedValue == "1")
            {
                empLst = (from k in km.Employees where k.SchoolId == SchoolID select k).ToList();
            }
            else
            if (RadioType.SelectedValue == "2")
            {

                foreach (ListViewItem item in LstJopEmployees.Items)
                {
                    CheckBox che = (CheckBox)item.FindControl("chkRow");
                    if (che.Checked)
                    {
                        var jobid = int.Parse(((HiddenField)item.FindControl("HiddenField2")).Value);

                        foreach (var emp in km.Employees)
                        {
                            if (emp.JobId == jobid && emp.SchoolId == SchoolID)
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
                            if (emp.Specification == specification && emp.SchoolId == SchoolID)
                                empLst.Add(emp);
                        }
                    }
                }
            }
                foreach (Employee emp in empLst.Distinct())
                {
                    if (emp.SchoolId == SchoolID)
                    {
                        UsersGeneralization userGeneralization = new UsersGeneralization();
                        userGeneralization.UserId = emp.IdentityNumber;
                        userGeneralization.IncomingId = inc.Id;
                        userGeneralization.isSeen = false;

                        km.UsersGeneralizations.Add(userGeneralization);
                        km.SaveChanges();
                    //    lblerror.Text = "تم الاضافة بنجاح";
                    }
                }

            /*******************************************************************************************************************/

            //lblerror.Text = "تمت اضافة الوارد بنجاح";
            //IncId.Value = (inc.Id).ToString();
            // lnkTask.NavigateUrl = "~/Communication/TaskAdd.aspx?type=Incoming&typeId=" + inc.Id;
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);
            clear();
        }
        else
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            var c = (from k in ose.Incomings where k.Id == id select k).FirstOrDefault();

            c.Number = txtIncomingID.Text;
            c.FileNumber =txtFileNumber.Text;
            //   c.Date = Convert.ToDateTime(txtDate.Text);
            try
            {
                if (Calendar1.CultureName == "ar-SA")
                {
                    c.Date = MyDate.convertHijriToGregorian(txtDate.Text);
                }
                else
                {
                    c.Date = Convert.ToDateTime(txtDate.Text);
                }
            }catch(Exception ex)
            {
                txtDate.Text = "";
                lblDateError.Text = "الرجاء ادخال تاريخ صحيح";
                return;
            }
            c.Source =int.Parse( ddlFrom.SelectedValue);
            c.Subject = txtSubject.Text;
            c.Type = int.Parse(ddlType.SelectedValue);
            c.Attachment = int.Parse(ddlFileAttach.SelectedValue);

            var fileLocation = pdfFrame.Attributes["src"];
            if (!String.IsNullOrEmpty(fileLocation))
                c.FileLocation = fileLocation.Substring(2, fileLocation.Length - 2);
            ose.SaveChanges();
            //PlaceHolderSuccess.Visible = true;
            //lblerror.Text = "تم تعديل الوارد بنجاح";
            //IncId.Value = (c.Id).ToString();
            //  lnkTask.NavigateUrl = "~/Communication/TaskAdd.aspx?type=Incoming&typeId=" + c.Id;
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);
        }
        
    }

    protected void btnLoad_Click(object sender, EventArgs e)
    {
        if (fuPdf.HasFiles)
        {
            var file = fuPdf.PostedFile;
            //if (fuPdf.PostedFile.ContentType.Contains("image"))
            //{
                String[] sp = file.FileName.Split('.');
                string fname = Guid.NewGuid() + "." + sp[sp.Length - 1];
                file.SaveAs(MapPath("~/Pdfs/" + fname));
            pdfFrame.Attributes.Add("src", "~/Pdfs/" + fname);
      
          //  }
        }
        
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var select = RadioType.SelectedValue;

        if (select == "0")
        {
            PlaceHolder1.Visible = false;
        }
         else
            if (select == "2")
        {
            PlaceHolder1.Visible = true;
        }
        else
            if (select == "1")
                PlaceHolder1.Visible = false;

    }

    

    protected void btnno_Click(object sender, EventArgs e)
    {
     
    }

    protected void btnok_Click(object sender, EventArgs e)
    {
     // Response.Redirect(  "~/Communication/TaskAdd.aspx?type=Incoming&typeId=" + IncId.Value);
    }
}