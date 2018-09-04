using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_OutstandingStudendDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "OutstandingStudendDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lstOutstanding.DataBind();

        }
    }

    protected void lstOutstanding_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.OutstandingStudents
                       where ep.SchoolId == schoolid && ep.SemesterId == semesterid
                       select new
                       {
                           studentname = (from v in km.Students where v.IdentityNumber == ep.StudentId select v.Name).FirstOrDefault(),
                           ep.Id,
                           ep.Note,
                           ep.Price,
                          ep.Class,
                           ep.FieldExcellence
                       }).ToList();


        lstOutstanding.DataSource = RepInfo;
    }

    protected void lstOutstanding_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.OutstandingStudents where k.Id == id select k).FirstOrDefault();
            km.OutstandingStudents.Remove(c);
            km.SaveChanges();

            lstOutstanding.DataBind();

        }
    }

    protected void lstOutstanding_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        int OutstandingId = int.Parse(((HiddenField)(e.Item.FindControl("OutstandingId"))).Value);
        Label Price = (Label)(e.Item.FindControl("lblPrice"));
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {

            var Help = (from j in km.OutstandingStudents where j.Id == OutstandingId select j).FirstOrDefault();


            if (Help.Price == false)
            {
                Price.Text = "مبلغ مادي";
            }
            else
            {
                Price.Text = "هدية عينية";
            }

        }
        lstOutstanding.DataBind();
    }
}