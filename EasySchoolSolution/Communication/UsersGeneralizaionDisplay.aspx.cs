using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Communication_UsersGeneralizaionDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "UsersGeneralizaionDisplay";
        base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["IncomingId"] != null)
            {
            FillEmployee();
            }
        }
    }

    public void FillEmployee()
    {
      //  var idd = int.Parse( Request.QueryString["IncomingId"]);

        var isSeen = (from m in km.UsersGeneralizations select m.isSeen).FirstOrDefault();
        string IsSeenn;

            if (isSeen==false)
            IsSeenn = "لا";
        
            else 
        IsSeenn = "نعم";
            

        int IncomingId = int.Parse(Request.QueryString["IncomingId"].ToString());
        var emp = (from k in km.UsersGeneralizations
                   where k.IncomingId == IncomingId
                   select new
                   {
                       IsSeenn ,
                     EmployeeName=(from m in km .Employees where m.IdentityNumber==k.UserId select m.Name).FirstOrDefault()
               
                   }).ToList();
        
        LstEmployee.DataSource = emp;
        LstEmployee.DataBind();

        var IncomingInfo = (from m in km.Incomings where m.Id == IncomingId select m).FirstOrDefault();
        lbldate.Text =  MyDate.getDate(IncomingInfo.Date.ToString());
        lblSource.Text = ConstantManager.getConstant((int)IncomingInfo.Source);
        lblsubject.Text = IncomingInfo.Subject;
        lbltype.Text = ConstantManager.getConstant((int)IncomingInfo.Type);
    }
}