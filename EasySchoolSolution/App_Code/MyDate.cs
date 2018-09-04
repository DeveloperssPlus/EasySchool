using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;


/// <summary>
/// Summary description for MyClass
/// </summary>
public class MyDate
{
    private static OnlineSchoolEntities km = new OnlineSchoolEntities();
    public MyDate()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string getDate()
    {
        string result = "";
        DateTime dt = DateTime.Now;

        string dateculture = getDateCulture();
            CultureInfo culture = CultureInfo.CreateSpecificCulture(dateculture);
            result = dt.ToString("yyyy/MM/dd", culture);
      
        return result;
    }

    public static string getDate(string date)
    {
        DateTime dt = Convert.ToDateTime(date);
        string result = "";
        string dateculture = getDateCulture();

        CultureInfo culture = CultureInfo.CreateSpecificCulture(dateculture);
            result = dt.ToString("yyyy/MM/dd", culture);
     
        return result;
    }

    public static string getHijriDate()
    {
        CultureInfo arSA = CultureInfo.CreateSpecificCulture("ar-SA");
        DateTime dt = DateTime.Now;
        string s = dt.ToString("yyyy/MM/dd", arSA);
        return s;
    }

    public static string getHijriDate(DateTime dt)
    {
        CultureInfo arSA = CultureInfo.CreateSpecificCulture("ar-SA");
        string s = dt.ToString("yyyy/MM/dd", arSA);
        return s;
    }

    public static DateTime convertHijriToGregorian( string date)
    {
        CultureInfo arCI = new CultureInfo("ar-SA");
        string hijri = date;

        DateTime tempDate = Convert.ToDateTime(hijri);
        return tempDate;
    }

    public static string convertGregorianToHijri(string date)
    {
        CultureInfo arSA = new CultureInfo("ar-SA");
        DateTime dt = Convert.ToDateTime(date);
        string s = dt.ToString("yyyy/MM/dd", arSA);
        return s;
    }

    public static string getCurrentSemester()
    {
        var semester = (from k in km.Semesters orderby k.Id descending select k.Semester1).FirstOrDefault();
        switch (semester)
        {
            case 1: return "الفصل الدراسي الأول";

            case 2: return "الفصل الدراسي الثاني";

            case 3: return "الفصل الدراسي الصيفي";

            default: return "الفصل  الدراسي الأول";
        }
    }
    public static int getCurrentSemesterNumber()
    {
       return (int) (from k in km.Semesters orderby k.Id descending select k.Semester1).FirstOrDefault();
    
    }
    public static int getCurrentSemesterId()
    {
        return (int) (from k in km.Semesters where k.IsCurrent==true select k.Id).FirstOrDefault(); 
    }

    public static string getCurrentSemesteStartDate()
    {
      
            var date= (from k in km.Semesters where k.IsCurrent==true select k.StartDate).FirstOrDefault().ToString();
        return MyDate.getDate(date);

    }

    public static string getCurrentSemesteEndDate()
    {
        string date=(from k in km.Semesters where k.IsCurrent==true select k.EndDate).FirstOrDefault().ToString();

        return MyDate.getDate(date);
    }

    public static string getCurrentYear()
    {
        int year;
        string dateculture = getDateCulture();
 
        if (dateculture == "ar-EG")
        {
            year = (int)(from k in km.Semesters where k.IsCurrent==true select k.YearM).FirstOrDefault();
            return (year + 1) + "-" + (year)+" م" ;
        }
        else
        {
            year = (int)(from k in km.Semesters where k.IsCurrent==true select k.YearH).FirstOrDefault();
            return (year + 1) + "-" + (year)+" هـ";
        }

    }

    public static string getDay()
    {
        DayOfWeek day = DateTime.Now.DayOfWeek;

        switch(day)
        {
            case DayOfWeek.Saturday: return "السبت ";
            case DayOfWeek.Sunday: return "الأحد ";
            case DayOfWeek.Monday: return "الاتنين ";
            case DayOfWeek.Tuesday: return "الثلاثاء ";
            case DayOfWeek.Wednesday: return "الأربعاء ";
            case DayOfWeek.Thursday: return "الخميس ";
            case DayOfWeek.Friday: return "الجمعة ";
            default: return "";
        }
    }


    public static string getDay(DateTime dt)
    {
        DayOfWeek day = dt.DayOfWeek;

        switch (day)
        {
            case DayOfWeek.Saturday: return "السبت ";
            case DayOfWeek.Sunday: return "الأحد ";
            case DayOfWeek.Monday: return "الاتنين ";
            case DayOfWeek.Tuesday: return "الثلاثاء ";
            case DayOfWeek.Wednesday: return "الأربعاء ";
            case DayOfWeek.Thursday: return "الخميس ";
            case DayOfWeek.Friday: return "الجمعة ";
            default: return "";

        }
    }

    public static string getDateCulture()
    {
        bool isHijri = true;
        var username = Membership.GetUser().UserName;
        var school = (from k in km.Employees where k.IdentityNumber == username select k.School).FirstOrDefault();

        if (school != null)
        {
            isHijri = school.IsDateHijri==null?true:(bool)school.IsDateHijri;
        }else
        {
            isHijri = Convert.ToBoolean((from k in km.Settings where k.KKey == "IsDateHijri" select k.KVal).FirstOrDefault());
                     }
        if (isHijri==false)
         return "ar-EG"; 
        else
            return "ar-SA";
    }
}