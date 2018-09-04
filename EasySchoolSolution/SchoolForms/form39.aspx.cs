using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form39 : System.Web.UI.Page
{


    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        lstBorrow.DataBind();
    }

    protected void lstBorrow_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();

        ltrYear.Text = " "+(from k in km.Semesters where k.IsCurrent == true select k.YearH).FirstOrDefault().ToString();
        ltrSemester.Text = " "+ MyDate.getCurrentSemester();
        ltrSecretaryResourceCenter.Text = info.getLearningResources();
        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
      //   var LibrarianId = info.getSchoolLibrarian();

        var preInfo = (from k in km.BorrowsofStudents
                       join ss in km.Students on k.StudentId equals ss.IdentityNumber
                       where k.SchoolId == schoolId && k.SemesterId == semesterId
                       orderby  k.DateBorrow
                       select new
                       {
                           ss.Name,
                           k.DateReturn,
                           k.DateBorrow,
                           k.BookId,
                           ss.Class,
                           auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                           bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                           k.isReturn
                       }).ToList();

        lstBorrow.DataSource = preInfo;
    }
}