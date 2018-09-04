using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_StudentsBorrowAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    string BookId;

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentsBorrowAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTodayDate.Text = MyDate.getDate();
        if (!IsPostBack)
        {
            Calendar1.DataBind();
           // EmployeeName();
            FillBook();
            ddlStudentNumber.DataBind();
            ddlBookName.Items.Insert(0, new ListItem("اسم الكتاب..", "-1"));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.SelectedDate = new DateTime(0);
        DateTime today = DateTime.Now.Date;

        DateTime answer = today.AddDays(7).Date;
        txtWeek.Text = MyDate.getDate(answer.ToString());
    }

    protected void btnTwoWeek_Click(object sender, EventArgs e)
    {
        Calendar1.SelectedDate = new DateTime(0);
        DateTime today = DateTime.Now.Date;
        DateTime answer = today.AddDays(14).Date;
        txtWeek.Text = MyDate.getDate(answer.ToString());
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {

        SchoolInformation si = new SchoolInformation();
        BorrowsofStudent borrow = new BorrowsofStudent();
        borrow.StudentId = ddlStudentNumber.SelectedValue;
        borrow.DateBorrow = DateTime.Now;

        if (Calendar1.CultureName == "ar-SA")
            borrow.DateReturn = MyDate.convertHijriToGregorian(txtWeek.Text);
        else
            borrow.DateReturn = DateTime.ParseExact(txtWeek.Text, "yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));


     //   borrow.LibrarianId = si.getSchoolLibrarian();
        borrow.SchoolId = si.getId();
        borrow.isReturn = false;
        borrow.BookId = int.Parse(BookIdvalue.Value);
        borrow.SemesterId = MyDate.getCurrentSemesterId();
        km.BorrowsofStudents.Add(borrow);
        //km.SaveChanges();

        var m = (from k in km.Books where k.Id == borrow.BookId select k).FirstOrDefault();
        if (m.AvailableNumber > 0)
            m.AvailableNumber = m.AvailableNumber - 1;
            km.SaveChanges();
            ClientScript.RegisterStartupScript(this.GetType(), "success", "<script> addSuccess(' تم إضافة الاستعارة بنجاح'); </script>", false);
        ddlStudentNumber.SelectedIndex = 0;
        lblStudentName.Text = "";
        lblAvalibleBook.Text = m.AvailableNumber+"";
        Calendar1.SelectedDate = new DateTime(0);
    }

    public void FillBook()
    {
        var schoolid = new SchoolInformation().getId();
        if (!IsPostBack)
        {
            var book = (from k in km.Books where k.SchoolId == schoolid select k).ToList();
            ddlBookName.DataSource = book;
            ddlBookName.DataTextField = "Title";
            ddlBookName.DataValueField = "Id";

            ddlBookNo.DataSource = book;
            ddlBookNo.DataTextField = "BookId";
            ddlBookNo.DataValueField = "Id";

            ddlBookName.DataBind();
            ddlBookNo.DataBind();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        lblAutherName.Text = "";
        lblAvalibleBook.Text = "";

        

        if (ddlBookNo.SelectedIndex != 0 || ddlBookName.SelectedIndex != 0)
        {
            var bookNameId = int.Parse(ddlBookName.SelectedValue);
            var bookId = int.Parse(ddlBookNo.SelectedValue);

            var c = (from k in km.Books where k.Id == bookNameId || k.Id == bookId select k).FirstOrDefault();


            if (c.Auther != null)
            {
                lblAutherName.Text = c.Auther;
                lblAutherName.Visible = true;
            }
            lblBookName.Text = c.Title;
            lblBookName.Visible = true;
            lblBookId.Text = c.BookId;
            BookIdvalue.Value = c.Id.ToString();
            lblAvalibleBook.Text = c.AvailableNumber.ToString();

            if (c.AvailableNumber > 0)
            {
                PlaceHolderAddBorrow.Visible = true;
                lblError.Text = "";
            }
            else
            {
                PlaceHolderAddBorrow.Visible = false;
                lblError.Text = "لا يوجد نسخ متوفرة للاستعارة.";
            }

        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "error", "<script> addfalied('  الرجاء التأكد من رقم الكتاب'); </script>", false);
        }

        ddlBookName.SelectedIndex = 0;
        ddlBookNo.SelectedIndex = 0;

    }


    protected void ddlBookName_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillBook();
    }


    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        int idd = int.Parse(BookIdvalue.Value);
        Response.Redirect("DisplayBorrowOfBook.aspx?BookId=" + idd);

    }

    protected void ddlStudentNumber_DataBinding(object sender, EventArgs e)
    {
        var schoolid = new SchoolInformation().getId();

        var lst = (from k in km.Students where k.Id != null && k.SchoolId==schoolid  orderby k.Id select k).ToList();
        ddlStudentNumber.DataValueField = "IdentityNumber";
        ddlStudentNumber.DataTextField = "Id";
        ddlStudentNumber.DataSource = lst;
    }

    protected void ddlStudentNumber_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblStudentName.Text = (from k in km.Students where k.IdentityNumber == ddlStudentNumber.SelectedValue select k.Name).FirstOrDefault();
    }
}