using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImportExcel_AddStudentRates : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "AddStudentRates";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        SchoolInformation info = new SchoolInformation();
        var schoolid = info.getId();
        var semesterid = MyDate.getCurrentSemesterId();

        OnlineSchoolEntities km = new OnlineSchoolEntities();
        var studentlist = (from k in km.StudentsSubjects
                           join s in km.SubjectsInSemesters on k.SubjectId equals s.Id
                           join x in km.Students on k.StudentId equals x.IdentityNumber
                           where s.SchoolId == schoolid && s.SemesterId== semesterid
                           orderby x.Name
                           select new
                           {
                               stdId =x.Id,
                               Name=x.Name,
                               x.IdentityNumber,
                               subject=(from m in km.Subjects where m.Id==s.SubjectId select m.Name).FirstOrDefault(),
                               rate=k.Rate
                           }  
                           ).ToList();

        ListView1.DataSource = studentlist;
        ListView1.DataBind();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int add = 0, edit = 0;

        if (FileUpload1.HasFiles)
            {
                foreach (var file in FileUpload1.PostedFiles)
                {
                    var extention = Path.GetExtension(file.FileName);
                    if (extention == ".xlsx" || extention == ".xls")
                    {
                        var path = "~/Excel/" + Guid.NewGuid() + extention;
                        FileUpload1.PostedFile.SaveAs(MapPath(path));

                    //try
                    //{
                        ExcelManager.addStudentRate(path, out add);
                        lblSuccess.Text = "تم اضافة " + add + " حالة دراسية بنجاح ";
                        placeHolderSuccess.Visible = true;
                        placeHolderError.Visible = false;
                        ListView1.DataBind();

                    //}
                    //catch (Exception ex)
                    //{
                    //    var ee = ex;
                    //    ltrError.Text = "لقد حدث خطأ في ملف </strong> " + file.FileName + "</strong> الرجاء التأكد من الملفات المرفقة";
                    //    placeHolderSuccess.Visible = false;
                    //    placeHolderError.Visible = true;
                    //}
                }
                    else
                    {
                        ltrError.Text = "لقد حدث خطأ في ملف </strong> " + file.FileName + "</strong> الرجاء التأكد من امتداد الملف";

                        placeHolderSuccess.Visible = false;
                        placeHolderError.Visible = true;
                    }
                }

            }
    }

    protected void btnok_Click(object sender, EventArgs e)
    {
        placeHolderSuccess.Visible = false;
        placeHolderError.Visible = false;
    }
}