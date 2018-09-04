using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GemBox.Document;
using System.Net;
using System.Data.Entity.Validation;
using System.Globalization;

public partial class Communication_OutcomingAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "OutcomingAdd";
        base.OnPreInit(e);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Clear();
            ddlType.DataBind();
            ddlFileAttach.DataBind();
            ddlSourceFrom.DataBind();
            ddlSourceTo.DataBind();
            txtEditor.Language = "ar";

            var schoolId = info.getId();

            var schoolCode = (from k in km.Schools where k.Id == schoolId select k.OutcomingCode).FirstOrDefault();
            int year = (int)(from s in km.Semesters orderby s.Id descending select s.YearH).FirstOrDefault();
            string yearcode = (year % 100).ToString();
            var outcomingList = (from k in km.Outcomings where k.SchoolId == schoolId && k.IsDeleted == false && k.Number.Contains("/" + yearcode + "/") orderby k.Id descending select k).ToList();
       
            var count = outcomingList.Count();
            string code="";
            var LRM = ((char)0x200E).ToString();

            if (count == 0)
            {
                //أول صادر في السنه
                code = schoolCode+"/" +LRM+ yearcode + "/" + 1;
            }
            else
            {
                //يكمل عد بعد الصادر السابق
                var lastnumber = outcomingList.FirstOrDefault().Number;
                int c = int.Parse(lastnumber.Split('/').Last())+1;
                code = schoolCode + "/" + LRM + yearcode + "/" + c;
            }

            txtOutcomingID.Text = code;

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                var c = (from k in km.Outcomings where k.Id == id select k).FirstOrDefault();

                txtOutcomingID.Text = c.Number.ToString();
                txtFileNumber.Text = c.FileNumber.ToString();
                ddlSourceFrom.SelectedValue = c.SourceFrom.ToString();
                ddlSourceTo.SelectedValue = c.SourceTo.ToString();
                ddlType.SelectedValue = c.Type.ToString();
                ddlFileAttach.Text = c.Attachment.ToString();
                txtTitle.Text = c.Subject;
                txtEditor.Text = c.Text;

                btnAdd.Text = "تعديل الصادر";
            }
            else
            {
                btnAdd.Text = "تسجيل الصادر";
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int SchoolID = info.getId();
        if (btnAdd.Text == "تسجيل الصادر")
        {
            try
            {
                Outcoming outc = new Outcoming();
                outc.Number = txtOutcomingID.Text;
                outc.SourceFrom = int.Parse(ddlSourceFrom.SelectedValue);
                outc.SourceTo = int.Parse(ddlSourceTo.SelectedValue);
                outc.Subject = txtTitle.Text;
                outc.FileNumber = txtFileNumber.Text;
                outc.Type = int.Parse(ddlType.SelectedValue);
                outc.Attachment = int.Parse(ddlFileAttach.SelectedValue);
                outc.SchoolId = SchoolID;
                outc.SemesterId = MyDate.getCurrentSemesterId();
                outc.Text = txtEditor.Text;
                outc.Date = DateTime.Now;
                outc.IsDeleted = false;
                km.Outcomings.Add(outc);
                km.SaveChanges();
                ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);
                //lblerror.Text = "تم الاضافة بنجاح";
                //OutId.Value = outc.Id.ToString();
                ////lnkTask.NavigateUrl = "~/Communication/TaskAdd.aspx?type=Outcoming&typeId=" + outc.Id;
                //PlaceHolderSuccess.Visible = true;

            }
            catch (DbEntityValidationException ex)
            {
                foreach (var eve in ex.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }
        else
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            var c = (from k in km.Outcomings where k.Id == id select k).FirstOrDefault();

            c.Number = txtOutcomingID.Text;
            c.FileNumber = txtFileNumber.Text;
            c.SourceTo = int.Parse(ddlSourceFrom.SelectedValue);
            c.SourceTo = int.Parse(ddlSourceTo.SelectedValue);
            c.Subject = txtTitle.Text;
            c.Type = int.Parse(ddlType.SelectedValue);
            c.Attachment = int.Parse(ddlFileAttach.SelectedValue);
            c.Text = txtEditor.Text;
            km.SaveChanges();
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        refresh();
    }

    void refresh()
    {
        var select = RadioTemplate.SelectedValue;

        if (select == "0")
        {
            Session["textTemplate"] = txtEditor.Text;


            if (Session["textEmpty"] != null)
                txtEditor.Text = Session["textEmpty"].ToString();
            else
                txtEditor.Text = "";

        }
        else
        {
            Session["textEmpty"] = txtEditor.Text;


            var htmlEncoded = (from k in km.Settings where k.KKey == "template" select k.KVal).FirstOrDefault();

            var title = txtTitle.Text;
            var number = txtOutcomingID.Text;
            var type = ddlType.SelectedItem.Text;
            var date = MyDate.getDate();
            var to = ddlSourceTo.SelectedItem.Text;
            var from = ddlSourceFrom.SelectedItem.Text;
            var logo = "../" + info.getLogo();
            var manager = info.getSchoolManager();
            var text = string.Format(htmlEncoded, logo, title, number, type, date, to, from, title, manager);
            txtEditor.Text = text;
            txtEditor.DataBind();

        }
    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {
        Session["content"] = txtEditor.Text;
        //Response.Redirect("~/OutcomingPreview.aspx");

        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "<script> prepareFrame('../OutcomingPreview.aspx') </script>", false);
        //ClientScript.RegisterClientScriptBlock(this.GetType(), "openTicketsScript", "<script type=\'type/javascript\'>$(document).ready(function(){openticketPageLoad(" + Request.QueryString["ID"].ToString() + ");});</script>".ToString(), true);
    }


    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        refresh();
    }

    protected void btnno_Click(object sender, EventArgs e)
    {
       // PlaceHolderSuccess.Visible = false;
    }

    protected void btnok_Click(object sender, EventArgs e)
    {
       // Response.Redirect("~/Communication/TaskAdd.aspx?type=Outcoming&typeId=" + OutId.Value);
    }
}