using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_EmployeeBorrowAdd : MyPermisionPage
{
    OnlineSchoolEntities ose = new OnlineSchoolEntities();
    string BookId;

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "EmployeeBorrowAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTodayDate.Text = MyDate.getDate();
        if (!IsPostBack)
        {
            Calendar1.DataBind();
            EmployeeName();
            FillBook();
            ddlBookName.Items.Insert(0, new ListItem("اسم الكتاب..", "-1"));
        }
    }
    public void EmployeeName()
    {
        var schoolid = new SchoolInformation().getId();
        var NameEmp = (from emp in ose.Employees where emp.SchoolId== schoolid orderby emp.Name select emp).ToList();
        ddlEmployee.DataSource = NameEmp;
        ddlEmployee.DataTextField = "Name";
        ddlEmployee.DataValueField = "IdentityNumber";
        ddlEmployee.DataBind();
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
        BorrowsofEmployee boEmp = new BorrowsofEmployee();
        boEmp.EmployeeId = ddlEmployee.SelectedValue;
        boEmp.DateBorrow = DateTime.Now;

        if(Calendar1.CultureName=="ar-SA")
        boEmp.DateReturn = MyDate.convertHijriToGregorian(txtWeek.Text);
        else
            boEmp.DateReturn = DateTime.ParseExact(txtWeek.Text,"yyyy/MM/dd",CultureInfo.CreateSpecificCulture("ar-EG"));


     //   boEmp.LibrarianId = si.getSchoolLibrarian();
        boEmp.SchoolId = si.getId();
        boEmp.BookId = int.Parse(BookIdvalue.Value);
        boEmp.SemesterId = MyDate.getCurrentSemesterId();
        boEmp.isReturn = false;
        ose.BorrowsofEmployees.Add(boEmp);
        
        var m = (from k in ose.Books where k.Id == boEmp.BookId select k).FirstOrDefault();
        if (m.AvailableNumber > 0)
        {
        m.AvailableNumber = m.AvailableNumber-1;
        ose.SaveChanges();
            lblAvalibleBook.Text = m.AvailableNumber+"";
        ClientScript.RegisterStartupScript(this.GetType(), "success", "<script> addSuccess(' تم الإضافة بنجاح'); </script>", false);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "error", "<script> addfalied('لا يوجد نسخ من هذا الكتاب للاستعارة '); </script>", false);
        }

        //lblmsg.Text = "تم الإضافة بنجاح";


    }

    public void FillBook()
    {
        var schoolid = new SchoolInformation().getId();
        if (!IsPostBack)
        {
            var book = (from k  in ose.Books where k.SchoolId== schoolid select k).ToList();
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

        var bookNameId = int.Parse(ddlBookName.SelectedValue);
        var bookId = int.Parse(ddlBookNo.SelectedValue);

        if (ddlBookNo.SelectedIndex != 0 || ddlBookName.SelectedIndex != 0)
            {
                var c = (from k in ose.Books where  k.Id == bookNameId || k.Id == bookId select k).FirstOrDefault();


            if (c.Auther !=null)
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
      
          int  idd = int.Parse(BookIdvalue.Value);
            Response.Redirect("DisplayBorrowOfBook.aspx?BookId=" + idd);
       
    }
}