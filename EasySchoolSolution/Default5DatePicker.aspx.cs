using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5DatePicker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     //     Calendar1.DataBind();
      Roles.AddUserToRole("admin", "Admin");
     
      //  Roles.CreateRole("AddSchool");
      //  Roles.CreateRole("ConstantsAdd");
      //  Roles.CreateRole("Default");
      //  Roles.CreateRole("GeneralSettings");
      //  Roles.CreateRole("ManageSchools");
      //  Roles.CreateRole("Profile");


      ////  الاتصالات
      //    Roles.CreateRole("IncomingAdd");
      //  Roles.CreateRole("IncomingDetails");
      //  Roles.CreateRole("IncomingDisplay");
      //  Roles.CreateRole("OutcomingAdd");
      //  Roles.CreateRole("OutcomingDelivery");
      //  Roles.CreateRole("OutcomingDetails");
      //  Roles.CreateRole("OutcomingDisplay");
      //  Roles.CreateRole("TaskAdd");
      //  Roles.CreateRole("TaskDetails");
      //  Roles.CreateRole("TasksDisplay");
      //  Roles.CreateRole("UsersGeneralizaionDisplay");

        //الموظفين
          //Roles.CreateRole("Default");
        //Roles.CreateRole("MyTaskDetail");
        //Roles.CreateRole("MyTasks");
        //Roles.CreateRole("Profile");
        //Roles.CreateRole("StudentNotice"); 
        //Roles.CreateRole("StudentNotice2"); 
        //Roles.CreateRole("StudentPatients"); 
        //Roles.CreateRole("StudentPatientsDisplay"); 
        //Roles.CreateRole("MaintenanceRequest");
        //Roles.CreateRole("MaintenanceRequestDisplay");
        //Roles.CreateRole("MyGeneralizations");
        //Roles.CreateRole("MyMaintenanceRequest");
        //Roles.CreateRole("MyObligations");


        ////حضور الموظفين
        //  Roles.CreateRole("AbsenceDisplay");
        //Roles.CreateRole("AbsentAlert");
        //Roles.CreateRole("AttendenceAdd");
        //Roles.CreateRole("AttendenceReport");
        //Roles.CreateRole("LatenessDisplay");
        //Roles.CreateRole("LatnessAdd");
        //Roles.CreateRole("LatnessAlert");
        //Roles.CreateRole("PermissionAdd");
        //Roles.CreateRole("permissionDisplay");
        //Roles.CreateRole("ShiftAdd");
        //Roles.CreateRole("EmployeeWaitingAdd");
        //Roles.CreateRole("EmployeeWaitingDisplay");
        ////Roles.CreateRole("LatnessAdd");
        ////Roles.CreateRole("LatnessAlert");
        //Roles.CreateRole("PermissionClassesAdd");
        //Roles.CreateRole("PermissionClassesDisplay");


        ////التمويل
        //  Roles.CreateRole("FinanceBox");
        //Roles.CreateRole("PurchasesAdd");
        //Roles.CreateRole("required");
        //Roles.CreateRole("RevenuesAdd");


        ////استيراد
        //  Roles.CreateRole("AddEmployees");
        //Roles.CreateRole("AddStudentG");
        //Roles.CreateRole("AddStudentGrade");
        //Roles.CreateRole("AddStudentGuide");
        //Roles.CreateRole("AddStudentM");
        //Roles.CreateRole("AddStudentNumber");
        //Roles.CreateRole("AddTeachers");



        //Roles.CreateRole("CupboardRecord");
        //Roles.CreateRole("CupboardRecordDisplay");
        //Roles.CreateRole("ExperiencesDisplay");
        //Roles.CreateRole("ExperiencesDone");
        //Roles.CreateRole("ExperimentsAdd");
        //Roles.CreateRole("laboratoriesInventory");
        //Roles.CreateRole("laboratoriesInventoryDisplay");
        //Roles.CreateRole("LabRecod");
        //Roles.CreateRole("LabRecodDisplay");
        //Roles.CreateRole("MaterialDestroyAdd");
        //Roles.CreateRole("MaterialDestroyDisplay");
        //Roles.CreateRole("MaterialsAdd");
        //Roles.CreateRole("MaterialsDisplay");
        //Roles.CreateRole("ObligationAdd");
        //Roles.CreateRole("ObligationDelivery");
        //Roles.CreateRole("ObligationDisplay");
        //Roles.CreateRole("repositoryAdd");
        //Roles.CreateRole("repositoryDisplay");




        ////Roles.CreateRole("Experiments");
        ////Roles.CreateRole("MaintenanceRequest");
        //Roles.CreateRole("MissingRecord");
        //Roles.CreateRole("repositoryRecord");


        ////المكتبة
        //  Roles.CreateRole("BookAdd");
        //Roles.CreateRole("BookDisplay");
        //Roles.CreateRole("DailyVisitAdd");
        //Roles.CreateRole("DailyVisitDisplay");
        //Roles.CreateRole("DisplayBorrowOfBook");
        //Roles.CreateRole("EmployeeBorrowAdd");
        //Roles.CreateRole("EmployeeBorrowDisplay");
        //Roles.CreateRole("StudentsBorrowAdd");
        //Roles.CreateRole("StudentsBorrowsDisplay");



        //Roles.CreateRole("AddBorrowEmp");
        //Roles.CreateRole("AddDailyVisit");
        //Roles.CreateRole("BorrowsofStudents");
        //Roles.CreateRole("DisplayDailyVisit");
        //Roles.CreateRole("DisplayEmployeeBorrow");
        //Roles.CreateRole("StudentRecord");



        //الإدارة
          //Roles.CreateRole("EmployeeAdd");
       // Roles.CreateRole("EmployeeRecord");
        //Roles.CreateRole("Employees");
        //Roles.CreateRole("StudentAdd");
        //Roles.CreateRole("StudentRecord");



        ////Roles.CreateRole("StudentRecordAddd");



        ////المدرسة
        //  Roles.CreateRole("ConstantsAdd");
        //Roles.CreateRole("Jobs");
        //Roles.CreateRole("PrivateSettings");


        ////الطلاب
        //  Roles.CreateRole("StudentPatients");
        //Roles.CreateRole("StudentPatientsDisplay");


        ////حضور الطلاب
        //  Roles.CreateRole("StudentAbsenceDisplay");
        //Roles.CreateRole("StudentAttendenceAdd");
        //Roles.CreateRole("StudentAttendenceReport");
        //Roles.CreateRole("StudentLatenessDisplay");
        //Roles.CreateRole("StudentLatnessAdd");
        //Roles.CreateRole("StudentPermissionAdd");
        //Roles.CreateRole("StudentPermissionDisplay");



        ////// temp 

        ////الموظفين
        //  Roles.CreateRole("GuidProgram");
        //Roles.CreateRole("StudentNotice");
        //Roles.CreateRole("StudentNotice2");
        //Roles.CreateRole("StudentPatients");

        ////حضور الموظفين
        //  Roles.CreateRole("ShiftAdd");

        ////Laboratay
        //  Roles.CreateRole("CupboardRecord");
        //Roles.CreateRole("Experiments");
        //Roles.CreateRole("LabRecod");
        //Roles.CreateRole("MaterialDestroyAdd");
        //Roles.CreateRole("MissingRecord");
        //Roles.CreateRole("ObligationDelivery");
        //Roles.CreateRole("repositoryRecord");

        ////الطلاب
        //  Roles.CreateRole("StudentActivities");



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
    //    if (Calendar1.CultureName == "ar-SA")
    //        lbl.Text = MyDate.convertHijriToGregorian(txtDate.Text).ToString();
    //    else
    //        lbl.Text = txtDate.Text;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
   //  TimeSpan tt=   Convert.ToDateTime(txttime.Text).TimeOfDay;


        // Response.Write(Mobile.MobileSend("مرحبا", "972592805007"));
    }

    protected void Calendar2_DateChanged(object sender, EventArgs e)
    {
        lbl.Text = "AAAAAAAAAAAAAAAAAAAAa";
    }
}