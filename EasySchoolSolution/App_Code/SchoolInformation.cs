using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

/// <summary>
/// Summary description for SchoolInformation
/// </summary>
public class SchoolInformation
{
    School school = new School();
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    public SchoolInformation()
    {
        var username = Membership.GetUser().UserName;
         school = (from k in km.Employees where k.IdentityNumber.Trim() == username select k.School).FirstOrDefault();
    }

    public string getName()
    {   
        return school.Name;
    }

    public int getSecretaryNumber()
    {
        var no =(int) school.NumberOfSecretary;
    
        return no;
    }


    public string getLogo()
    {
        return school.logo;
    }

    public int getId()
    {
        return school.Id;
    }

    /// <summary>
    ///بترجع اسم مدير المدرسة
    /// </summary>
    /// <returns></returns>
    public string getSchoolManager()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "قائد مدرسة" select k ).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.Name;
    }
    public string getSchoolManagerId()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "قائد مدرسة" select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.IdentityNumber;
    }
    public string getUndersecretaryEducationalAffairs()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "وكيل المدرسة للشؤون التعليمية" select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.Name;
    }
    public string getUndersecretaryEducationalAffairsId()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "وكيل المدرسة للشؤون التعليمية" select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.IdentityNumber;
    }
    public string getUndersecretarySchoolAffairs()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "وكيل المدرسة للشؤون المدرسية " select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.Name;
    }
    public string getUndersecretarySchoolAffairsId()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "وكيل المدرسة للشؤون المدرسية " select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.IdentityNumber;
    }
    public string getUndersecretaryStudentAffairs()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "وكيل المدرسة للشؤون الطلاب" select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.Name;
    }
    public string getUndersecretaryStudentAffairsId()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "وكيل المدرسة للشؤون الطلاب" select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.IdentityNumber;
    }
    public string getLearningResources()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "أمين مصادر تعلم" select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.Name;
    }
    public string getLearningResourcesId()
    {
        var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "أمين مصادر تعلم" select k).FirstOrDefault();
        if (employee == null)
            return "";
        return employee.IdentityNumber;
    }
    

    //       public string getSchoolLibrarian()
    //{
    //    var employee = (from k in km.Employees where k.SchoolId == school.Id && k.Job.Name == "أمين مصادر التعلم" select k).FirstOrDefault();
    //    if (employee == null)
    //        return "";
    //    return employee.IdentityNumber;
    //}

    public char getSchoolType() {

        string type = ConstantManager.getConstant((int)school.Type);

        if (type == "مقررات")
            return 'M';
        else
            return 'G';
    }

}