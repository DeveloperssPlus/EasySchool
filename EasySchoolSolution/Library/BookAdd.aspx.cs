using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_BookAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "BookAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            Book book = new Book();

       
           
            if (txtTotalNo.Text != null)
            {
                book.TotalNumber = Convert.ToInt32(txtTotalNo.Text);
                book.AvailableNumber = book.TotalNumber;
            }


            if (!String.IsNullOrEmpty(txtAuther.Text))
                book.Auther = txtAuther.Text;

            if (txtBookNo.Text != null && !String.IsNullOrEmpty(txtBookName.Text))
            {
                book.BookId = txtBookNo.Text;
            }
            int SchoolID = SchoolInfo.getId();
            book.SchoolId = SchoolID;

            if (!String.IsNullOrEmpty(txtBookName.Text))
                book.Title = txtBookName.Text;

            km.Books.Add(book);
            km.SaveChanges();
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess('  تمت الاضافة بنجاح'); </script>", false);

            // PlaceHolderSuccess.Visible = true;
        }

        catch (Exception xe)
        {
       
            ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied(' رقم الكتاب موجود سابقا!'); </script>", false);

        }
    }
 


}