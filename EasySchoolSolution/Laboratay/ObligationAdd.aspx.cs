using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_ObligationAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ObligationAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillEmployeeName();
       //     ddlName.Items.Insert(0, new ListItem("اسم الموظف..", "select"));

        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Obligation obligation = new Obligation();

        if (txtNumber.Text != null)
        {
          obligation.Count = Convert.ToInt32(txtNumber.Text);
        }

        if (!String.IsNullOrEmpty(txtNote.Text))
            obligation.Comments = txtNote.Text;

        if (!String.IsNullOrEmpty(txtNameProduct.Text))
            obligation.KindName = txtNameProduct.Text;


        int SchoolID = SchoolInfo.getId();
        obligation.SchoolId = SchoolID;

        obligation.SemesterId = MyDate.getCurrentSemesterId();

        obligation.IsReturn = false;
        obligation.IsReceived = false;

        obligation.EmployeeId = ddlName.SelectedValue;

        km.Obligations.Add(obligation);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  لقد تم الإضافة بنجاح.. '); </script>", false);

    }

    protected void ddlName_SelectedIndexChanged(object sender, EventArgs e)
    {
        var name = (from ep in km.Jobs
                       join ee in km.Employees on ep.Id equals ee.JobId
                       where ee.IdentityNumber==ddlName.SelectedValue
                       select ep.Name
                      ).FirstOrDefault();
        lblJob.Text = name;
    }

    public void FillEmployeeName()
    {
        var EmpName = (from s in km.Employees select s).ToList();
        ddlName.DataSource = EmpName;
        ddlName.DataTextField = "Name";
        ddlName.DataValueField = "IdentityNumber";
        ddlName.DataBind();
    }

}
