using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_DisplayBorrowOfBook : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    int counter = 0;
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "DisplayBorrowOfBook";
        base.OnPreInit(e);
    }
    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Request.QueryString["BookId"] != null)
        {
            int Bookid = int.Parse(Request.QueryString["BookId"]);
            lblname.Text = (from b in km.Books where b.Id == Bookid select b.Title).FirstOrDefault();

            FillBorrowNotReturn();
    }
}


public void FillBorrowNotReturn()
    {
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();

     
           if (Request.QueryString["BookId"] != null)
        {
   int Bookid = int.Parse(Request.QueryString["BookId"]);
        var preInfo = (from k in km.BorrowsofEmployees
                       join emp in km.Employees on k.EmployeeId equals emp.IdentityNumber
                       where  k.SchoolId == schoolId && k.SemesterId == semesterId && k.isReturn == false
                       && k.BookId==Bookid
                       orderby k.DateReturn, k.DateBorrow
                       select new
                       {
                           k.Id,
                           emp.Name,
                           k.DateReturn,
                           k.DateBorrow,
                           k.BookId,
                           auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                           bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                           k.isReturn
                       }).ToList();

        LstEmployeeBorrow.DataSource = preInfo;
        LstEmployeeBorrow.DataBind();


        var preInfo2 = (from k in km.BorrowsofStudents
                       join emp in km.Students on k.StudentId equals emp.IdentityNumber
                       where k.SchoolId == schoolId && k.SemesterId == semesterId && k.isReturn == false
                       && k.BookId == Bookid
                        orderby k.DateReturn, k.DateBorrow
                       select new
                       {
                           k.Id,
                           emp.Name,
                           k.DateReturn,
                           k.DateBorrow,
                           k.BookId,
                           auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                           bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                           k.isReturn
                       }).ToList();

        LstStudentsBorrow.DataSource = preInfo2;
        LstStudentsBorrow.DataBind();
    }
        }

    protected void LstEmployeeBorrow_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

        Label lblStatus = (Label)(e.Item.FindControl("lblStatus"));
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            bool currentIsReturn = Convert.ToBoolean(DataBinder.Eval(e.Item.DataItem, "isReturn").ToString());
            DateTime currentReturnDate = Convert.ToDateTime(DataBinder.Eval(e.Item.DataItem, "DateReturn").ToString());

            if (currentIsReturn == true)
            {
                lblStatus.Text = "مرجع";
                lblStatus.CssClass = "label label-success inline";
            }
            else
            {
                if (currentReturnDate >= DateTime.Now)
                {
                    lblStatus.Text = "غير مرجع";
                    lblStatus.CssClass = "label label-warning inline";
                }
                else
                {
                    lblStatus.Text = "متأخر";
                    lblStatus.CssClass = "label label-danger inline";
                }
            }


        }
    }

    protected void btnAll_Click(object sender, EventArgs e)
    {
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
        //     var LibrarianId = info.getSchoolLibrarian();

      
        if (Request.QueryString["BookId"] != null)
        {
  int Bookid = int.Parse(Request.QueryString["BookId"]);
            var preInfo = (from k in km.BorrowsofEmployees
                           join emp in km.Employees on k.EmployeeId equals emp.IdentityNumber
                           where k.SchoolId == schoolId && k.SemesterId == semesterId && k.BookId == Bookid
                           orderby k.DateReturn, k.DateBorrow
                           select new
                           {
                           k.Id,
                               emp.Name,
                               k.DateReturn,
                               k.DateBorrow,
                               k.BookId,
                               auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                               bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                               k.isReturn
                           }).ToList();

            LstEmployeeBorrow.DataSource = preInfo;
            LstEmployeeBorrow.DataBind();


            var preInfo2 = (from k in km.BorrowsofStudents
                            join emp in km.Students on k.StudentId equals emp.IdentityNumber
                            where k.SchoolId == schoolId && k.SemesterId == semesterId && k.BookId == Bookid
                            orderby k.DateReturn, k.DateBorrow
                            select new
                            {
                           k.Id,
                                emp.Name,
                                k.DateReturn,
                                k.DateBorrow,
                                k.BookId,
                                auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                                bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                                k.isReturn
                            }).ToList();

            LstStudentsBorrow.DataSource = preInfo2;
            LstStudentsBorrow.DataBind();
        }
    }

    protected void btnNotReturn_Click(object sender, EventArgs e)
    {
        FillBorrowNotReturn();
    }

    protected void btnLate_Click(object sender, EventArgs e)
    {
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
        //     var LibrarianId = info.getSchoolLibrarian();

        if (Request.QueryString["BookId"] != null)
        {
        int Bookid = int.Parse(Request.QueryString["BookId"]);

            var preInfo = (from k in km.BorrowsofEmployees
                           join emp in km.Employees on k.EmployeeId equals emp.IdentityNumber
                           where k.SchoolId == schoolId && k.SemesterId == semesterId
                           && k.isReturn == false && k.DateReturn < DateTime.Now && k.BookId == Bookid
                           orderby k.DateReturn, k.DateBorrow
                           select new
                           {
                           k.Id,
                               emp.Name,
                               k.DateReturn,
                               k.DateBorrow,
                               k.BookId,
                               auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                               bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                               k.isReturn
                           }).ToList();

            LstEmployeeBorrow.DataSource = preInfo;
            LstEmployeeBorrow.DataBind();

            var preInfo2 = (from k in km.BorrowsofStudents
                            join emp in km.Students on k.StudentId equals emp.IdentityNumber
                            where k.SchoolId == schoolId && k.SemesterId == semesterId
                            && k.isReturn == false && k.DateReturn < DateTime.Now && k.BookId == Bookid
                            orderby k.DateReturn, k.DateBorrow
                            select new
                            {
                           k.Id,
                                emp.Name,
                                k.DateReturn,
                                k.DateBorrow,
                                k.BookId,
                                auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                                bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                                k.isReturn
                            }).ToList();

            LstStudentsBorrow.DataSource = preInfo2;
            LstStudentsBorrow.DataBind();
        }
    }
    protected void LstStudentsBorrow_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        Label lblStatus = (Label)(e.Item.FindControl("lblStatus"));
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;

        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            bool currentIsReturn = Convert.ToBoolean(DataBinder.Eval(e.Item.DataItem, "isReturn").ToString());
            DateTime currentReturnDate = Convert.ToDateTime(DataBinder.Eval(e.Item.DataItem, "DateReturn").ToString());

            if (currentIsReturn == true)
            {
                lblStatus.Text = "مرجع";
                lblStatus.CssClass = "label label-success inline";
            }
            else
            {
                if (currentReturnDate >= DateTime.Now)
                {
                    lblStatus.Text = "غير مرجع";
                    lblStatus.CssClass = "label label-warning inline";
                }
                else
                {
                    lblStatus.Text = "متأخر";
                    lblStatus.CssClass = "label label-danger inline";
                }
            }
        }
    }

    protected void LstEmployeeBorrow_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "return")
        {

        var idd = int.Parse(e.CommandArgument.ToString());
        var borrow = (from k in km.BorrowsofEmployees where k.Id == idd select k).FirstOrDefault();
        borrow.isReturn = true;
        borrow.DateReturn = DateTime.Now.Date;
        var book = (from k in km.Books where k.Id == borrow.BookId select k).FirstOrDefault();
        book.AvailableNumber += 1;
        km.SaveChanges();
        FillBorrowNotReturn();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت اعادة الكتاب بنجاح'); </script>", false);

        }
    }

    protected void LstStudentsBorrow_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var idd = int.Parse(e.CommandArgument.ToString());
        var borrow = (from k in km.BorrowsofStudents where k.Id == idd select k).FirstOrDefault();
        borrow.isReturn = true;
        borrow.DateReturn = DateTime.Now.Date;
        var book = (from k in km.Books where k.Id == borrow.BookId select k).FirstOrDefault();
        book.AvailableNumber += 1;
        km.SaveChanges();
        FillBorrowNotReturn();
        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت اعادة الكتاب بنجاح'); </script>", false);
    }
}