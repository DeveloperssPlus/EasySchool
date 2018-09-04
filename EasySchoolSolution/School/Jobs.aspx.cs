using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class School_Jobs : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "Jobs";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstJobs.DataBind();
        }
    }
    
    protected void lstJobs_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

            PlaceHolder JobName = ((PlaceHolder)dataItem.FindControl("JobName"));
            Label job = ((Label)dataItem.FindControl("lbljob"));
        LinkButton btnEdit = ((LinkButton)dataItem.FindControl("btnEdit"));
        LinkButton btnSave = ((LinkButton)dataItem.FindControl("btnSave"));
        LinkButton btnCancel = ((LinkButton)dataItem.FindControl("btnCancel"));
        var btnPrint = dataItem.FindControl("btnPrint");
        LinkButton btnLock = ((LinkButton)dataItem.FindControl("btnLock"));
        DropDownList lstJobName=(DropDownList)dataItem.FindControl("lstJobName");

            if (e.CommandName == "btnEdit")
            {
                btnSave.Visible = true;
            btnCancel.Visible = true;
                btnEdit.Visible = false;
                job.Visible =  false;
            btnLock.Visible = false;
            btnPrint.Visible = false;
            var idd = e.CommandArgument.ToString();

            lstJobName.SelectedValue = (from k in km.Employees where k.IdentityNumber == idd select k.JobId).FirstOrDefault().ToString();
                JobName.Visible = true;
            }

        if (e.CommandName == "btnCancel")
        {
            btnSave.Visible = false;
            btnCancel.Visible = false;
            btnEdit.Visible = true;
            job.Visible = true;
           JobName.Visible = false;
            btnLock.Visible = true;
            btnPrint.Visible = true;
        }

        else if (e.CommandName == "btnSave")
            {
                var id = e.CommandArgument.ToString();
            var newjobid =int.Parse(lstJobName.SelectedValue);
            if(newjobid== 1 || newjobid == 2 || newjobid == 3 || newjobid == 4)
            {
                var emp = (from k in km.Employees where k.JobId == newjobid select k).FirstOrDefault();
                if(emp!=null)
                emp.JobId = 5;
            }
                var c = (from k in km.Employees where k.IdentityNumber == id select k).FirstOrDefault();

                c.JobId = int.Parse(lstJobName.SelectedValue);

                km.SaveChanges();

                lstJobs.DataBind();
           
            }
        else
        if(e.CommandName== "lock")
        {
            var idd = e.CommandArgument.ToString();
            var result=EmployeeManager.createAccount(idd);
            if(result==1)
                ClientScript.RegisterStartupScript(this.GetType(), "success", "<script> addSuccess('تم انشاء الحساب بنجاح'); </script>", false);
            else
            {
             ClientScript.RegisterStartupScript(this.GetType(), "success", "<script> addfalied('حدث خطأ. الرجاء المحاولة فيما بعد.'); </script>", false);

            }
        }
        else
        if (e.CommandName == "print")
        {
            var jobid= int.Parse(e.CommandArgument.ToString());

            var filename = (from k in km.Jobs where k.Id == jobid select k.FileLocation).FirstOrDefault();
            if(filename!=null)
            Response.Redirect("~/" + filename);  
        }
    }


    protected void lstJobs_DataBinding(object sender, EventArgs e)
    {
        var schoolid = new SchoolInformation().getId();

        var myJobs = (from pd in km.Employees join
                      kd in km.Jobs on pd.JobId equals kd.Id
                      where pd.SchoolId== schoolid
                      orderby pd.Name
                      select new
                      {
                          pd.IdentityNumber,
                          pd.Name,
                          pd.JobId,
                          JobName=kd.Name,
                          jobfile =  kd.FileLocation
    }).ToList();
        lstJobs.DataSource = myJobs;
    }

 
}