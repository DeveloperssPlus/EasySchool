﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_GuidProgram : MyPermisionPage
{
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "GuidProgram";
        base.OnPreInit(e);
    }
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        GuidProgram guid = new GuidProgram();


        if (!String.IsNullOrEmpty(txtProgramName.Text))
            guid.ProgramName = txtProgramName.Text;

        if (txtDateStart.Text != null && !string.IsNullOrEmpty(txtDateStart.Text.ToString()))
        {
            if (CalendarDate.CultureName == "ar-SA")
                guid.StartDate = MyDate.convertHijriToGregorian(txtDateStart.Text);
            else
                guid.StartDate = DateTime.ParseExact(txtDateStart.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));
        }

        if (!String.IsNullOrEmpty(txtOccasion.Text))
            guid.Occasion = txtOccasion.Text;

        if (txtBenefNo.Text != null)
        {
            guid.BeneficiariesNo = Convert.ToInt32(txtBenefNo.Text);
        }

        guid.BeneficiariesType = Convert.ToInt32(ddlBenef.SelectedValue);

        if (!String.IsNullOrEmpty(txtResponsiveness.Text))
            guid.Responsiveness = txtResponsiveness.Text;

        if (txtStudentNo.Text != null)
        {
            guid.StudentNo = Convert.ToInt32(txtStudentNo.Text);
        }

        int SchoolID = SchoolInfo.getId();
        guid.SchoolId = SchoolID;

        guid.SemesterId = MyDate.getCurrentSemesterId();

        km.GuidPrograms.Add(guid);
        km.SaveChanges();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' !! تمت الاضافة بنجاح'); </script>", false);

    }
}