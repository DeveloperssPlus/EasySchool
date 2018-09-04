using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_OutcomingDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "OutcomingDisplay";
        base.OnPreInit(e);
    }

    protected static int counter = 0;

    protected static int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            counter = 0;
            LstOutcoming.DataBind();
        }
    }
    protected void LstOutcoming_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Outcomings where k.Id == id select k).FirstOrDefault();

            c.IsDeleted = true;

            km.SaveChanges();

            LstOutcoming.DataBind();
        }
        else if (e.CommandName == "btnEdit")
        {
            Response.Redirect("OutcomingAdd.aspx?id=" + e.CommandArgument);
        }
        else if (e.CommandName == "btnDetails")
        {
            Response.Redirect("OutcomingDetails.aspx?id=" + e.CommandArgument);
        }
        else if (e.CommandName == "receipt")
        {
          
        }
        
    }
    protected void LstOutcoming_DataBinding(object sender, EventArgs e)
    {
        int SchoolID = info.getId();
        int semesterId = MyDate.getCurrentSemesterId();
        var Outcoming = (from I in km.Outcomings
                        join p in km.Schools on I.SchoolId equals p.Id
                        where I.SchoolId == SchoolID && I.IsDeleted != true && I.SemesterId==semesterId
                        orderby I.Id descending
                        select new
                        {
                            I.Date,
                            I.Number,
                            I.FileNumber,
                            SourceTo=(from c in km.Constants where c.Id == I.SourceTo select c.value).FirstOrDefault(),
                            I.Subject ,
                            Type = (from c in km.Constants where c.Id == I.Type select c.value).FirstOrDefault(),
                            Attachment = (from c in km.Constants where c.Id == I.Type select c.value).FirstOrDefault(),
                            I.Id,
                        }).ToList();

        LstOutcoming.DataSource = Outcoming;
        LstOutcoming.DataBind();
    }
}