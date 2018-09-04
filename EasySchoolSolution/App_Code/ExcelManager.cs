using GemBox.Spreadsheet;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ExcelManager
/// </summary>
public class ExcelManager
{

    public ExcelManager()
    {
    }

    public static void addEmployees(string path, out int countAdd, out int countEdit)
    {
        countAdd = 0;
        countEdit = 0;
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        int jobid = -1;
        //   SpreadsheetInfo.SetLicense("FREE-LIMITED-KEY");

        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.
        foreach (var worksheet in workbook.Worksheets)
        {
            //var worksheet = workbook.Worksheets.ActiveWorksheet;

            var dataSet = new DataSet();

            // first row and first column for 10 rows or until the first empty row appears.
            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 18,
                StartColumn = 0,
                NumberOfRows = 10000,
                NumberOfColumns = 35,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });

            var jobcell = worksheet.Rows[4].Cells[5].Value;

            if (jobcell != null)
            {
                string jobname = jobcell.ToString();
                jobid = (from k in km.Jobs where k.Name == jobname select k.Id).FirstOrDefault();

                if (jobname == "معلم")
                {
                    int x, y;
                    addEmployeesTeachers(dataTable, jobid, out x, out y);
                    countAdd += x;
                    countEdit += y;
                    return;
                }
            }


            //   dataTable.TableName = worksheet.Name;

            SchoolInformation info = new SchoolInformation();
            var schoolid = info.getId();
            //   MyDate mydate = new MyDate();
            for (int i = 0; i < dataTable.Rows.Count; ++i)
            {
                Employee emp = new Employee();
                if (dataTable.Rows[i][24] != null)
                    emp.IdentityNumber = dataTable.Rows[i][24].ToString();
                else
                    break;

                var ExistEmployee = (from k in km.Employees where k.IdentityNumber == emp.IdentityNumber select k).FirstOrDefault();
                if (ExistEmployee != null)
                    emp = ExistEmployee;

                if (jobid != -1)
                    emp.JobId = jobid;

                if (dataTable.Rows[i][31] != null)
                    emp.No = int.Parse(dataTable.Rows[i][31].ToString());

                if (dataTable.Rows[i][30] != null)
                    emp.Name = dataTable.Rows[i][30].ToString();

                if (dataTable.Rows[i][27] != null)
                    emp.Nationality = dataTable.Rows[i][27].ToString();

                if (dataTable.Rows[i][22] != null && !String.IsNullOrEmpty(dataTable.Rows[i][22].ToString()))
                    emp.IdentityDate = MyDate.convertHijriToGregorian(dataTable.Rows[i][22].ToString());

                if (dataTable.Rows[i][21] != null)
                    emp.Qualification = dataTable.Rows[i][21].ToString();

                if (dataTable.Rows[i][20] != null)
                    emp.YearofQualification = dataTable.Rows[i][20].ToString();

                if (dataTable.Rows[i][19] != null)
                    emp.Specification = dataTable.Rows[i][19].ToString();

                if (dataTable.Rows[i][17] != null)
                    emp.JobNumber = dataTable.Rows[i][17].ToString();

                if (dataTable.Rows[i][16] != null && !String.IsNullOrEmpty(dataTable.Rows[i][16].ToString()))
                    emp.JobStartMinistry = MyDate.convertHijriToGregorian(dataTable.Rows[i][16].ToString());

                if (dataTable.Rows[i][14] != null && !String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()))
                    emp.JobStartSchool = MyDate.convertHijriToGregorian(dataTable.Rows[i][14].ToString());

                if (dataTable.Rows[i][13] != null && !String.IsNullOrEmpty(dataTable.Rows[i][13].ToString()))
                    emp.JobStartCurrent = MyDate.convertHijriToGregorian(dataTable.Rows[i][13].ToString());

                if (dataTable.Rows[i][12] != null)
                    emp.Level = dataTable.Rows[i][12].ToString();

                if (dataTable.Rows[i][9] != null)
                    emp.Degree = dataTable.Rows[i][9].ToString();

                if (dataTable.Rows[i][7] != null)
                    emp.PhoneHome = dataTable.Rows[i][7].ToString();

                if (dataTable.Rows[i][5] != null)
                    emp.Mobile = dataTable.Rows[i][5].ToString();

                if (dataTable.Rows[i][4] != null)
                    emp.Email = dataTable.Rows[i][4].ToString();

                if (dataTable.Rows[i][3] != null)
                    emp.Comments = dataTable.Rows[i][3].ToString();

                emp.SchoolId = schoolid;

                if (ExistEmployee == null)
                {
                    km.Employees.Add(emp);
                    countAdd++;
                }
                else
                {
                    countEdit++;
                }

                km.SaveChanges();
            }
        }
    }
    public static void addEmployeesTeachers(DataTable dataTable, int jobid, out int countAdd, out int countEdit)
    {
        countAdd = 0;
        countEdit = 0;

        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();
        var schoolid = info.getId();

        for (int i = 0; i < dataTable.Rows.Count; ++i)
        {
            Employee emp = new Employee();
            if (dataTable.Rows[i][26] != null)
                emp.IdentityNumber = dataTable.Rows[i][26].ToString();
            else
                break;

            var ExistEmployee = (from k in km.Employees where k.IdentityNumber == emp.IdentityNumber select k).FirstOrDefault();
            if (ExistEmployee != null)
                emp = ExistEmployee;


            emp.JobId = jobid;

            if (dataTable.Rows[i][33] != null)
                emp.No = int.Parse(dataTable.Rows[i][33].ToString());

            if (dataTable.Rows[i][32] != null)
                emp.Name = dataTable.Rows[i][32].ToString();

            if (dataTable.Rows[i][28] != null)
                emp.Nationality = dataTable.Rows[i][28].ToString();

            if (dataTable.Rows[i][23] != null && !String.IsNullOrEmpty(dataTable.Rows[i][23].ToString()))
                emp.IdentityDate = MyDate.convertHijriToGregorian(dataTable.Rows[i][23].ToString());

            if (dataTable.Rows[i][22] != null)
                emp.Qualification = dataTable.Rows[i][22].ToString();

            if (dataTable.Rows[i][21] != null)
                emp.YearofQualification = dataTable.Rows[i][21].ToString();

            if (dataTable.Rows[i][20] != null)
                emp.Specification = dataTable.Rows[i][20].ToString();

            if (dataTable.Rows[i][19] != null)
                emp.JobNumber = dataTable.Rows[i][19].ToString();

            if (dataTable.Rows[i][17] != null && !String.IsNullOrEmpty(dataTable.Rows[i][17].ToString()))
                emp.JobStartMinistry = MyDate.convertHijriToGregorian(dataTable.Rows[i][17].ToString());

            if (dataTable.Rows[i][16] != null && !String.IsNullOrEmpty(dataTable.Rows[i][16].ToString()))
                emp.JobStartSchool = MyDate.convertHijriToGregorian(dataTable.Rows[i][16].ToString());

            if (dataTable.Rows[i][14] != null && !String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()))
                emp.JobStartCurrent = MyDate.convertHijriToGregorian(dataTable.Rows[i][14].ToString());

            if (dataTable.Rows[i][13] != null)
                emp.Level = dataTable.Rows[i][13].ToString();

            if (dataTable.Rows[i][12] != null)
                emp.Degree = dataTable.Rows[i][12].ToString();

            if (dataTable.Rows[i][9] != null)
                emp.classesNumber = dataTable.Rows[i][9].ToString();


            if (dataTable.Rows[i][7] != null)
                emp.PhoneHome = dataTable.Rows[i][7].ToString();

            if (dataTable.Rows[i][5] != null)
                emp.Mobile = dataTable.Rows[i][5].ToString();

            if (dataTable.Rows[i][4] != null)
                emp.Email = dataTable.Rows[i][4].ToString();

            if (dataTable.Rows[i][3] != null)
                emp.Comments = dataTable.Rows[i][3].ToString();

            emp.SchoolId = schoolid;
            if (ExistEmployee == null)
            {
                km.Employees.Add(emp);
                countAdd++;
            }
            else
            {
                countEdit++;
            }
            km.SaveChanges();
        }
    }

    public static void addTeachers(string path, out int countAdd, out int countEdit)
    {
        countAdd = 0;
        countEdit = 0;
        OnlineSchoolEntities km = new OnlineSchoolEntities();

        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.

        foreach (var worksheet in workbook.Worksheets)
        {

            var dataSet = new DataSet();

            // first row and first column for 10 rows or until the first empty row appears.
            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 15,
                StartColumn = 0,
                NumberOfRows = 10000,
                NumberOfColumns = 100,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });

            SchoolInformation info = new SchoolInformation();
            var schoolid = info.getId();

            for (int i = 0; i < dataTable.Rows.Count; ++i)
            {
                Teacher teacher = new Teacher();

                if (dataTable.Rows[i][24] != null)
                    teacher.IdentityNumber = dataTable.Rows[i][24].ToString();
                else
                    break;

                var ExistEmployee = (from k in km.Teachers where k.IdentityNumber == teacher.IdentityNumber select k).FirstOrDefault();
                if (ExistEmployee != null)
                    teacher = ExistEmployee;

                var emp = (from k in km.Employees where k.IdentityNumber == teacher.IdentityNumber select k).FirstOrDefault();
                var empexist = (emp != null);

                if (emp == null)
                {
                    emp = new Employee();
                    emp.IdentityNumber = teacher.IdentityNumber;
                    emp.SchoolId = schoolid;
                    var jobid = (from k in km.Jobs where k.Name == "معلم" select k.Id).FirstOrDefault();
                    emp.JobId = jobid;
                }

                teacher.SchoolId = schoolid;


                if (dataTable.Rows[i][22] != null)
                {
                    teacher.Name = dataTable.Rows[i][22].ToString();
                    emp.Name = dataTable.Rows[i][22].ToString();
                }

                if (dataTable.Rows[i][19] != null)
                    teacher.BirthLocation = dataTable.Rows[i][19].ToString();

                if (dataTable.Rows[i][18] != null && !String.IsNullOrEmpty(dataTable.Rows[i][18].ToString()))
                    teacher.BirthDate = MyDate.convertHijriToGregorian(dataTable.Rows[i][18].ToString());

                if (dataTable.Rows[i][17] != null)
                    teacher.Status = dataTable.Rows[i][17].ToString();

                if (dataTable.Rows[i][15] != null)
                    teacher.Sons = dataTable.Rows[i][15].ToString();

                if (dataTable.Rows[i][13] != null)
                    teacher.SonsYounger6 = dataTable.Rows[i][13].ToString();

                if (dataTable.Rows[i][12] != null)
                    teacher.SonsYounger24 = dataTable.Rows[i][12].ToString();

                if (dataTable.Rows[i][10] != null && !String.IsNullOrEmpty(dataTable.Rows[i][10].ToString()))
                    teacher.SonsOLder24 = dataTable.Rows[i][10].ToString();

                if (dataTable.Rows[i][8] != null && !String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()))
                {
                    teacher.Email = dataTable.Rows[i][8].ToString();
                    emp.Email = dataTable.Rows[i][8].ToString();
                }

                if (dataTable.Rows[i][7] != null && !String.IsNullOrEmpty(dataTable.Rows[i][13].ToString()))
                    teacher.MailBox = dataTable.Rows[i][7].ToString();

                if (dataTable.Rows[i][6] != null)
                    teacher.PostalCode = dataTable.Rows[i][6].ToString();

                if (dataTable.Rows[i][5] != null)
                {
                    teacher.Mobile = dataTable.Rows[i][5].ToString();
                    emp.Mobile = dataTable.Rows[i][5].ToString();
                }

                if (dataTable.Rows[i][4] != null)
                {
                    teacher.Telephon1 = dataTable.Rows[i][4].ToString();
                    emp.PhoneHome = dataTable.Rows[i][4].ToString();
                }

                if (dataTable.Rows[i][3] != null)
                    teacher.Telephon2 = dataTable.Rows[i][3].ToString();

                if (dataTable.Rows[i][2] != null)
                    teacher.Address = dataTable.Rows[i][2].ToString();


                if (ExistEmployee == null)
                    km.Teachers.Add(teacher);

                if (!empexist)
                {

                    km.Employees.Add(emp);
                    ++countAdd;
                }
                else
                {
                    ++countEdit;

                }

                km.SaveChanges();
            }
        }
    }

    public static void addStudentM(string path, out int countAdd, out int countEdit)
    {
        countAdd = 0;
        countEdit = 0;

        OnlineSchoolEntities km = new OnlineSchoolEntities();

        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.
        foreach (var worksheet in workbook.Worksheets)
        {
            var dataSet = new DataSet();

            // first row and first column for 10 rows or until the first empty row appears.
            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 16,
                StartColumn = 0,
                NumberOfRows = 10000,
                NumberOfColumns = 100,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });



            SchoolInformation info = new SchoolInformation();
            var schoolid = info.getId();
            //   MyDate mydate = new MyDate();
            for (int i = 0; i < dataTable.Rows.Count; i = i + 2)
            {
                Student std = new Student();

                if (dataTable.Rows[i][16] != null)
                    std.IdentityNumber = dataTable.Rows[i][16].ToString();
                else
                    break;

                var ExistStd = (from k in km.Students where k.IdentityNumber == std.IdentityNumber select k).FirstOrDefault();
                if (ExistStd != null)
                    std = ExistStd;

                std.SchoolId = schoolid;


                if (dataTable.Rows[i][25] != null)
                    std.Name = dataTable.Rows[i][25].ToString();

                if (dataTable.Rows[i + 1][25] != null)
                    std.NameEnglish = dataTable.Rows[i + 1][25].ToString();

                if (dataTable.Rows[i][23] != null)
                    std.Nationality = dataTable.Rows[i][23].ToString();

                if (dataTable.Rows[i + 1][23] != null)
                    std.NationalityEnglish = dataTable.Rows[i + 1][23].ToString();

                if (dataTable.Rows[i][21] != null)
                    std.Specification = dataTable.Rows[i][21].ToString();

                if (dataTable.Rows[i][19] != null)
                    std.YearofEntry = dataTable.Rows[i][19].ToString();

                if (dataTable.Rows[i][18] != null)
                    std.IdentityType = dataTable.Rows[i][18].ToString();

                if (dataTable.Rows[i][14] != null && !String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()))
                    std.IdentityDate = MyDate.convertHijriToGregorian(dataTable.Rows[i][14].ToString());

                if (dataTable.Rows[i][12] != null)
                    std.PassportNumber = dataTable.Rows[i][12].ToString();

                if (dataTable.Rows[i][10] != null && !String.IsNullOrEmpty(dataTable.Rows[i][10].ToString()))
                    std.DOB = MyDate.convertHijriToGregorian((dataTable.Rows[i][10].ToString()));

                if (dataTable.Rows[i][9] != null)
                    std.Record = dataTable.Rows[i][9].ToString();

                if (dataTable.Rows[i][4] != null)
                    std.ConstraintState = dataTable.Rows[i][4].ToString();

                if (dataTable.Rows[i][3] != null && !String.IsNullOrEmpty(dataTable.Rows[i][3].ToString()))
                    std.DateOfStart = MyDate.convertHijriToGregorian(dataTable.Rows[i][3].ToString());

                if (dataTable.Rows[i][2] != null)
                    std.Comment = dataTable.Rows[i][2].ToString();

                if (ExistStd == null)
                {
                    km.Students.Add(std);
                    countAdd++;
                }
                else
                {
                    countEdit++;
                }

                km.SaveChanges();
            }
        }
    }
    public static void addStudentG(string path, out int countAdd, out int countEdit)
    {
        countAdd = 0;
        countEdit = 0;

        OnlineSchoolEntities km = new OnlineSchoolEntities();


        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.
        foreach (var worksheet in workbook.Worksheets)
        {
            //var worksheet = workbook.Worksheets.ActiveWorksheet;

            var dataSet = new DataSet();

            // first row and first column for 10 rows or until the first empty row appears.
            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 26,
                StartColumn = 0,
                NumberOfRows = 10000,
                NumberOfColumns = 100,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });



            SchoolInformation info = new SchoolInformation();
            var schoolid = info.getId();
            //   MyDate mydate = new MyDate();
            for (int i = 0; i < dataTable.Rows.Count; i = i + 2)
            {
                Student std = new Student();

                if (dataTable.Rows[i][29] != null)
                    std.IdentityNumber = dataTable.Rows[i][29].ToString();
                else
                    break;

                var ExistStd = (from k in km.Students where k.IdentityNumber == std.IdentityNumber select k).FirstOrDefault();
                if (ExistStd != null)
                    std = ExistStd;


                std.SchoolId = schoolid;


                if (dataTable.Rows[i][39] != null)
                    std.Name = dataTable.Rows[i][39].ToString();

                if (dataTable.Rows[i + 1][39] != null)
                    std.NameEnglish = dataTable.Rows[i + 1][39].ToString();

                if (dataTable.Rows[i][35] != null)
                    std.Nationality = dataTable.Rows[i][35].ToString();

                if (dataTable.Rows[i + 1][35] != null)
                    std.NationalityEnglish = dataTable.Rows[i + 1][35].ToString();

                if (dataTable.Rows[i][32] != null)
                    std.IdentityType = dataTable.Rows[i][32].ToString();

                if (dataTable.Rows[i][28] != null && !String.IsNullOrEmpty(dataTable.Rows[i][13].ToString()))
                    std.IdentityDate = MyDate.convertHijriToGregorian(dataTable.Rows[i][28].ToString());

                if (dataTable.Rows[i][27] != null)
                    std.IdentitySource = dataTable.Rows[i][27].ToString();

                if (dataTable.Rows[i][25] != null)
                    std.PassportNumber = dataTable.Rows[i][25].ToString();

                if (dataTable.Rows[i][20] != null)
                    std.DOB = MyDate.convertHijriToGregorian(dataTable.Rows[i][20].ToString());

                if (dataTable.Rows[i][18] != null)
                    std.Record = dataTable.Rows[i][18].ToString();

                if (dataTable.Rows[i][7] != null)
                    std.ConstraintState = dataTable.Rows[i][7].ToString();

                if (dataTable.Rows[i][5] != null)
                    std.DateOfStart = MyDate.convertHijriToGregorian(dataTable.Rows[i][5].ToString());

                if (dataTable.Rows[i][3] != null)
                    std.Comment = dataTable.Rows[i][3].ToString();

                if (ExistStd == null)
                {
                    int code = 0;

                    //**************************************************************************
                    //    var schoolId = info.getId();

                    //  var schoolCode = (from k in km.Schools where k.Id == schoolid select k.OutcomingCode).FirstOrDefault();
                    //        int year = (int)(from s in km.Semesters orderby s.Id descending select s.YearH).FirstOrDefault();
                    if (dataTable.Rows[i][5] != null && !String.IsNullOrEmpty(dataTable.Rows[i][5].ToString()))
                    {
                        string date = dataTable.Rows[i][5].ToString();
                        var yearcode = int.Parse(date.Split('/').Last()) % 100;

                        var stdNumbers = new List<Student>();
                        var lststudent = (from k in km.Students
                                          where k.SchoolId == schoolid /*&& (k.Id % 100) == yearcode*/
                                          orderby k.Id descending
                                          select k).ToList();

                        foreach (Student ss in lststudent)
                        {
                            int year = ((int)ss.Id / 1000);
                            if (year == yearcode)
                            {
                                stdNumbers.Add(ss);
                            }
                        }
                        var count = stdNumbers.Count();
                        //  var LRM = ((char)0x200E).ToString();

                        if (count == 0)
                        {
                            //أول طالب في السنه
                            code = (yearcode * 1000) + 1;
                        }
                        else
                        {
                            //يكمل عد بعد الصادر السابق
                            var lastnumber = (int)stdNumbers.FirstOrDefault().Id;

                            code = lastnumber + 1;
                        }
                    }

                    //***********************************************************************************************
                    std.Id = code;
                    km.Students.Add(std);
                    countAdd++;
                }
                else
                {
                    countEdit++;
                }
                km.SaveChanges();
            }
        }
    }

    public static void addStudentNumber(string path, out int countAdd, out int countNotAdd)
    {
        countAdd = 0;
        countNotAdd = 0;

        OnlineSchoolEntities km = new OnlineSchoolEntities();

        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.
        foreach (var worksheet in workbook.Worksheets)
        {
            // var worksheet = workbook.Worksheets.ActiveWorksheet;

            var dataSet = new DataSet();

            // first row and first column for 10 rows or until the first empty row appears.
            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 14,
                StartColumn = 0,
                NumberOfRows = 1000,
                NumberOfColumns = 100,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });

            SchoolInformation info = new SchoolInformation();
            var schoolid = info.getId();

            for (int i = 0; i < dataTable.Rows.Count; i = i + 2)
            {
                //Student std = new Student();
                string name;

                if (dataTable.Rows[i][10] != null)
                    name = dataTable.Rows[i][10].ToString();
                else
                    break;

                var std = (from k in km.Students where k.Name == name select k).FirstOrDefault();
                if (std != null)
                {
                    if (dataTable.Rows[i][12] != null)
                        std.Id = int.Parse(dataTable.Rows[i][12].ToString());

                    countAdd++;
                    km.SaveChanges();
                }
                else
                {
                    countNotAdd++;
                    continue;
                }
            }
        }
    }

    public static void addStudentGuide(string path)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();

        //    SpreadsheetInfo.SetLicense("FREE-LIMITED-KEY");

        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.
        foreach (var worksheet in workbook.Worksheets)
        {
            // var worksheet = workbook.Worksheets.ActiveWorksheet;

            var dataSet = new DataSet();

            // first row and first column for 10 rows or until the first empty row appears.
            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 14,
                StartColumn = 0,
                NumberOfRows = 1000,
                NumberOfColumns = 100,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });

            SchoolInformation info = new SchoolInformation();
            var schoolid = info.getId();
            //   MyDate mydate = new MyDate();
            for (int i = 0; i < dataTable.Rows.Count; i = i + 2)
            {
                StudentsGuide guide = new StudentsGuide();

                if (dataTable.Rows[i][12] != null)
                    guide.StudentNumber = dataTable.Rows[i][12].ToString();
                else
                    break;

                var ExistStd = (from k in km.StudentsGuides where k.StudentNumber == guide.StudentNumber select k).FirstOrDefault();
                if (ExistStd != null)
                    guide = ExistStd;

                guide.SchoolId = schoolid;

                if (dataTable.Rows[i][15] != null)
                    guide.GuidName = dataTable.Rows[i][15].ToString();

                if (dataTable.Rows[i][9] != null)
                    guide.StudentName = dataTable.Rows[i][9].ToString();

                if (dataTable.Rows[i][4] != null)
                    guide.Year = dataTable.Rows[i][4].ToString();

                if (ExistStd == null)
                    km.StudentsGuides.Add(guide);

                km.SaveChanges();
            }
        }
    }

    public static void addStudentGrade(string path)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();

        //    SpreadsheetInfo.SetLicense("FREE-LIMITED-KEY");

        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.
        foreach (var worksheet in workbook.Worksheets)
        {
            //    var worksheet = workbook.Worksheets.ActiveWorksheet;

            var dataSet = new DataSet();

            var dt = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow =
                0,
                StartColumn = 0,
                NumberOfRows = 50,
                NumberOfColumns = 50,
                ExtractDataOptions = ExtractDataOptions.SkipEmptyRows
            });

            string name = dt.Rows[6][3].ToString();
            string stdClass = dt.Rows[9][3].ToString();
            int schoolid = info.getId();
            int semesterid = MyDate.getCurrentSemesterId();

            Subject subjectName = (from k in km.Subjects where k.Name == name select k).FirstOrDefault();
            var type = subjectName.Type;


            SubjectsInSemester subject = (from k in km.SubjectsInSemesters
                                          where k.SchoolId == schoolid && k.SemesterId == semesterid &&
                                          k.ClassId == stdClass && k.SubjectId == subjectName.Id
                                          select k).FirstOrDefault();


            if (subject == null)
            {
                subject = new SubjectsInSemester();
                subject.SchoolId = schoolid;
                subject.SemesterId = semesterid;
                subject.ClassId = stdClass;
                subject.SubjectId = subjectName.Id;

                km.SubjectsInSemesters.Add(subject);
                km.SaveChanges();
            }


            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 19,
                StartColumn = 0,
                NumberOfRows = 1000,
                NumberOfColumns = 100,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });


            #region Grade1
            if (type == 1)
            {
                //    var schoolid = info.getId();
                for (int i = 0; i < dataTable.Rows.Count; ++i)
                {
                    Grades1 grade = new Grades1();
                    grade.SubjectId = subject.Id;

                    // اسم الطالب
                    if (dataTable.Rows[i][22] != null)
                    {
                        var stdname = dataTable.Rows[i][22].ToString();

                        Student std = (from k in km.Students where k.Name == stdname select k).FirstOrDefault();
                        grade.StudentId = std.IdentityNumber;
                        if (std != null)
                        {
                            if (std.Id == null && dataTable.Rows[i][23] != null)
                                std.Id = int.Parse(dataTable.Rows[i][23].ToString());

                            var register = (from k in km.StudentsSubjects
                                            where
                                            k.StudentId == std.IdentityNumber &&
                                            k.SubjectId == subject.Id
                                            select k).FirstOrDefault();
                            if (register == null)
                            {
                                StudentsSubject newRegister = new StudentsSubject
                                {
                                    SubjectId = subject.Id,
                                    StudentId = std.IdentityNumber
                                };

                                km.StudentsSubjects.Add(newRegister);
                                km.SaveChanges();
                            }


                            var existGrade = (from k in km.Grades1
                                              where k.StudentId == grade.StudentId
                                              && k.SubjectId == grade.SubjectId
                                              select k).FirstOrDefault();

                            if (existGrade != null)
                                grade = existGrade;

                            //     اختبارات قصيرة نظري
                            if (dataTable.Rows[i][21] != null)
                                grade.WrittingQuiz = String.IsNullOrEmpty(dataTable.Rows[i][21].ToString()) ? 0 : float.Parse(dataTable.Rows[i][21].ToString());

                            //     البحوث والمشروعات
                            if (dataTable.Rows[i][20] != null)
                                grade.PracticalQuiz = String.IsNullOrEmpty(dataTable.Rows[i][20].ToString()) ? 0 : float.Parse(dataTable.Rows[i][20].ToString());

                            // التقارير العملية أو التجارب العملية
                            if (dataTable.Rows[i][18] != null)
                                grade.Reports = String.IsNullOrEmpty(dataTable.Rows[i][18].ToString()) ? 0 : float.Parse(dataTable.Rows[i][18].ToString());

                            // الملاحظة والمشاركة والتفاعل الصفي
                            if (dataTable.Rows[i][17] != null)
                                grade.Activities = String.IsNullOrEmpty(dataTable.Rows[i][17].ToString()) ? 0 : float.Parse(dataTable.Rows[i][17].ToString());

                            // الواجبات والمهام الأدائية                      
                            if (dataTable.Rows[i][14] != null)
                                grade.Homeworks = String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()) ? 0 : float.Parse(dataTable.Rows[i][14].ToString());

                            // ملف الأعمال
                            if (dataTable.Rows[i][11] != null)
                                grade.Works = String.IsNullOrEmpty(dataTable.Rows[i][11].ToString()) ? 0 : float.Parse(dataTable.Rows[i][11].ToString());

                            // اختبار نهائي تحريري
                            if (dataTable.Rows[i][9] != null)
                                grade.FinalWritting = String.IsNullOrEmpty(dataTable.Rows[i][9].ToString()) ? 0 : float.Parse(dataTable.Rows[i][9].ToString());

                            // اختبار نهائي عملي / شفهي
                            if (dataTable.Rows[i][7] != null)
                                grade.FinalPractical = String.IsNullOrEmpty(dataTable.Rows[i][7].ToString()) ? 0 : float.Parse(dataTable.Rows[i][7].ToString());

                            // الحضور
                            if (dataTable.Rows[i][4] != null)
                                grade.Attendence = String.IsNullOrEmpty(dataTable.Rows[i][4].ToString()) ? 0 : float.Parse(dataTable.Rows[i][4].ToString());

                            // المجموع
                            if (dataTable.Rows[i][3] != null)
                                grade.Total = String.IsNullOrEmpty(dataTable.Rows[i][3].ToString()) ? 0 : float.Parse(dataTable.Rows[i][3].ToString());

                            if (existGrade == null)
                                km.Grades1.Add(grade);
                        }
                        else
                        {
                            //الطالب غير موجود
                        }
                    }


                }

            }
            #endregion
            else
            #region Grade2
                if (type == 2)
            {

                //    var schoolid = info.getId();
                for (int i = 0; i < dataTable.Rows.Count; ++i)
                {
                    Grades2 grade = new Grades2();
                    grade.SubjectId = subject.Id;

                    // اسم الطالب
                    if (dataTable.Rows[i][21] != null)
                    {
                        var stdname = dataTable.Rows[i][21].ToString();

                        Student std = (from k in km.Students where k.Name == stdname select k).FirstOrDefault();
                        grade.StudentId = std.IdentityNumber;
                        if (std != null)
                        {
                            if (std.Id == null && dataTable.Rows[i][23] != null)
                                std.Id = int.Parse(dataTable.Rows[i][23].ToString());

                            var existGrade = (from k in km.Grades2
                                              where k.StudentId == grade.StudentId
                                              && k.SubjectId == grade.SubjectId
                                              select k).FirstOrDefault();

                            if (existGrade != null)
                                grade = existGrade;

                            // المشروعات
                            if (dataTable.Rows[i][20] != null)
                                grade.Projects = String.IsNullOrEmpty(dataTable.Rows[i][20].ToString()) ? 0 : float.Parse(dataTable.Rows[i][20].ToString());

                            // ملف الأعمال
                            if (dataTable.Rows[i][18] != null)
                                grade.Works = String.IsNullOrEmpty(dataTable.Rows[i][18].ToString()) ? 0 : float.Parse(dataTable.Rows[i][18].ToString());

                            // المشاركة والتفاعل الصفي
                            if (dataTable.Rows[i][16] != null)
                                grade.Activities = String.IsNullOrEmpty(dataTable.Rows[i][16].ToString()) ? 0 : float.Parse(dataTable.Rows[i][16].ToString());


                            // الواجبات والمهام المنزلية 
                            if (dataTable.Rows[i][14] != null)
                                grade.Homeworks = String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()) ? 0 : float.Parse(dataTable.Rows[i][14].ToString());

                            //  اختبار قصير1                 
                            if (dataTable.Rows[i][11] != null)
                                grade.Quiz1 = String.IsNullOrEmpty(dataTable.Rows[i][11].ToString()) ? 0 : float.Parse(dataTable.Rows[i][11].ToString());

                            // اختبار قصير2
                            if (dataTable.Rows[i][9] != null)
                                grade.Quiz2 = String.IsNullOrEmpty(dataTable.Rows[i][9].ToString()) ? 0 : float.Parse(dataTable.Rows[i][9].ToString());


                            // اختبار نهائية الوحدة
                            if (dataTable.Rows[i][7] != null)
                                grade.Final = String.IsNullOrEmpty(dataTable.Rows[i][7].ToString()) ? 0 : float.Parse(dataTable.Rows[i][7].ToString());

                            // الحضور
                            if (dataTable.Rows[i][5] != null)
                                grade.Attendence = String.IsNullOrEmpty(dataTable.Rows[i][5].ToString()) ? 0 : float.Parse(dataTable.Rows[i][5].ToString());

                            // المجموع
                            if (dataTable.Rows[i][3] != null)
                                grade.Total = String.IsNullOrEmpty(dataTable.Rows[i][3].ToString()) ? 0 : float.Parse(dataTable.Rows[i][3].ToString());



                            if (existGrade == null)
                                km.Grades2.Add(grade);
                        }
                        else
                        {
                            //الطالب غير موجود
                        }
                    }

                }
            }
            #endregion 
            else
            #region Grade3
                if (type == 3)
            {

                //    var schoolid = info.getId();
                for (int i = 0; i < dataTable.Rows.Count; ++i)
                {
                    Grades3 grade = new Grades3();
                    grade.SubjectId = subject.Id;

                    // اسم الطالب
                    if (dataTable.Rows[i][20] != null)
                    {
                        var stdname = dataTable.Rows[i][20].ToString();

                        Student std = (from k in km.Students where k.Name == stdname select k).FirstOrDefault();
                        grade.StudentId = std.IdentityNumber;
                        if (std != null)
                        {
                            if (std.Id == null && dataTable.Rows[i][21] != null)
                                std.Id = int.Parse(dataTable.Rows[i][21].ToString());

                            var existGrade = (from k in km.Grades3
                                              where k.StudentId == grade.StudentId
                                              && k.SubjectId == grade.SubjectId
                                              select k).FirstOrDefault();

                            if (existGrade != null)
                                grade = existGrade;

                            //     اختبارات قصيرة نظري
                            if (dataTable.Rows[i][18] != null)
                                grade.WrittingQuiz = String.IsNullOrEmpty(dataTable.Rows[i][18].ToString()) ? 0 : float.Parse(dataTable.Rows[i][18].ToString());

                            //     البحوث والمشروعات
                            if (dataTable.Rows[i][16] != null)
                                grade.Research = String.IsNullOrEmpty(dataTable.Rows[i][16].ToString()) ? 0 : float.Parse(dataTable.Rows[i][16].ToString());

                            //// الملاحظة والمشاركة والتفاعل الصفي
                            if (dataTable.Rows[i][14] != null)
                                grade.Activities = String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()) ? 0 : float.Parse(dataTable.Rows[i][14].ToString());


                            // الواجبات والمهام الأدائية                      
                            if (dataTable.Rows[i][11] != null)
                                grade.Homeworks = String.IsNullOrEmpty(dataTable.Rows[i][11].ToString()) ? 0 : float.Parse(dataTable.Rows[i][11].ToString());

                            // ملف الأعمال
                            if (dataTable.Rows[i][9] != null)
                                grade.Works = String.IsNullOrEmpty(dataTable.Rows[i][9].ToString()) ? 0 : float.Parse(dataTable.Rows[i][9].ToString());

                            // اختبار نهائي تحريري
                            if (dataTable.Rows[i][7] != null)
                                grade.FinalWritting = String.IsNullOrEmpty(dataTable.Rows[i][7].ToString()) ? 0 : float.Parse(dataTable.Rows[i][7].ToString());

                            // الحضور
                            if (dataTable.Rows[i][5] != null)
                                grade.Attendence = String.IsNullOrEmpty(dataTable.Rows[i][5].ToString()) ? 0 : float.Parse(dataTable.Rows[i][5].ToString());

                            // المجموع
                            if (dataTable.Rows[i][3] != null)
                                grade.Total = String.IsNullOrEmpty(dataTable.Rows[i][3].ToString()) ? 0 : float.Parse(dataTable.Rows[i][3].ToString());

                            if (existGrade == null)
                                km.Grades3.Add(grade);
                        }
                        else
                        {
                            //الطالب غير موجود
                        }
                    }

                }
            }
            #endregion
            else
            #region Grade4
            if (type == 4)
            {
                //    var schoolid = info.getId();
                for (int i = 0; i < dataTable.Rows.Count; ++i)
                {
                    Grades4 grade = new Grades4();
                    grade.SubjectId = subject.Id;

                    // اسم الطالب
                    if (dataTable.Rows[i][11] != null)
                    {
                        var stdname = dataTable.Rows[i][11].ToString();

                        Student std = (from k in km.Students where k.Name == stdname select k).FirstOrDefault();
                        grade.StudentId = std.IdentityNumber;
                        if (std != null)
                        {
                            if (std.Id == null && dataTable.Rows[i][14] != null)
                                std.Id = int.Parse(dataTable.Rows[i][14].ToString());

                            var existGrade = (from k in km.Grades4
                                              where k.StudentId == grade.StudentId
                                              && k.SubjectId == grade.SubjectId
                                              select k).FirstOrDefault();

                            if (existGrade != null)
                                grade = existGrade;


                            // اختبار نهائي عملي / شفهي
                            if (dataTable.Rows[i][7] != null)
                                grade.Final = String.IsNullOrEmpty(dataTable.Rows[i][7].ToString()) ? 0 : float.Parse(dataTable.Rows[i][7].ToString());

                            // الحضور
                            if (dataTable.Rows[i][5] != null)
                                grade.Attendence = String.IsNullOrEmpty(dataTable.Rows[i][5].ToString()) ? 0 : float.Parse(dataTable.Rows[i][5].ToString());

                            // المجموع
                            if (dataTable.Rows[i][3] != null)
                                grade.Total = String.IsNullOrEmpty(dataTable.Rows[i][3].ToString()) ? 0 : float.Parse(dataTable.Rows[i][3].ToString());

                            if (existGrade == null)
                                km.Grades4.Add(grade);
                        }
                        else
                        {
                            //الطالب غير موجود
                        }
                    }

                }

            }
            #endregion
            else
            #region Grade5
            if (type == 5)
            {

                //    var schoolid = info.getId();
                for (int i = 0; i < dataTable.Rows.Count; ++i)
                {
                    Grades5 grade = new Grades5();
                    grade.SubjectId = subject.Id;

                    // اسم الطالب
                    if (dataTable.Rows[i][19] != null)
                    {
                        var stdname = dataTable.Rows[i][19].ToString();

                        Student std = (from k in km.Students where k.Name == stdname select k).FirstOrDefault();
                        grade.StudentId = std.IdentityNumber;
                        if (std != null)
                        {
                            if (std.Id == null && dataTable.Rows[i][20] != null)
                                std.Id = int.Parse(dataTable.Rows[i][20].ToString());

                            var existGrade = (from k in km.Grades5
                                              where k.StudentId == grade.StudentId
                                              && k.SubjectId == grade.SubjectId
                                              select k).FirstOrDefault();

                            if (existGrade != null)
                                grade = existGrade;

                            // الانطلاق في القراءة
                            if (dataTable.Rows[i][17] != null)
                                grade.Fluency = String.IsNullOrEmpty(dataTable.Rows[i][17].ToString()) ? 0 : float.Parse(dataTable.Rows[i][17].ToString());


                            // الترتيل
                            if (dataTable.Rows[i][14] != null)
                                grade.Reading = String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()) ? 0 : float.Parse(dataTable.Rows[i][14].ToString());


                            //// الحفظ
                            if (dataTable.Rows[i][11] != null)
                                grade.Saving = String.IsNullOrEmpty(dataTable.Rows[i][11].ToString()) ? 0 : float.Parse(dataTable.Rows[i][11].ToString());

                            // // تطبيق التجويد
                            if (dataTable.Rows[i][9] != null)
                                grade.practice = String.IsNullOrEmpty(dataTable.Rows[i][9].ToString()) ? 0 : float.Parse(dataTable.Rows[i][9].ToString());


                            //  صحة القراءة
                            if (dataTable.Rows[i][7] != null)
                                grade.Correctness = String.IsNullOrEmpty(dataTable.Rows[i][7].ToString()) ? 0 : float.Parse(dataTable.Rows[i][7].ToString());

                            // الحضور
                            if (dataTable.Rows[i][5] != null)
                                grade.Attendence = String.IsNullOrEmpty(dataTable.Rows[i][5].ToString()) ? 0 : float.Parse(dataTable.Rows[i][5].ToString());

                            // المجموع
                            if (dataTable.Rows[i][3] != null)
                                grade.Total = String.IsNullOrEmpty(dataTable.Rows[i][3].ToString()) ? 0 : float.Parse(dataTable.Rows[i][3].ToString());

                            if (existGrade == null)
                                km.Grades5.Add(grade);
                        }
                        else
                        {
                            //الطالب غير موجود
                        }
                    }

                }
            }
            #endregion
            else
            #region Grade6
            if (type == 6)
            {

                //    var schoolid = info.getId();
                for (int i = 0; i < dataTable.Rows.Count; ++i)
                {
                    Grades6 grade = new Grades6();
                    grade.SubjectId = subject.Id;

                    // اسم الطالب
                    if (dataTable.Rows[i][17] != null)
                    {
                        var stdname = dataTable.Rows[i][17].ToString();

                        Student std = (from k in km.Students where k.Name == stdname select k).FirstOrDefault();
                        grade.StudentId = std.IdentityNumber;
                        if (std != null)
                        {
                            if (std.Id == null && dataTable.Rows[i][19] != null)
                                std.Id = int.Parse(dataTable.Rows[i][19].ToString());

                            var existGrade = (from k in km.Grades6
                                              where k.StudentId == grade.StudentId
                                              && k.SubjectId == grade.SubjectId
                                              select k).FirstOrDefault();

                            if (existGrade != null)
                                grade = existGrade;


                            // اللياقة الصحية والبدنية
                            if (dataTable.Rows[i][14] != null)
                                grade.Fitness = String.IsNullOrEmpty(dataTable.Rows[i][14].ToString()) ? 0 : float.Parse(dataTable.Rows[i][14].ToString());



                            // المهارات البدنية والحركية                     
                            if (dataTable.Rows[i][11] != null)
                                grade.Skills = String.IsNullOrEmpty(dataTable.Rows[i][11].ToString()) ? 0 : float.Parse(dataTable.Rows[i][11].ToString());

                            //// املاحظة تحقيق الجوانب والاتجاهات
                            if (dataTable.Rows[i][9] != null)
                                grade.Achievement = String.IsNullOrEmpty(dataTable.Rows[i][9].ToString()) ? 0 : float.Parse(dataTable.Rows[i][9].ToString());

                            // الخبرات المعرفية
                            if (dataTable.Rows[i][7] != null)
                                grade.Knowledge = String.IsNullOrEmpty(dataTable.Rows[i][7].ToString()) ? 0 : float.Parse(dataTable.Rows[i][7].ToString());

                            // الحضور
                            if (dataTable.Rows[i][5] != null)
                                grade.Attendence = String.IsNullOrEmpty(dataTable.Rows[i][5].ToString()) ? 0 : float.Parse(dataTable.Rows[i][5].ToString());

                            // المجموع
                            if (dataTable.Rows[i][3] != null)
                                grade.Total = String.IsNullOrEmpty(dataTable.Rows[i][3].ToString()) ? 0 : float.Parse(dataTable.Rows[i][3].ToString());

                            if (existGrade == null)
                                km.Grades6.Add(grade);
                        }
                        else
                        {
                            //الطالب غير موجود
                        }
                    }

                }
            }

            #endregion


            var count = 20 + dataTable.Rows.Count;

            var row = worksheet.Rows.ElementAtOrDefault(count);
            string teacher = row.Cells[10].Value.ToString();
            var ss = teacher.Split(' ').Skip(2).ToList();
            var teacherName = "";
            foreach (string s in ss)
            {
                teacherName += s + " ";
            }
            teacher = teacherName.Trim();

            var idd = (from k in km.Teachers where k.Name == teacher select k.IdentityNumber).FirstOrDefault();
            subject.TeacherId = idd;

            km.SaveChanges();

        }
    }

    public static void addStudentRate(string path, out int countAdd)
    {
        int semesterid = MyDate.getCurrentSemesterId();
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();
        countAdd = 0;


        //    SpreadsheetInfo.SetLicense("FREE-LIMITED-KEY");

        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.
        foreach (var worksheet in workbook.Worksheets)
        {
            //    var worksheet = workbook.Worksheets.ActiveWorksheet;

            var dataSet = new DataSet();

            int schoolid = info.getId();

            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 14,
                StartColumn = 0,
                NumberOfRows = 1000,
                NumberOfColumns = 100,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });

            if (dataTable.Rows[0][3] != null)
            {
                var stdname = dataTable.Rows[0][3].ToString();

                Student std = (from k in km.Students where k.Name == stdname select k).FirstOrDefault();
                //      grade.StudentId = std.IdentityNumber;
                if (std != null)
                {
                    if (std.Id == null && dataTable.Rows[0][10] != null)
                        std.Id = int.Parse(dataTable.Rows[0][10].ToString());

                    SubjectsInSemester subject;
                    StudentsSubject stdSubject;

                    //    var schoolid = info.getId();
                    for (int i = 1; i < dataTable.Rows.Count; ++i)
                    {
                        if (dataTable.Rows[i][3] != null)
                        {
                            string sname = dataTable.Rows[i][3] + "";
                            var subjectName = (from k in km.Subjects where k.Name == sname select k).FirstOrDefault();

                            if (subjectName == null)
                            {
                                subjectName = new Subject()
                                {
                                    Name = dataTable.Rows[i][3] + ""
                                };
                                km.Subjects.Add(subjectName);
                                km.SaveChanges();

                                subject = new SubjectsInSemester()
                                {
                                    SchoolId = schoolid,
                                    SemesterId = semesterid,
                                    SubjectId = subjectName.Id
                                };
                                km.SubjectsInSemesters.Add(subject);
                                km.SaveChanges();

                                stdSubject = new StudentsSubject()
                                {
                                    StudentId = std.IdentityNumber,
                                    SubjectId = subject.Id,
                                };
                                if (dataTable.Rows[i][1] != null)
                                {
                                    stdSubject.Rate = dataTable.Rows[i][1].ToString();
                                    countAdd++;

                                }

                                km.StudentsSubjects.Add(stdSubject);
                                km.SaveChanges();


                            }
                            else
                            {
                                subject = (from k in km.SubjectsInSemesters
                                           join s in km.Subjects on k.SubjectId equals s.Id
                                           where k.SchoolId == schoolid && k.SemesterId == semesterid &&
                                           s.Name == subjectName.Name
                                           select k).FirstOrDefault();

                                if (subject == null)
                                {
                                    subject = new SubjectsInSemester()
                                    {
                                        SchoolId = schoolid,
                                        SemesterId = semesterid,
                                        SubjectId = subjectName.Id
                                    };
                                    km.SubjectsInSemesters.Add(subject);
                                    km.SaveChanges();


                                    stdSubject = new StudentsSubject()
                                    {
                                        StudentId = std.IdentityNumber,
                                        SubjectId = subject.Id,
                                    };
                                    if (dataTable.Rows[i][1] != null)
                                    {
                                        stdSubject.Rate = dataTable.Rows[i][1].ToString();
                                        countAdd++;

                                    }

                                    km.StudentsSubjects.Add(stdSubject);
                                    km.SaveChanges();
                                }
                                else
                                {

                                    stdSubject = (from k in km.StudentsSubjects where k.StudentId == std.IdentityNumber && k.SubjectId == subject.Id select k).FirstOrDefault();
                                    if (stdSubject == null)
                                    {

                                        stdSubject = new StudentsSubject()
                                        {
                                            StudentId = std.IdentityNumber,
                                            SubjectId = subject.Id,
                                        };
                                        if (dataTable.Rows[i][1] != null)
                                        {
                                            stdSubject.Rate = dataTable.Rows[i][1].ToString();
                                            countAdd++;

                                        }

                                        km.StudentsSubjects.Add(stdSubject);
                                        km.SaveChanges();
                                    }
                                    else
                                    {

                                        if (dataTable.Rows[i][1] != null)
                                        {
                                            stdSubject.Rate = dataTable.Rows[i][1].ToString();
                                            countAdd++;
                                        }
                                        km.SaveChanges();
                                    }

                                }
                            }

                        }
                    }
                }
                else
                {
                    //الطالب غير موجود
                }
            }
        }
    }

    public static void addTables(string path)
    {
        int semesterid = MyDate.getCurrentSemesterId();
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();

        // Load Excel file.
        var workbook = ExcelFile.Load(HttpContext.Current.Server.MapPath(path));

        // Select active worksheet.
        foreach (var worksheet in workbook.Worksheets)
        {
            //    var worksheet = workbook.Worksheets.ActiveWorksheet;

            var dataSet = new DataSet();

            int schoolid = info.getId();

            var dataTable = worksheet.CreateDataTable(new CreateDataTableOptions()
            {
                StartRow = 16,
                StartColumn = 0,
                NumberOfRows = 10000,
                NumberOfColumns = 100,
                ExtractDataOptions = ExtractDataOptions.StopAtFirstEmptyRow
            });

            for (int i = 0; i < dataTable.Rows.Count; i = i + 5)
            {

                if (dataTable.Rows[i][26] != null )
                {
                    var stdname = dataTable.Rows[0][26].ToString();

                    Student std = (from k in km.Students where k.Name == stdname select k).FirstOrDefault();
                    //      grade.StudentId = std.IdentityNumber;
                    if (std != null)
                    {
                        if (std.Id == null && dataTable.Rows[i][27] != null)
                            std.Id = int.Parse(dataTable.Rows[i][27].ToString());

                        //    int count = 1;
                        #region Sunday

                        for (int j = 0; j < 5; ++j)
                        {
                            var day = j+1;
                            int count = i + j;
                            #region  period1
                            if (dataTable.Rows[count][24] != null && !string.IsNullOrEmpty(dataTable.Rows[count][24].ToString()))
                            {
                                var sname = dataTable.Rows[count][24].ToString();

                                //var subjectName = (from k in km.Subjects
                                //                   join x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                //                   where sname.Contains(k.Name.Trim()) && sname.Contains(x.ClassId.Trim())
                                //                   && x.SemesterId == semesterid && x.SchoolId == schoolid
                                //                   select x).FirstOrDefault();

                                var subjectId = getSubjectId(sname);
                                SubjectTable tbl = (from k in km.SubjectTables
                                                    where k.subjectId == subjectId && k.Day == day
                                                    select k).FirstOrDefault();
                                if (tbl == null)
                                {
                                    tbl = new SubjectTable()
                                    {
                                        SchoolId = schoolid,
                                        subjectId = subjectId,
                                        Day = day

                                    };
                                    km.SubjectTables.Add(tbl);
                                }

                                if (dataTable.Rows[count][23] != null)
                                    tbl.Period1 = dataTable.Rows[count][23].ToString();
                                //tbl.

                            }
                            #endregion

                            #region  period2
                            if (dataTable.Rows[count][22] != null && !string.IsNullOrEmpty(dataTable.Rows[count][22].ToString()))
                            {
                                var sname = dataTable.Rows[count][22].ToString();
                                //var subjectName = (from k in km.Subjects
                                //                   join x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                //                   where sname.Contains(k.Name.Trim()) && sname.Contains(x.ClassId.Trim())
                                //                   && x.SemesterId == semesterid && x.SchoolId == schoolid
                                //                   select x).FirstOrDefault();

                                var subjectId = getSubjectId(sname);

                                SubjectTable tbl = (from k in km.SubjectTables
                                                    where k.subjectId == subjectId && k.Day == day
                                                    select k).FirstOrDefault();
                                if (tbl == null)
                                {
                                    tbl = new SubjectTable()
                                    {
                                        SchoolId = schoolid,
                                        subjectId = subjectId,
                                        Day = day
                                    };
                                    km.SubjectTables.Add(tbl);

                                }

                                if (dataTable.Rows[count][21] != null)
                                    tbl.Period2 = dataTable.Rows[count][21].ToString();


                            }
                            #endregion

                            #region  period3
                            if (dataTable.Rows[count][20] != null && !string.IsNullOrEmpty(dataTable.Rows[count][20].ToString()))
                            {
                                var sname = dataTable.Rows[count][20].ToString();
                                //var subjectName = (from k in km.Subjects
                                //                   join
                                //x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                //                      where sname.Contains(k.Name.Trim()) && sname.Contains(x.ClassId.Trim())
                                //                      && x.SemesterId == semesterid && x.SchoolId == schoolid
                                //                      select x).FirstOrDefault();

                                var subjectId = getSubjectId(sname);

                                SubjectTable tbl = (from k in km.SubjectTables
                                                    where k.subjectId == subjectId  && k.Day == day
                                                    select k).FirstOrDefault();
                                if (tbl == null)
                                {
                                    tbl = new SubjectTable()
                                    {
                                        SchoolId = schoolid,
                                        subjectId = subjectId,
                                        Day = day
                                    };
                                    km.SubjectTables.Add(tbl);

                                }

                                if (dataTable.Rows[count][17] != null)
                                    tbl.Period3 = dataTable.Rows[count][17].ToString();
                            }
                            #endregion

                            #region  period4
                            if (dataTable.Rows[count][16] != null && !string.IsNullOrEmpty(dataTable.Rows[count][16].ToString()))
                            {
                                var sname = dataTable.Rows[count][16].ToString();
                                //var subjectName = (from k in km.Subjects
                                //                   join       x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                //                   where sname.Contains(k.Name.Trim()) && sname.Contains(x.ClassId.Trim())
                                //                   && x.SemesterId == semesterid && x.SchoolId == schoolid
                                //                   select x).FirstOrDefault();
                                var subjectId = getSubjectId(sname);

                                SubjectTable tbl = (from k in km.SubjectTables
                                                    where k.subjectId == subjectId && k.Day == day
                                                    select k).FirstOrDefault();
                                if (tbl == null)
                                {
                                    tbl = new SubjectTable()
                                    {
                                        SchoolId = schoolid,
                                        subjectId = subjectId,
                                        Day = day
                                    };
                                    km.SubjectTables.Add(tbl);

                                }

                                if (dataTable.Rows[count][15] != null)
                                    tbl.Period4 = dataTable.Rows[count][15].ToString();

                            }
                            #endregion

                            #region  period5

                            if (dataTable.Rows[count][13] != null && !string.IsNullOrEmpty(dataTable.Rows[count][13].ToString()))
                            {
                                var sname = dataTable.Rows[count][13].ToString();
                                //   var subjectName = (from k in km.Subjects
                                //                      join
                                //x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                //                      where sname.Contains(k.Name.Trim()) && sname.Contains(x.ClassId.Trim())
                                //                      && x.SemesterId == semesterid && x.SchoolId == schoolid
                                //                      select x).FirstOrDefault();
                                var subjectId = getSubjectId(sname);

                                SubjectTable tbl = (from k in km.SubjectTables
                                                    where k.subjectId == subjectId && k.Day == day
                                                    select k).FirstOrDefault();
                                if (tbl == null)
                                {
                                    tbl = new SubjectTable()
                                    {
                                        SchoolId = schoolid,
                                        subjectId = subjectId,
                                        Day = day
                                    };
                                    km.SubjectTables.Add(tbl);

                                }

                                if (dataTable.Rows[count][11] != null)
                                    tbl.Period5 = dataTable.Rows[count][11].ToString();

                            }
                            #endregion

                            #region  period6
                            if (dataTable.Rows[count][9] != null && !string.IsNullOrEmpty(dataTable.Rows[count][9].ToString()))
                            {
                                var sname = dataTable.Rows[count][9].ToString();
                                //   var subjectName = (from k in km.Subjects
                                //                      join
                                //x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                //                      where sname.Contains(k.Name.Trim()) && sname.Contains(x.ClassId.Trim())
                                //                      && x.SemesterId == semesterid && x.SchoolId == schoolid
                                //                      select x).FirstOrDefault();
                                var subjectId = getSubjectId(sname);

                                SubjectTable tbl = (from k in km.SubjectTables
                                                    where k.subjectId == subjectId && k.Day == day
                                                    select k).FirstOrDefault();
                                if (tbl == null)
                                {
                                    tbl = new SubjectTable()
                                    {
                                        SchoolId = schoolid,
                                        subjectId = subjectId,
                                        Day = day
                                    };
                                    km.SubjectTables.Add(tbl);

                                }

                                if (dataTable.Rows[count][7] != null)
                                    tbl.Period6 = dataTable.Rows[count][7].ToString();

                            }
                            #endregion

                            #region  period7
                            if (dataTable.Rows[count][5] != null && !string.IsNullOrEmpty(dataTable.Rows[count][5].ToString()))
                            {
                                var sname = dataTable.Rows[count][5].ToString();
                                //   var subjectName = (from k in km.Subjects
                                //                      join
                                //x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                //                      where sname.Contains(k.Name.Trim()) && sname.Contains(x.ClassId.Trim())
                                //                      && x.SemesterId == semesterid && x.SchoolId == schoolid
                                //                      select x).FirstOrDefault();
                                var subjectId = getSubjectId(sname);

                                SubjectTable tbl = (from k in km.SubjectTables
                                                    where k.subjectId == subjectId && k.Day == day
                                                    select k).FirstOrDefault();
                                if (tbl == null)
                                {
                                    tbl = new SubjectTable()
                                    {
                                        SchoolId = schoolid,
                                        subjectId = subjectId,
                                        Day = day
                                    };
                                    km.SubjectTables.Add(tbl);

                                }

                                if (dataTable.Rows[count][3] != null)
                                    tbl.Period7 = dataTable.Rows[count][3].ToString();
                                //tbl.

                            }
                            #endregion

                            #region  period8
                            if (dataTable.Rows[count][2] != null && !string.IsNullOrEmpty(dataTable.Rows[count][2].ToString()))
                            {
                                var sname = dataTable.Rows[count][2].ToString();
                                //   var subjectName = (from k in km.Subjects
                                //                      join
                                //x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                //                      where sname.Contains(k.Name.Trim()) && sname.Contains(x.ClassId.Trim())
                                //                      && x.SemesterId == semesterid && x.SchoolId == schoolid
                                //                      select x).FirstOrDefault();
                                var subjectId = getSubjectId(sname);

                                SubjectTable tbl = (from k in km.SubjectTables
                                                    where k.subjectId == subjectId && k.Day == day
                                                    select k).FirstOrDefault();
                                if (tbl == null)
                                {
                                    tbl = new SubjectTable()
                                    {
                                        SchoolId = schoolid,
                                        subjectId = subjectId,
                                        Day = day
                                    };
                                    km.SubjectTables.Add(tbl);
                                }

                                if (dataTable.Rows[count][1] != null)
                                    tbl.Period8 = dataTable.Rows[count][1].ToString();
                            }

                            km.SaveChanges();
                            #endregion
                        }
                        #endregion

                       
                    }

                    else
                    {
                        //الطالب غير موجود
                    }
                }
            }
        }
    }


    private static int getSubjectId(string name)
    {
       string subjectName = "";
       string  classId = "";
  //   
        int semesterid = MyDate.getCurrentSemesterId();
        int schoolid = new SchoolInformation().getId();

        string[] lst = name.Split(' ');
        var count = 0;
        for(count=0;count<lst.Length;++count)
        {
            if (lst[count] == "الشعبة")
                break;
        }
        for(int i = 0; i < count; ++i)
        {
            subjectName += lst[i]+" ";
        }
        subjectName = subjectName.Trim();

        for (int i =count ; i < lst.Length; ++i)
        {
            classId += lst[i] + " ";
        }

        classId = classId.Trim();

        OnlineSchoolEntities km = new OnlineSchoolEntities();
       
          var      subject = (from k in km.Subjects
                                  join x in km.SubjectsInSemesters on k.Id equals x.SubjectId
                                  where k.Name.Trim()== subjectName && x.ClassId.Trim()== classId
                                  && x.SemesterId == semesterid && x.SchoolId == schoolid
                                  select x).FirstOrDefault();

        if (subject == null)
        {
            return -1;
        }
        int subjectId = subject.Id;
        return subjectId;
    }

}