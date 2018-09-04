using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Communication_TasksDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "TasksDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LstTask.DataBind();
      
        }
    }




    protected void LstTask_DataBinding(object sender, EventArgs e)
    {
        var userId = Membership.GetUser().UserName;
        SchoolInformation info = new SchoolInformation();
        var sememterId = MyDate.getCurrentSemesterId();
        int schoolId=info.getId();
        var lstTask = (from k in km.Tasks where k.SchoolId == schoolId && k.SemesterId == sememterId orderby k.Date descending select new
        {
            k.Id,
            k.Title,
            k.IncommingId,
            k.TypeId,
            k.Description,
            k.Date,
            EmpName = (from ss in km.Employees where ss.IdentityNumber == k.EmployeeId select ss.Name).FirstOrDefault()
        }).ToList();
        LstTask.DataSource = lstTask;
    }


    protected void LstTask_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        if (e.CommandName == "details")
        {
            int idd = int.Parse(e.CommandArgument.ToString());

            var task = (from k in km.Tasks
                        where k.Id == idd
                        select k).FirstOrDefault();
            lblTitle.Text = task.Title;
            lblDate.Text = MyDate.getDate(task.Date.ToString());
            lblDescription.Text = task.Description;
            if(task.IncommingId != null)
            {

         
            lblIncoming.Text = (from k in km.Incomings where k.Id == task.IncommingId select k.Number).FirstOrDefault();
            }
            lblLocation.Text = task.Location;
            lblTime.Text =((DateTime) task.Date).ToString("mm:ss tt");
            lblTitle2.Text = task.Title;

            lblType.Text = ConstantManager.getConstant((int)task.Id);

            lstEmployee.DataSource = (from k in km.Employees
                                      join ss in km.UsersTasks on k.IdentityNumber equals ss.UserId
                                      where ss.IsEmployee == true
                                      orderby k.Name
                                      select k.Name).ToList();

            lstEmployee.DataBind();

            lstStd.DataSource = (from k in km.Students
                                      join ss in km.UsersTasks on k.IdentityNumber equals ss.UserId
                                      where ss.IsEmployee == false
                                      orderby k.Name
                                      select k.Name).ToList();
            lstStd.DataBind();

            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);
        }



    }
}