using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finance_SchoolFundAdd : MyPermisionPage
{
    OnlineSchoolEntities Km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "SchoolFundAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SchoolFund fun = new SchoolFund();

       

        if (txtNoMeeting.Text != null)
        {

            fun.MeetingNo = Convert.ToInt32(txtNoMeeting.Text);
        }

        if (txtDate.Text != null && !string.IsNullOrEmpty(txtDate.Text.ToString()))
        {
            if (CalendarDate.CultureName == "ar-SA")
                fun.Date = MyDate.convertHijriToGregorian(txtDate.Text);
            else
                fun.Date = DateTime.ParseExact(txtDate.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (!String.IsNullOrEmpty(txtDescription.Text))
            fun.Description = txtDescription.Text;

        if (!String.IsNullOrEmpty(txtHeadquarters.Text))
            fun.HeadQuarters = txtHeadquarters.Text;

        if (!String.IsNullOrEmpty(txtRecommendations.Text))
            fun.Recommendations = txtRecommendations.Text;

        int SchoolID = SchoolInfo.getId();
        fun.SchoolId = SchoolID;

        fun.SemesterId = MyDate.getCurrentSemesterId();
        Km.SchoolFunds.Add(fun);
        Km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied(' !! تمت الاضافة بنجاح'); </script>", false);

    }
}