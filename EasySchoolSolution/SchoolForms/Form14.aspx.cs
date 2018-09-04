using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form14 : System.Web.UI.Page
{
    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
            LstEmployee.DataBind();
    }

    protected void LstEmployee_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var schoolId = new SchoolInformation().getId();
        var semesterId = MyDate.getCurrentSemesterId();

        var isSeen = (from m in km.UsersGeneralizations select m.isSeen).FirstOrDefault();
        string IsSeenn;

        if (isSeen == false)
            IsSeenn = "لا";
        
        else
            IsSeenn = "نعم";


        var emp = (from k in km.UsersGeneralizations
                  
                   select new
                   {
                       IsSeenn,
                       EmployeeName = (from m in km.Employees where m.IdentityNumber == k.UserId select m.Name).FirstOrDefault()

                   }).ToList();

        LstEmployee.DataSource = emp;
        LstEmployee.DataBind();

    }
}