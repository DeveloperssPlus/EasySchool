using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_MessagesAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "MessagesAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();
        TimeSpan Timee = Convert.ToDateTime(txtTime.Text).TimeOfDay;
        Message Messag = new Message();
        Messag.Person = txtName.Text;
        Messag.Reason = txtReson.Text;
        Messag.SchoolId = schoolid;
        Messag.SemesterId = semesterid;
        Messag.Time = Timee;
        km.Messages.Add(Messag);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied('  تمت الاضافة بنجاح !!'); </script>", false);
    }
}