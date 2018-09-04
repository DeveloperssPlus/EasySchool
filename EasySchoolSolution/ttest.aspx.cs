using Aspose.Pdf;
using Aspose.Pdf.Devices;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class ttest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void ListView1_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();

        var std = (from k in km.Students where k.IdentityNumber == "1099981555" select k).FirstOrDefault();

        var tbl = (from k in km.SubjectTables
                   join sub in km.SubjectsInSemesters on k.subjectId equals sub.Id
                   join ss in km.StudentsSubjects on sub.SubjectId equals ss.SubjectId
                   where ss.StudentId == "1097243248"
                   select new
                   {
                       name = (from b in km.Subjects where b.Id == ss.SubjectId select b.Name).FirstOrDefault(),
                       ss.SubjectId,
                       k.Day,
                       k.Id,
                       k.Period1,
                       k.Period2,
                       k.Period3,
                       k.Period4,
                       k.Period5,
                       k.Period6,
                       k.Period7,
                       k.Period8,
                   }
                 ).ToList();


        var mm = CreateListFromSingle(
               new
               {
                   day = 0,
                   p1 = "11",
                   p2 = "22",
                   p3 = "33",
                   p4 = "44",
               }).ToList();
        for (int i=0;i<5;++i)
        {
        string[] ttable = new string[5];
            var day = (i+1);
           ttable[i]= day+"";
         var p1= (from p in tbl where p.Day == day select p.Period1).ToList();
      var     pp1= print(p1);
          
          var p2=(from p in tbl where p.Day == day select p.Period2).ToList();
     var     pp2= print(p2);
      
          var p3= (from p in tbl where p.Day == day select p.Period3).ToList();
           var pp3= print(p3);
           
           var p4= (from p in tbl where p.Day == day select p.Period4).ToList();
          var pp4 = print(p4);


            var list = CreateListFromSingle(
               new
               {
                   day = day,
                   p1=pp1,
                   p2=pp2,
                   p3=pp3,
                   p4=pp4,
               }).FirstOrDefault();

            mm.Add(list);
        }
        GridView1.DataSource = mm;

    }

    string print(List<string> lst)
    {
        var result = "";
        foreach (string s in lst)
            result += s + " ";
        return result;
    }

     List<T> CreateListFromSingle<T>(T value)
    {
        var list = new List<T>();
        list.Add(value);
        return list;
    }

}

class AMLTable
{
    int i;
    string p1;
    string p2;
    string p3;
}