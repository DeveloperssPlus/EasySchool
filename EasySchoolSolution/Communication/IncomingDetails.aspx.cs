using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_IncomingDetails : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    User info = new User();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "IncomingDetails";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                var c = (from k in km.Incomings where k.Id == id select k).FirstOrDefault();

                txtIncomingNumber.Text = c.Number;

                if (c.Date != null)
                    txtDate.Text = MyDate.getDate(c.Date.ToString());

                if (c.Type != null)
                    txtType.Text = ConstantManager.getConstant((int)c.Type);

                if (c.Source!=null)
                    txtSource.Text = ConstantManager.getConstant((int)c.Source);

                if (!String.IsNullOrEmpty(c.Subject))
                    txtSubject.Text = c.Subject;

                if (c.FileNumber != null)
                    txtFileNumber.Text = c.FileNumber.ToString();

                if (c.Attachment != null)
                    txtFileAttach.Text = ConstantManager.getConstant((int)c.Attachment);

                if (c.FileLocation != null)
                    pdfFrame.Attributes.Add("src", "~/" + c.FileLocation);

                lnkTask.NavigateUrl = "~/Communication/TaskAdd.aspx?type=Incoming&typeId=" +id;
            }
       
        }
    }

  
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        int idd = int.Parse(Request.QueryString["id"].ToString());
        var file = (from k in km.Incomings where k.Id == idd select k.FileLocation).FirstOrDefault();
        if (file != null)
        {
            var extention = file.Split('.').Last();
            Response.Clear();
            Response.AppendHeader("Content-Disposition", "attachment; filename="+Guid.NewGuid()+"."+ extention);
            Response.TransmitFile("~/" + file);
            Response.End();
        }
    }
}