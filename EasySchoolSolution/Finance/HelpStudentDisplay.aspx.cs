using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_HelpStudentDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "HelpStudentDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstHelp.DataBind();

        }
    }

    protected void lstHelp_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.HelpStudents
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select new {
                           studentname=(from v in km.Students where v.IdentityNumber==ep.StudentId select v.Name).FirstOrDefault(),
                           ep.Id,
                           ep.Note,
                           ep.Price,
                           ep.Rest,
                           ep.Class
                       }).ToList();


        lstHelp.DataSource = RepInfo;
    }

    protected void lstHelp_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.HelpStudents where k.Id == id select k).FirstOrDefault();
            km.HelpStudents.Remove(c);
            km.SaveChanges();

            lstHelp.DataBind();

        }
    }

    protected void lstHelp_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        int HelpId = int.Parse(((HiddenField)(e.Item.FindControl("HelpId"))).Value);
        Label Price = (Label)(e.Item.FindControl("lblPrice"));
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {

            var Help = (from j in km.HelpStudents where j.Id == HelpId select j).FirstOrDefault();


            if (Help.Price==false)
            {
                Price.Text = "مبلغ مادي";
            }
            else
            {
                Price.Text = "هدية عينية";
            }

        }
        lstHelp.DataBind();

    }
}