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

public partial class VENDORPAGES_VENDORMASTERPAGE : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("Login.aspx");
        }


        // Response.Buffer = true;
        // Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
        // Response.Expires = -1500;
        Response.CacheControl = "no-cache";
    }


    protected void Button11_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/NEWHOME.aspx");
    }
    protected void LKBTLOGOUT_Click(object sender, EventArgs e)
    {
        // Put user code to initialize the page here

        Session["id"] = null;
        Response.Redirect("~/NEWHOME.aspx");
    }
}
