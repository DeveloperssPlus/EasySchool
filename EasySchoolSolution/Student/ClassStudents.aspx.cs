using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_ClassStudents : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    int counter = 0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ClassStudents";
        base.OnPreInit(e);
    }
    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            if (!IsPostBack)
            {
        LstClass.DataBind();

            }
  }
           
    }

    protected void LstClass_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        var semesterid = MyDate.getCurrentSemesterId();
        var subjectId = int.Parse(Request.QueryString["id"].ToString());

        var classes = (from k in km.StudentsSubjects
                       join s in km.Students on k.StudentId equals s.IdentityNumber
                       where k.SubjectId == subjectId
                       orderby s.Name
                       select new
                       {
                           k.SubjectId,
                           studentId= s.Id,
                           Name =s.Name,
                           s.IdentityNumber,
                           k.Rate
                      //     teacher=(from t in km.Employees where t.IdentityNumber==k.TeacherId select t.Name).FirstOrDefault(),
                       }).ToList();
        LstClass.DataSource = classes;
    }

    protected void LstClass_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "note")
        {
            PlaceHolderPatient.Visible = false;

            var idd = e.CommandArgument.ToString();
           var std= (from k in km.Students where k.IdentityNumber == idd select k).FirstOrDefault();
            lblStdName.Text = std.Name;
            HiddenStdId.Value = std.IdentityNumber;
            PlaceHolderNotes.Visible = true;
        }
        else
            if(e.CommandName== "patient")
        {
            var idd = e.CommandArgument.ToString();
            var std = (from k in km.Students where k.IdentityNumber == idd select k).FirstOrDefault();
            lblPatientName.Text = std.Name;
            //HiddenStdId.Value = std.IdentityNumber;
            lstPatient.DataSource = (from k in km.StudentPatients where k.StudentId == idd select k).ToList();
            lstPatient.DataBind();
            PlaceHolderNotes.Visible = false;

            PlaceHolderPatient.Visible = true;

        }
    }

    protected void btnNotes_Click(object sender, EventArgs e)
    {
        StudentsNote note = new StudentsNote();
        note.Note = txtNote.Text;
        note.SchoolId = new SchoolInformation().getId();
        note.StudentId = HiddenStdId.Value;
        note.TeacherId = Membership.GetUser().UserName;
        note.Date = DateTime.Now.Date;
        km.StudentsNotes.Add(note);
        km.SaveChanges();
        PlaceHolderNotes.Visible = false;
        txtNote.Text = "";
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت اضافة الملاحظة بنجاح'); </script>", false);

    }
}