using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class School_SchoolMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var number = new SchoolInformation().getSecretaryNumber();
            if(number==0)
                pdfFrame.Attributes.Add("src", "~/Files/الخريطة_التنظيمية_لمدارس_التعليم_العام_وفقا_لحجم_المدرسة(بدون وكيل.pdf");

            if (number==1)
            pdfFrame.Attributes.Add("src", "~/Files/الخريطة_التنظيمية_لمدارس_التعليم_العام_وفقا_لحجم_المدرسة(بوكيل واحد(.pdf");
            else
                  if (number == 2)
                pdfFrame.Attributes.Add("src", "~/Files/الخريطة_التعليمية_لمدارس_التعليم_العام_وفقا_لحجم_المدرسة(بوكيلين(.pdf");
            else
            if (number == 3)
                pdfFrame.Attributes.Add("src", "~/Files/الخريطة_التعليمية_لمدارس_التعليم_العام_وفقا_لحجم_المدرسة(ثلاثة_وكلاء(.pdf" );
        }
    }
}