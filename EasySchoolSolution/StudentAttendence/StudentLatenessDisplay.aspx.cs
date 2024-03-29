﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentAttendence_StudentLatenessDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentLatenessDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Fill();
            CalendarFrom.DataBind();
            CalendarTo.DataBind();
        }
    }

    public void Fill()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        int SchoolID = info.getId();
        var LatenessEmp = (from k in km.StudentsLatenesses
                           join p in km.Students on k.StudentId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID
                           orderby k.Date descending
                           select new
                           {
                               p.Name,
                               k.Date,
                               k.Amount
                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    public void FillByDate()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        DateTime Today = DateTime.Now.Date;
        int SchoolID = info.getId();
        var LatenessEmp = (from k in km.StudentsLatenesses
                           join p in km.Students on k.StudentId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && k.Date == Today
                           orderby k.Date descending
                           select new
                           {
                               p.Name,
                               k.Date,
                               k.Amount
                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    public void FillByLevel()
    {
        var semesterId = MyDate.getCurrentSemesterId();
        //DateTime DateFrom = Convert.ToDateTime(txtDateFrom.Text);
        //DateTime DateTo = Convert.ToDateTime(txtDateTo.Text);

        DateTime DateFrom = new DateTime(), DateTo = new DateTime();
        if (CalendarTo.CultureName == "ar-SA")
        {

            DateFrom = MyDate.convertHijriToGregorian(txtDateFrom.Text);
            DateTo = MyDate.convertHijriToGregorian(txtDateTo.Text);
        }
        else
        {
            DateFrom = DateTime.ParseExact(txtDateFrom.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));
            DateTo = DateTime.ParseExact(txtDateTo.Text, "yyyy/MM/dd", CultureInfo.CreateSpecificCulture("ar-EG"));
        }
        int SchoolID = info.getId();
        var LatenessEmp = (from k in km.StudentsLatenesses
                           join p in km.Students on k.StudentId equals p.IdentityNumber
                           where k.SemesterId == semesterId && k.SchoolId == SchoolID && k.Date>=DateFrom && k.Date<=DateTo
                           orderby k.Date descending
                           select new
                           {
                               p.Name,
                               k.Date,
                               k.Amount
                           }).ToList();

        lstLateness.DataSource = LatenessEmp;
        lstLateness.DataBind();
    }
    protected void btnShowLatenessDay_Click(object sender, EventArgs e)
    {
       FillByDate();
    }

    protected void btnShowAllLateness_Click(object sender, EventArgs e)
    {
        Fill();
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        FillByLevel();
    }
}