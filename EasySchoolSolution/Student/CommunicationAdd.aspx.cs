using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_CommunicationAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "CommunicationAdd";
        base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Communication communucation = new Communication();
     
        if (!String.IsNullOrEmpty(txtContactNo.Text))
            communucation.ContactNo = txtContactNo.Text;


        int SchoolID = SchoolInfo.getId();
        communucation.SchoolId = SchoolID;

        communucation.SemesterId = MyDate.getCurrentSemesterId();

        TimeSpan Timee = Convert.ToDateTime(txtTime.Text).TimeOfDay;
         communucation.Time = Timee;

        if (!String.IsNullOrEmpty(txtReason.Text))
            communucation.Reason = txtReason.Text;

        if (!String.IsNullOrEmpty(txtReply.Text))
            communucation.Reply = txtReply.Text;

        km.Communications.Add(communucation);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' !! تمت الاضافة بنجاح'); </script>", false);

    }
}