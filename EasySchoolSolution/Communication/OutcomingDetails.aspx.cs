using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_OutcomingDetails : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    User info = new User();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "OutcomingDetails";
        base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                Calendar1.DataBind();

                int id = int.Parse(Request.QueryString["id"].ToString());
                var c = (from k in km.Outcomings where k.Id == id select k).FirstOrDefault();

                txtOutcomingNumber.Text = c.Number;

                if (c.Date != null)
                    txtDate.Text = MyDate.getDate(c.Date.ToString());

                if (c.Type!=null)
                    txtType.Text =ConstantManager.getConstant((int)c.Type);
                
                if (c.SourceFrom!=null)
                    txtSourceFrom.Text = ConstantManager.getConstant((int)c.SourceFrom);

                if (!String.IsNullOrEmpty(c.ReceivedName))
                    txtRecivedName.Text = c.ReceivedName;
                else
                    txtRecivedName.Text = "لم يتم تسجيل الاستلام بعد";

                if (c.SourceTo!=null)
                    txtSourceTo.Text = ConstantManager.getConstant((int)c.SourceTo);

                if (c.FileNumber != null)
                    txtFileNumber.Text = c.FileNumber.ToString();

                if (c.Attachment != null)
                    txtFileAttach.Text = ConstantManager.getConstant((int)c.Attachment);

                if (!String.IsNullOrEmpty(c.Subject))
                    txtTitle.Text = c.Subject;

                if (c.FileLocation != null)
                    pdfFrame.Attributes.Add("src", "~/" + c.FileLocation);

                lnkTask.NavigateUrl = "~/Communication/TaskAdd.aspx?type=Outcoming&typeId=" + id;



                if (c.ReceivedName != null)
                {
                    lblDone.Text = "تم تسليم المعاملة";
                    txtReceiver.Text = c.ReceivedName;
                    txtDateReceive.Text =MyDate.getDate(c.ReceivedDate.ToString());
                }
            }
        }
    }

    protected void btnDelivery_Click(object sender, EventArgs e)
    {

        int id = int.Parse(Request.QueryString["id"].ToString());
        var outcoming = (from k in km.Outcomings where k.Id == id select k).FirstOrDefault();

     

            if (Calendar1.CultureName == "ar-SA")
            {
                outcoming.ReceivedDate = MyDate.convertHijriToGregorian(txtDateReceive.Text);
            }
            else
            {
                outcoming.ReceivedDate = Convert.ToDateTime(txtDateReceive.Text);
            }

            outcoming.ReceivedName = txtReceiver.Text;
            km.SaveChanges();

        lblerror.Text = "تم توديع المعاملة بنجاح. شكرا لك.";
        PlaceHolderSuccess.Visible = true;
       
    }



    protected void btnok_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }
}