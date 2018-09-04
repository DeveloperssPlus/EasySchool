using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_FinanceBox : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "FinanceBox";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}