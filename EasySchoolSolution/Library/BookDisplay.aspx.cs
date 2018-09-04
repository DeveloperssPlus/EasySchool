using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_BookDisplay : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation info = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "BookDisplay";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lstBook.DataBind();
    }

    protected void lstBook_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "btnDelete")
        {
            int id = int.Parse(e.CommandArgument.ToString());
            var c = (from k in km.Books where k.Id == id select k).FirstOrDefault();
            var name = c.Title;
            km.Books.Remove(c);
            km.SaveChanges();

            lstBook.DataBind();
           ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تم حذف كتاب "+name+"  بنجاح'); </script>", false);

        }
    }

    protected void lstBook_DataBinding(object sender, EventArgs e)
    {
        var schoolid = info.getId();
        int semesterid = MyDate.getCurrentSemesterId();

        var RepInfo = (from ep in km.Books
                       where ep.SchoolId == schoolid 
                       select ep).ToList();

        lstBook.DataSource = RepInfo;
    }
}