using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            User user = new User();
            ltrUsername.Text = user.getuserName();
            if(user.getImage()!=null)
            imgProfile.ImageUrl = "~/" + user .getImage();
            else
                imgProfile.ImageUrl = "~/assets/user-Placeholder.png";

            SchoolInformation info = new SchoolInformation();

            char type = info.getSchoolType();
            if (type == 'G')
                lnkStudent.NavigateUrl = "~/ImportExcel/AddStudentG.aspx";
            else
                lnkStudent.NavigateUrl = "~/ImportExcel/AddStudentM.aspx";


            ltrSchoolName.Text = info.getName();

            MyDate mydate = new MyDate();

            ltrSemester.Text = MyDate.getCurrentSemester();
            ltrYear.Text = MyDate.getCurrentYear();
            ltrDate.Text = MyDate.getDay() + "<br/>" + MyDate.getDate();
        
           
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        User user = new User();
        user.signout();
        Response.Redirect("~/default.aspx");
    }

    //protected void lnkHijri_Click(object sender, EventArgs e)
    //{
    //    Session["Date"] = "Hijri";
    //    Response.Redirect(HttpContext.Current.Request.Url.ToString());
    //}

    //protected void lnkGregorian_Click(object sender, EventArgs e)
    //{
    //    Session["Date"] = "Gregorian";
    //    Response.Redirect(HttpContext.Current.Request.Url.ToString());

    //}
}
