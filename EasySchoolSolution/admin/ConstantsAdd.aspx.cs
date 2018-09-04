using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ConstantsAdd : System.Web.UI.Page
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlConstansType.DataBind();
            lstConstants.DataBind();
        }

            lblSuccess.Text = "";
        //txtValDefult.Text = ConstantManager.getDefault(int.Parse(ddlConstansType.SelectedValue));
    }

    protected void lstConstants_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var idd = int.Parse(e.CommandArgument.ToString());

        var constant = (from k in km.Constants where k.Id == idd select k).FirstOrDefault();
        // km.Constants.Remove(constant);
        constant.isDeleted = true;
        km.SaveChanges();
        lstConstants.DataBind();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var constant = new Constant();
        constant.type = int.Parse(ddlConstansType.SelectedValue);
        constant.value = txtAddConctant.Text;
        
      //  SchoolInformation info = new SchoolInformation();
     //   constant.SchoolId = info.getId();
        km.Constants.Add(constant);
        km.SaveChanges();
        lstConstants.DataBind();

        lblSuccess.Text = "تمت الاضافة بنجاح";
        txtAddConctant.Text = "";
    }
}