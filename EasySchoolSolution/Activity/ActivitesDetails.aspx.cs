using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Temp_Student_ActivitesDetails : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ActivitesDetails";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
      
        if (!IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {
                FilllListStudent();
                int activeid = int.Parse(Request.QueryString["Id"].ToString());

                var ta = (from k in km.StudentActivities
                          where k.Id == activeid
                          select k).FirstOrDefault();

                txtFrom.Text = MyDate.getDate(ta.DateFrom.ToString());
                txtTo.Text = MyDate.getDate(ta.DateTo.ToString());
                txtActivity.Text = ta.Activity;
                txtFieldName.Text = ta.FieldName;
                txtSeat.Text = ta.Seat;


            }
            LstStudent.DataBind();
        }
    }
    public void FilllListStudent()
    {
      
        int id = int.Parse(Request.QueryString["Id"].ToString());
        var student = (from j in km.StudentsInActivities
                       join ee in km.Students on j.StudentId equals ee.IdentityNumber
                       where j.ActiviteId == id
                        select new
                        {

                            ee.Name,
                            j.StudentId,
                            j.ActiviteId
                     
                            //Name = (from d in km.Students where d.IdentityNumber == j.StudentId select d.Name).FirstOrDefault()
                        }).ToList();


        LstStudent.DataSource = student;
        LstStudent.DataBind();
    }
   
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("ActivitesDisplay.aspx");
    }



    protected void btnsave_Click(object sender, EventArgs e)
    {
        foreach (ListViewItem item in LstStudent.Items)
        {
            
            CheckBox saturday = (CheckBox)item.FindControl("ckbSaturday");
            CheckBox sunday = (CheckBox)item.FindControl("ckbSunday");
            CheckBox monday = (CheckBox)item.FindControl("ckbMonday");
            CheckBox tuesday = (CheckBox)item.FindControl("ckbTuesday");
            CheckBox wednesday = (CheckBox)item.FindControl("ckbWednesday");
            string studentid = (((HiddenField)item.FindControl("StudentId")).Value).ToString();

            int activeid = int.Parse(Request.QueryString["Id"].ToString());

            var sat = (from k in km.StudentsInActivities
                       where k.ActiviteId == activeid &&  k.StudentId== studentid
                       select k).FirstOrDefault();

            if (saturday.Checked)
            {
                sat.Saturday = true;
            }
             if (sunday.Checked)
            {
                sat.Sunday = true;

            }
             if(monday.Checked)
            {
                sat.Monday = true;
            }
             if (tuesday.Checked)
            {
                sat.Tuesday = true;
            }
             if (wednesday.Checked)
            {
                sat.Wednesday = true;
            }
        
          
            km.SaveChanges();
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' !! تمت الاضافة بنجاح'); </script>", false);

           
        }
    }

    protected void ckbSaturday_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = (CheckBox)sender;
        ListViewDataItem item = (ListViewDataItem)chk.NamingContainer;
    }
}