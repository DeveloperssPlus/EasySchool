using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolForms_form40 : System.Web.UI.Page
{

    int counter = 0;

    protected int getCounter()
    {
        return ++counter;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lstBorrow.DataBind();
    }

    protected void lstBorrow_DataBinding(object sender, EventArgs e)
    {

        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();

        var schoolId = info.getId();
        var semesterId = MyDate.getCurrentSemesterId();
        ltrSecretaryLearningResourceCenter.Text = info.getLearningResources();

        var preInfo = (from k in km.BorrowsofEmployees
                       join ee in km.Employees on k.EmployeeId equals ee.IdentityNumber
                       where k.SchoolId == schoolId && k.SemesterId == semesterId
                       orderby k.DateReturn, k.DateBorrow
                       select new
                       {
                           ee.Name,
                           k.DateReturn,
                           k.DateBorrow,
                           k.BookId,
                           auther = (from b in km.Books where b.Id == k.BookId select b.Auther).FirstOrDefault(),
                           bookname = (from b in km.Books where b.Id == k.BookId select b.Title).FirstOrDefault(),
                           k.isReturn
                       }).ToList();

        lstBorrow.DataSource = preInfo;
        lstBorrow.DataBind();
    }
}