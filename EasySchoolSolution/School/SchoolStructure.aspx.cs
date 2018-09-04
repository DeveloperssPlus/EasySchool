using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class School_SchoolStructure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
                pdfFrame.Attributes.Add("src", "~/Files/تشكيل_الهيئة_الإدارية_لمدارس_التعليم_العام.pdf");

        }
    }
}