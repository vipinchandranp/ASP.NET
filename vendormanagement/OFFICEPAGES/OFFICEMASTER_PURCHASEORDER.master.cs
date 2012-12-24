using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class OFFICEPAGES_OFFICEMASTER_PURCHASEORDER : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("~/OFFICEPAGES/OFFICE_LOGIN.aspx");
        }


        // Response.Buffer = true;
        // Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
        // Response.Expires = -1500;
        Response.CacheControl = "no-cache";

    }
    protected void BTNLOGOUT_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Response.Redirect("~/OFFICEPAGES/OFFICE_LOGIN.aspx");
    }
}
