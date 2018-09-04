using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ConstantManager
/// </summary>
public class ConstantManager
{
    public ConstantManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    private static OnlineSchoolEntities km = new OnlineSchoolEntities();

    public static List<ConstantsType> getTypes()
    {
        var types = (from k in km.ConstantsTypes select k).ToList();
        return types;
    }
    public static List<ConstantsType> getSchoolTypes()
    {
        var types = (from k in km.ConstantsTypes where k.IsDynamic==true select k).ToList();
        return types;
    }
    public static List<ConstantsType> getAdminTypes()
    {
        var types = (from k in km.ConstantsTypes where k.IsDynamic==false select k).ToList();
        return types;
    }
    public static List<Constant> get(string typeVal)
    {
        var type = (from k in km.ConstantsTypes where k.Type==typeVal select k).FirstOrDefault();

        if (type.IsDynamic == true)
        {
            SchoolInformation info = new SchoolInformation();
            var schoolId = info.getId();
            var lst =(from k in km.Constants where (k.type == type.Id) && (k.isDeleted == false) && (k.SchoolId==schoolId) select k).ToList();
            if (typeVal== "نوع التأخر")
            {
                var lst2 = (from k in km.Constants where (k.type == type.Id) && (k.isDeleted == false) && (k.SchoolId == null) select k).ToList();
                lst = lst.Concat(lst2).ToList();

            }
            return lst;
        }
       return (from k in km.Constants where (k.type== type.Id) && (k.isDeleted==false)  select k).ToList();
        
       // return constant;
    }

    public static string getConstant(int id)
    {
      
        var constant = (from k in km.Constants where k.Id==id select k).FirstOrDefault();

        return constant.value;
    }


    public static int getConstantId(string value)
    {

        var constant = (from k in km.Constants where k.value == value select k).FirstOrDefault();

        return constant.Id;
    }

    //public static void setConstant(int type,string value)
    //{
    //    Constant constant = new Constant();
    //    constant.type = type;
    //    constant.value = value;

    //    km.Constants.Add(constant);
    //    km.SaveChanges();
    //}

    //public static void setDefault(int typeId, string value)
    //{
    //    ConstantsType type = (from k in km.ConstantsTypes where k.Id == typeId select k).FirstOrDefault();
    //    type.DefaultVal = value;
    //    km.SaveChanges();
    //}

    //public static string getDefault(int typeId)
    //{
    //    ConstantsType type = (from k in km.ConstantsTypes where k.Id == typeId select k).FirstOrDefault();
    //    return type.DefaultVal;
    //}
}