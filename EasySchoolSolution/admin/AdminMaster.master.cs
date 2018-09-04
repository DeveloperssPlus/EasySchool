using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ltrSemester.Text = MyDate.getCurrentSemester();
        ltrYear.Text = MyDate.getCurrentYear();
        ltrDate.Text = MyDate.getDay() + "<br/>" + MyDate.getDate();

    }
}
