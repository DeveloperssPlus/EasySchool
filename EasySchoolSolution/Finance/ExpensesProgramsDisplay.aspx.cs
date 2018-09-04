using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_ExpensesProgramsDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ExpensesProgramsDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstExpenses.DataBind();

        }
    }

    protected void lstExpenses_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.ExpensesPrograms
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select ep).ToList();


        lstExpenses.DataSource = RepInfo;
    }

    protected void lstExpenses_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.ExpensesPrograms where k.Id == id select k).FirstOrDefault();
            km.ExpensesPrograms.Remove(c);
            km.SaveChanges();

            lstExpenses.DataBind();

        }
    }
}