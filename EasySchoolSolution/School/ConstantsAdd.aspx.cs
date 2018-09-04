using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class School_ConstantsAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "ConstantsAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlConstansType.DataBind();
            //lstConstants.DataBind();

            SchoolInformation info = new SchoolInformation();
            schoolId.Value = info.getId().ToString();
        }

        lstConstants.DataBind();


        lblSuccess.Text = "";
    }

    protected void lstConstants_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Del")
        {
        var idd = int.Parse(e.CommandArgument.ToString());
        var constant = (from k in km.Constants where k.Id == idd select k).FirstOrDefault();
            if(constant.type==3 && constant.SchoolId == null)
            {
                lblSuccess.ForeColor = System.Drawing.Color.Red;
                lblSuccess.Text = "عذرا. لاي يمكن حذف هذه القيمة";
                return;
            }
            // km.Constants.Remove(constant);
            constant.isDeleted = true;
        km.SaveChanges();
        lstConstants.DataBind();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var constant = new Constant();
        constant.type = int.Parse(ddlConstansType.SelectedValue);
        constant.value = txtAddConctant.Text;

        SchoolInformation info = new SchoolInformation();
        constant.SchoolId = info.getId();
        km.Constants.Add(constant);
        km.SaveChanges();
        lstConstants.DataBind();
        lblSuccess.ForeColor = System.Drawing.Color.Blue;

        lblSuccess.Text = "تمت الاضافة بنجاح";
        txtAddConctant.Text = "";
    }

    protected void lstConstants_DataBinding(object sender, EventArgs e)
    {
        OnlineSchoolEntities km = new OnlineSchoolEntities();
        SchoolInformation info = new SchoolInformation();
        var schoolId = info.getId();
        var type = int.Parse(ddlConstansType.SelectedValue);
        var lst = (from k in km.Constants where k.type == type && k.isDeleted == false && k.SchoolId == schoolId select k).ToList();

        if (type == 3)
        {
            var lst2 = (from k in km.Constants where k.type == type && k.isDeleted == false && k.SchoolId == null select k).ToList();
            lst = lst.Concat(lst2).ToList();
        }

        lstConstants.DataSource = lst;
    }
}