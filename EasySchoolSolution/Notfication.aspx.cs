using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Notfication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //    ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addfalied(' للللللللل تمت الاضافة بنجاح'); </script>", false);
        //    ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> addSuccess(' للللللللل تمت الاضافة بنجاح'); </script>", false);

        ClientScript.RegisterStartupScript(this.GetType(), "openModal", "<script> openModal(); </script>", false);
       
    }
}