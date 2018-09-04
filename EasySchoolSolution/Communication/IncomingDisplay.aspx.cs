using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_IncomingDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "IncomingDisplay";
        base.OnPreInit(e);
    }

    protected static int counter = 0;

    protected static int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            counter = 0;
            LstIncoming.DataBind();
        }
    }

    protected void LstIncoming_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Incomings where k.Id == id select k).FirstOrDefault();

            c.IsDeleted = true;

            km.SaveChanges();

            LstIncoming.DataBind();
        }
        else if (e.CommandName == "btnEdit")
        {
            Response.Redirect("IncomingAdd.aspx?id=" + e.CommandArgument);
        }
        else if(e.CommandName== "btnDetails")
        {
            Response.Redirect("IncomingDetails.aspx?id="+e.CommandArgument);
        }
        else if (e.CommandName == "DisplayEMployee")
        {
            //HiddenField IncomingId = (HiddenField)dataItem.FindControl("HiddenField1");
            Response.Redirect("UsersGeneralizaionDisplay.aspx?IncomingId=" + e.CommandArgument);
        }
        else if (e.CommandName == "download")
        {
            OnlineSchoolEntities km = new OnlineSchoolEntities();
            int idd=int.Parse(e.CommandArgument.ToString());
            var file = (from k in km.Incomings where k.Id == idd select k.FileLocation).FirstOrDefault();
            if (file != null)
            {
                var extention = file.Split('.').Last();
                Response.Clear();
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Guid.NewGuid() + "." + extention);
                Response.TransmitFile("~/" + file);
                Response.End();
            }
            else
            {
                PlaceHolderSuccess.Visible = true;
            }
        }
    }

    protected void LstIncoming_DataBinding(object sender, EventArgs e)
    {
        int SchoolID = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();
        var Incoming = (from I in km.Incomings
                        //join p in km.Schools on I.SchoolId equals p.Id
                        where I.SchoolId == SchoolID && I.IsDeleted != true  && I.SemesterId==semesterid
                        orderby I.Id descending
                        select new
                        {
                            I.Date,
                            I.Number,
                            I.FileNumber,
                            Source= (from c in km.Constants where c.Id == I.Source select c.value).FirstOrDefault(),
                            I.Subject,
                            Type= (from c in km.Constants where c.Id == I.Type select c.value).FirstOrDefault(),
                            Attachment= (from c in km.Constants where c.Id == I.Type select c.value).FirstOrDefault(),
                            I.Id,
                        }).ToList();


        LstIncoming.DataSource = Incoming;
        LstIncoming.DataBind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }
}