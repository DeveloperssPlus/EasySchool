using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_StudentsBorrowsDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "StudentsBorrowsDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        FillBorrowAll();
    }
 
    public void FillBorrowAll()
    {
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
        //     var LibrarianId = info.getSchoolLibrarian();

        var preInfo = (from k in km.BorrowsofStudents
                       join e in km.Students on k.StudentId equals e.IdentityNumber
                       where k.SchoolId == schoolId && k.SemesterId == semesterId
                       orderby k.DateReturn, k.DateBorrow
                       select new
                       {
                           e.Name,
                           k.DateReturn,
                           k.DateBorrow,
                           k.BookId,
                           auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                           bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                           k.isReturn
                       }).ToList();

        LstStudentsBorrow.DataSource = preInfo;
        LstStudentsBorrow.DataBind();
    }



    protected void btnAll_Click(object sender, EventArgs e)
    {
        FillBorrowAll();
    }

    protected void btnNotReturn_Click(object sender, EventArgs e)
    {
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
        //     var LibrarianId = info.getSchoolLibrarian();

        var preInfo = (from k in km.BorrowsofStudents
                       join emp in km.Students on k.StudentId equals emp.IdentityNumber
                       where k.SchoolId == schoolId && k.SemesterId == semesterId && k.isReturn == false
                       orderby k.DateReturn, k.DateBorrow
                       select new
                       {
                           emp.Name,
                           k.DateReturn,
                           k.DateBorrow,
                           k.BookId,
                           auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                           bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                           k.isReturn
                       }).ToList();

        LstStudentsBorrow.DataSource = preInfo;
        LstStudentsBorrow.DataBind();
    }

    protected void btnLate_Click(object sender, EventArgs e)
    {
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
        //     var LibrarianId = info.getSchoolLibrarian();

        var preInfo = (from k in km.BorrowsofStudents
                       join emp in km.Students on k.StudentId equals emp.IdentityNumber
                       where k.SchoolId == schoolId && k.SemesterId == semesterId
                       && k.isReturn == false && k.DateReturn < DateTime.Now
                       orderby k.DateReturn, k.DateBorrow
                       select new
                       {
                           emp.Name,
                           k.DateReturn,
                           k.DateBorrow,
                           k.BookId,
                           auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                           bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                           k.isReturn
                       }).ToList();

        LstStudentsBorrow.DataSource = preInfo;
        LstStudentsBorrow.DataBind();
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
}