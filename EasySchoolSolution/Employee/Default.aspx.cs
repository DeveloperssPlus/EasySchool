using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Default : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var userId = Membership.GetUser().UserName;
            var generalization = (from k in km.UsersGeneralizations where k.UserId == userId && k.isSeen==false select k).ToList();
            if (generalization.Count == 0)
            {
                PlaceHolder1.Visible = false;
            }

            else
            {
                foreach(var item in generalization)
                {
                    var incoming = (from k in km.Incomings where k.Id == item.IncomingId select k).FirstOrDefault();
                    IncommingId.Value = incoming.Id.ToString();

                    lblTitle.Text ="تعميم رقم "+incoming.Number+" من "+ ConstantManager.getConstant((int)incoming.Source) ;

                    pdfFrame.Src = "~/"+ incoming.FileLocation;
                    PlaceHolder1.Visible = true;
                }
            }
        }
    }

    protected void btnSeen_Click(object sender, EventArgs e)
    {
        PlaceHolder1.Visible = false;
        var userId = Membership.GetUser().UserName;
        var idd =int.Parse(IncommingId.Value);
        var userGeneral = (from k in km.UsersGeneralizations where k.IncomingId == idd && k.UserId == userId select k).FirstOrDefault();
        userGeneral.isSeen = true;
        km.SaveChanges();

    }
}