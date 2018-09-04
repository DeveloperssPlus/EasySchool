using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_GeneralSettings : System.Web.UI.Page
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    int counter = 0;
    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            OnlineSchoolEntities km = new OnlineSchoolEntities();

            var yearH = (from k in km.Semesters orderby k.Id descending select k.YearH).FirstOrDefault();
            txtYear.Text = yearH + "-" + (yearH + 1)+ " هـ ";
            var yearM = (from k in km.Semesters orderby k.Id descending select k.YearM).FirstOrDefault();
            txtYearM.Text = yearM + "-" + (yearM + 1)+" م ";

            DDLSemester.SelectedValue = MyDate.getCurrentSemesterNumber().ToString();
            ddlSemesters.SelectedValue = MyDate.getCurrentSemesterNumber().ToString();
            ddlYear.SelectedValue = txtYear.Text;

            Calendar1.DataBind();
            Calendar2.DataBind();
            Calendar3.DataBind();
           
             var start= MyDate.getCurrentSemesteStartDate().Split(' ').FirstOrDefault();
            if(start!=null)
            txtStart.Text = start;

            var culture = MyDate.getDateCulture();
            if (culture == "ar-EG")
                radioDate.SelectedValue = "False";
            else
                radioDate.SelectedValue = "True";

            lstSemesters.DataBind();
            ddlYear.DataBind();
       

            var end = MyDate.getCurrentSemesteEndDate();
            if(end!=null)
            txtEnd.Text = end;
            
            Week week = (from k in km.Weeks where k.Id == 1 select k).FirstOrDefault();
             txtStartDate.Text= MyDate.getDate(week.startDate.ToString());

            for (int i = 2; i <= 21; ++i)
            {
                var lblname = "lblDateWeek" + (i);
                Label lbl = (Label)Panel2.FindControl(lblname);
                DropDownList ddl = (DropDownList)Panel2.FindControl("DropDownList" + i);
                ddl.DataBind();

                week = (from k in km.Weeks where k.Id == i select k).FirstOrDefault();
                lbl.Text = MyDate.getDate(week.startDate.ToString());
                ddl.SelectedValue = week.type.ToString();
                        }
        }

        if (Request.QueryString["Date"] == "Ok")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' تم تعديل التاريخ بنجاح'); </script>", false);

        }
    }

    protected void BtnNewSemester_Click(object sender, EventArgs e)
    {
        Semester semester = new Semester();
        var temp = (txtYear.Text.Split(' ').FirstOrDefault()).Split('-');
        semester.YearH = Math.Min(int.Parse(temp[0]),int.Parse(temp[1]));

        temp = (txtYearM.Text.Split(' ').FirstOrDefault()).Split('-');
        semester.YearM = Math.Min(int.Parse(temp[0]), int.Parse(temp[1]));

        semester.Semester1=int.Parse(DDLSemester.SelectedValue);

        var isExist = (from k in km.Semesters where
                       k.YearH == semester.YearH &&
                       k.YearM == semester.YearM &&
                       k.Semester1 == semester.Semester1
                       select k).FirstOrDefault();

        if (isExist != null)
        {
            semester = isExist;
        }

        if (Calendar1.CultureName == "ar-SA")
        {
            if (!string.IsNullOrEmpty(txtStart.Text))
                semester.StartDate = MyDate.convertHijriToGregorian(txtStart.Text);

            if (!string.IsNullOrEmpty(txtEnd.Text))
                semester.EndDate = MyDate.convertHijriToGregorian(txtEnd.Text);
        }
        else{
            if (!string.IsNullOrEmpty(txtStart.Text))
                semester.StartDate = DateTime.ParseExact(txtStart.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));

            if (!string.IsNullOrEmpty(txtEnd.Text))
                semester.EndDate = DateTime.ParseExact(txtEnd.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        foreach(var item in km.Semesters)
        {
            item.IsCurrent = false;
        }
        semester.IsCurrent = true;
        if (isExist == null)
        {
            km.Semesters.Add(semester);
        }
        km.SaveChanges();
        lstSemesters.DataBind();
      ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تم إضافة فصل جديد بنجاح'); </script>", false);

    }

    protected void btnAllWeek_Click(object sender, EventArgs e)
    {
        DateTime dt = new DateTime();
        if (MyDate.getDateCulture() == "ar-EG")
        {
            dt = DateTime.ParseExact(txtStartDate.Text, "yyyy/MM/dd", new CultureInfo("ar-EG"));
        }
        else
        {
            dt = MyDate.convertHijriToGregorian(txtStartDate.Text);

           // dt = DateTime.ParseExact(txtStartDate.Text, "yyyy/MM/dd", new CultureInfo("ar-SA"));
        }
        for (int i =1 ; i <= 20; ++i)
        {
            var lblname = "lblDateWeek" + (i + 1);

            Label lbl= (Label)Panel2.FindControl(lblname);
            lbl.Text = MyDate.getDate(dt.AddDays(7*i).ToString());
        }

       // PlaceHolderSuccess.Visible = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        Week week = (from k in km.Weeks where k.Id == 1 select k).FirstOrDefault();
     //   week.startDate = Convert.ToDateTime(txtStartDate.Text);
        if (MyDate.getDateCulture() == "ar-EG")
        {
            week.startDate = DateTime.ParseExact(txtStartDate.Text, "yyyy/MM/dd", new CultureInfo("ar-EG"));
        }
        else
        {
            week.startDate = MyDate.convertHijriToGregorian(txtStartDate.Text);
        }

        for (int i = 2; i <= 21; ++i)
        {
            var lblname = "lblDateWeek" + (i);
            Label lbl = (Label)Panel2.FindControl(lblname);
            DropDownList ddl=(DropDownList)Panel2.FindControl("DropDownList"+i);
            week = (from k in km.Weeks where k.Id == i select k).FirstOrDefault();

            if (MyDate.getDateCulture() == "ar-EG")
            {
                week.startDate = DateTime.ParseExact(lbl.Text, "yyyy/MM/dd", new CultureInfo("ar-EG"));
            }
            else
            {
                week.startDate = MyDate.convertHijriToGregorian(lbl.Text);

            }
            week.type = int.Parse(ddl.SelectedValue);      
        }

        km.SaveChanges();
     
    }

    protected void btnDate_Click(object sender, EventArgs e)
    {

        string isHijri = radioDate.SelectedValue;
        var setting = (from k in km.Settings where k.KKey == "IsDateHijri" select k).FirstOrDefault();
        setting.KVal = isHijri;
        km.SaveChanges();
        Response.Redirect(HttpContext.Current.Request.Url.ToString()+"?Date=Ok");


    }

    protected void lstSemesters_DataBinding(object sender, EventArgs e)
    {
        var lst = (from k in km.Semesters
                   orderby k.YearH descending , k.Semester1 ascending
                   select new
                   {
                       //YearH= k.YearH + "-" + (k.YearH + 1) + " هـ ",
                       //YearM= k.YearM + "-" + (k.YearM + 1) + " م ",
                       k.YearH,
                       k.YearM,
                       Semester = (k.Semester1.Value == 1) ? "الفصل الدراسي الأول" : (k.Semester1.Value == 2) ? "الفصل الدراسي الثاني" : "الفصل الدراسي الصيفي",
                       k.StartDate,
                       k.EndDate,
                       Current = (k.IsCurrent == true) ? "الفصل الحالي" : "",
                       k.Id,
                       k.IsCurrent

                   }).ToList();
        lstSemesters.DataSource = lst;
    }

    protected void ddlYear_DataBinding(object sender, EventArgs e)
    {
        var lst = (from k in km.Semesters
                   orderby k.YearH descending
                   select new
                   {
                       k.YearH
                   }).Distinct().ToList();

        var lstYears = new List<string>();
        foreach(var item in lst)
        {
            var ss = item.YearH + "-" + ((int)item.YearH + 1) + " هـ ";
            lstYears.Add(ss);
        }
        ddlYear.DataSource = lstYears;
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        if (Calendar2.CultureName == "ar-SA")
            txtEnd2.Text = (DateTime.ParseExact(txtEnd.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-SA"))).ToString("yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));

        else
            txtEnd2.Text = (DateTime.ParseExact(txtEnd.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"))).ToString("yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-SA"));


    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        if (Calendar1.CultureName == "ar-SA")
        {
            txtStart2.Text = (DateTime.ParseExact(txtStart.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-SA"))).ToString("yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));

            //txtStart2.Text = MyDate.convertHijriToGregorian(txtStart.Text).ToString("yyyy/MM/dd");
        }
        else
            txtStart2.Text = (DateTime.ParseExact(txtStart.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"))).ToString("yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-SA"));

    }

    protected void btnCurrentSemester_Click(object sender, EventArgs e)
    {
        var temp = (ddlYear.SelectedValue.Split(' ').FirstOrDefault()).Split('-');
        var yearH = Math.Min(int.Parse(temp[0]), int.Parse(temp[1]));
        var semester= int.Parse(ddlSemesters.SelectedValue);

        var isExist = (from k in km.Semesters
                       where k.YearH == yearH &&
                       k.Semester1 == semester
                       select k).FirstOrDefault();
        if (isExist != null)
        {
            foreach (var item in km.Semesters)
            {
                item.IsCurrent = false;
            }

            isExist.IsCurrent = true;
            km.SaveChanges();
            lstSemesters.DataBind();
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تم تعديل الفصل الحالي بنجاح'); </script>", false);

        }
        else
        {
         ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied('الرجاء التأكد من الفصل '); </script>", false);

        }

    }
}