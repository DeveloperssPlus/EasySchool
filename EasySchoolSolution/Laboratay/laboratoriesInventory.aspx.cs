using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_LaboratoriesInventory : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "LaboratoriesInventory";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        LaboratoriesInventory laboratory = new LaboratoriesInventory();

        if (txtProductNo.Text != null)
        {

            laboratory.KindId = Convert.ToInt32(txtProductNo.Text);
        }

        if (!String.IsNullOrEmpty(txtProductName.Text))
            laboratory.KindName = txtProductName.Text;

        if (txtUnit.Text != null)
        {
            laboratory.Unit = txtUnit.Text;
        }
        int SchoolID = SchoolInfo.getId();
        laboratory.SchoolId = SchoolID;

        laboratory.SemesterId = MyDate.getCurrentSemesterId();

        laboratory.ValidCount=int.Parse(txtValid.Text);
        laboratory.NotValidCount = int.Parse(txtNotValid.Text);
        
           if (txtCustody.Text != null)
        {
            laboratory.ObligatedCount = Convert.ToInt32(txtCustody.Text);
        }

        if (txtincreas.Text != null)
        {
            laboratory.Increase = Convert.ToInt32(txtincreas.Text);
        }

        km.LaboratoriesInventories.Add(laboratory);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت الاضافة بنجاح'); </script>", false);

    }
}