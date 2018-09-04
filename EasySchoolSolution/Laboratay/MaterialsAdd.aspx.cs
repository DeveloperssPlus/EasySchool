using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_MaterialsAdd : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "MaterialsAdd";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          //  FillListStatus();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Material material = new Material();

        if (txtProductNo.Text != null)
        {

            material.KindId = Convert.ToInt32(txtProductNo.Text);
        }

        if (!String.IsNullOrEmpty(txtProductName.Text))
            material.KindName = txtProductName.Text;

        if (txtAmount.Text != null)
        {
            material.Quantity = Convert.ToInt32(txtAmount.Text);
        }
        int SchoolID = SchoolInfo.getId();
        material.SchoolId = SchoolID;

        material.SemesterId = MyDate.getCurrentSemesterId();
        if (!String.IsNullOrEmpty(txtNote.Text))
            material.Comments = txtNote.Text;
        material.Status = int.Parse(DDLStatus.SelectedValue);

        if (DDLStatus.SelectedItem != null)
        {

            material.Status = Convert.ToInt32(DDLStatus.SelectedValue);
        }

        km.Materials.Add(material);
        km.SaveChanges();
        PlaceHolderSuccess.Visible = true;
    }

    //public void FillListStatus()
    //{
    //    if (!IsPostBack)
    //    {
        
    //        var status = (from sta in km.Materials
                
    //                   select sta).ToList();
    //        DDLStatus.DataValueField = "KindId";
    //        DDLStatus.DataTextField = "Status";
    //        DDLStatus.DataSource = status;
    //        DDLStatus.DataBind();
    //    }
    //}
    protected void btnok_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }
}