using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_ExpensesProgramsAdd : MyPermisionPage
{
    OnlineSchoolEntities Km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ExpensesProgramsAdd";
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
        ExpensesProgram expenses = new ExpensesProgram();


       
        if (!String.IsNullOrEmpty(txtNameProgram.Text))
            expenses.ProgramName = txtNameProgram.Text;

        if (!String.IsNullOrEmpty(txtDescription.Text))
            expenses.Description = txtDescription.Text;


        if (!String.IsNullOrEmpty(txtNote.Text))
            expenses.Note = txtNote.Text;

        if (txtPrice.Text != null)
        {
            expenses.Price = Convert.ToInt32(txtPrice.Text);
        }


        if (txtrest.Text != null)
        {
            expenses.Rest = Convert.ToInt32(txtrest.Text);
        }


        if (txtNoBill.Text != null)
        {
            expenses.BillNumber = Convert.ToInt32(txtNoBill.Text);
        }


        int SchoolID = SchoolInfo.getId();
        expenses.SchoolId = SchoolID;

        expenses.SemesterId = MyDate.getCurrentSemesterId();

        Km.ExpensesPrograms.Add(expenses);
        Km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied(' !! تمت الاضافة بنجاح'); </script>", false);

    }
}