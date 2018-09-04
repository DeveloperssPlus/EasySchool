using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Laboratay_CupboardRecord : MyPermisionPage
{
    OnlineSchoolEntities km = new OnlineSchoolEntities();
    SchoolInformation SchoolInfo = new SchoolInformation();

    protected override void OnPreInit(EventArgs e)
    {
        MyPer = "CupboardRecord";
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //  FillListStatus();
        }
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        PlaceHolderSuccess.Visible = false;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ChemistryCupboard chemistrycupboar = new ChemistryCupboard();

        if (txtNoProduct.Text != null)
        {

            chemistrycupboar.KindId = Convert.ToInt32(txtNoProduct.Text);
        }

        if (txtNumberCabinet.Text != null)
        {

            chemistrycupboar.CupboardId = Convert.ToInt32(txtNumberCabinet.Text);
        }

        if (!String.IsNullOrEmpty(txtNameProduct.Text))
            chemistrycupboar.KindName = txtNameProduct.Text;

        if (txtUnit.Text != null)
        {
            chemistrycupboar.Unit = txtUnit.Text;
        }
        if (txtQuentity.Text != null)
        {
            chemistrycupboar.Quantity = Convert.ToInt32(txtQuentity.Text);
        }

        int SchoolID = SchoolInfo.getId();
        chemistrycupboar.SchoolId = SchoolID;

        chemistrycupboar.SemesterId = MyDate.getCurrentSemesterId();

        if (!String.IsNullOrEmpty(txtNote.Text))
            chemistrycupboar.Comments = txtNote.Text;

        km.ChemistryCupboards.Add(chemistrycupboar);
        km.SaveChanges();
        PlaceHolderSuccess.Visible = true;
    }
}