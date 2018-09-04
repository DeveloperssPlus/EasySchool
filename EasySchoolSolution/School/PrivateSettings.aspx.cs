using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class School_PrivateSettings : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "PrivateSettings";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillEducationalLeaderLabel();
            ddlActivity.DataBind();
            FillSchoolInfo();
            lstActive.DataBind();

            var schoolId = info.getId();
            txtTimeBegin.Text = (from k in km.Schools where k.Id == schoolId select k.TimeStartWork).FirstOrDefault().ToString();
            txtTimeEnd.Text = (from k in km.Schools where k.Id == schoolId select k.TimeEndWork).FirstOrDefault().ToString();

            txtVacation.Text= (from k in km.Schools where k.Id == schoolId select k.VacationNumber).FirstOrDefault().ToString();
                var code= (from k in km.Schools where k.Id == schoolId select k.OutcomingCode).FirstOrDefault();
            if (code != null)
                txtOutcoming.Text = code.ToString();
        }

     
    }
    protected void FillSchoolInfo()
    {
        int SchoolID = info.getId();
        var c = (from k in km.Schools where k.Id == SchoolID select k).FirstOrDefault();

        lblSchoolID.Text = c.Id.ToString();
        lblSchoolName.Text = c.Name;

        if (!String.IsNullOrEmpty(c.Gender.ToString()))
        {
            var Gender=(from k in km.Constants where k.Id == c.Gender select k).FirstOrDefault();
            lblSchoolType.Text = Gender.value.ToString();
        }
        else
            lblSchoolType.Text = "لم يحدد";

        if (!String.IsNullOrEmpty(c.NumberOfSecretary.ToString()))
            lblAgentsNumber.Text = c.NumberOfSecretary.ToString();
        else
            lblAgentsNumber.Text = "لم يحدد";

        if (!String.IsNullOrEmpty(c.Type.ToString()))
        {
            var StudyType = (from k in km.Constants where k.Id == c.Type select k).FirstOrDefault();
            lblStudyType.Text = StudyType.value.ToString();
        }
        else
            lblStudyType.Text = "لم يحدد";
    }

    protected void FillEducationalLeaderLabel()
    {

        SchoolInformation SchInfo = new SchoolInformation();
        if (!String.IsNullOrEmpty(SchInfo.getSchoolManager()))
        {
            lblEducationalLeader.Text = SchInfo.getSchoolManager();
        }

        else
            lblEducationalLeader.Text = "لم يحدد";

        if (!String.IsNullOrEmpty(SchInfo.getUndersecretaryEducationalAffairs()))
        {
            lblUndersecretaryEducationalAffairs.Text = SchInfo.getUndersecretaryEducationalAffairs();
        }
        else
            lblUndersecretaryEducationalAffairs.Text = "لم يحدد";


        if (!String.IsNullOrEmpty(SchInfo.getUndersecretarySchoolAffairs()))
        {
            lblUndersecretarySchoolAffairs.Text = SchInfo.getUndersecretarySchoolAffairs();
        }
        else
            lblUndersecretarySchoolAffairs.Text = "لم يحدد";


        if (!String.IsNullOrEmpty(SchInfo.getUndersecretaryStudentAffairs()))
        {
            lblUndersecretaryStudentAffairs.Text = SchInfo.getUndersecretaryStudentAffairs();
        }
        else
            lblUndersecretaryStudentAffairs.Text = "لم يحدد";

    }

    protected void btnSaveActivity_Click(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();

        Schedual activity = new Schedual();
        activity.type = int.Parse(ddlActivity.SelectedValue);
        activity.Name = txtActivityName.Text;
        activity.Time = Convert.ToDateTime(txtActivityTime.Text).TimeOfDay;
        activity.Period = new TimeSpan(0, int.Parse(txtPeriod.Text), 0);
        activity.SchoolId = info.getId();

        km.Scheduals.Add(activity);
        km.SaveChanges();
        lstActive.DataBind();

     //   lblmsg.Text = "تم اضافة النشاط";
        lstActive.DataBind();

        var nxt = activity.Time + activity.Period;
        txtActivityTime.Text = Convert.ToDateTime(nxt.ToString()).ToString("mm:ss tt");
        txtActivityName.Text = "";
        txtPeriod.Text = "";

        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(),  "openModal", "<script> addSuccess(' تمت اضافة النشاط بنجاح'); </script>", false);
    }


    protected void lstActive_DataBinding(object sender, EventArgs e)
    {
        var active = (from k in km.Scheduals
                      orderby k.Time ascending
                      select new
                      {
                          ActiveID = k.Id,
                          k.Name,
                          k.Time,
                          k.Period
                      }).ToList();

        lstActive.DataSource = active;
    }

    protected void lstActive_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Scheduals where k.Id == id select k).FirstOrDefault();

            km.Scheduals.Remove(c);
            km.SaveChanges();

            lstActive.DataBind();
            activityTab.Attributes["class"] = "active";
            jobTab.Attributes["class"] = "";
            infoTab.Attributes["class"] = "";

            //infoDiv.Attributes["class"] = "tab-pane";
            //jobDiv.Attributes["class"] = "tab-pane";
    //        activityDiv.Attributes["class"] = "tab-pane active";

     

        }
    }

    protected void btnSetting_Click(object sender, EventArgs e)
    {
        var time = Convert.ToDateTime(txtTimeBegin.Text).TimeOfDay;
        var time2 = Convert.ToDateTime(txtTimeEnd.Text).TimeOfDay;
        var idd=info.getId();

        var school=(from k in km.Schools where k.Id == idd select k).FirstOrDefault();
        school.TimeStartWork = time;
        school.TimeEndWork = time2;

        school.VacationNumber = int.Parse(txtVacation.Text);
        school.OutcomingCode = txtOutcoming.Text;
        km.SaveChanges();
        lblSettingSave.Text = "تم الاضافة بنجاح";

    }
}