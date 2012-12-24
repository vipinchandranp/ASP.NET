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

public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("HOME.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ABOUTUS.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("OURNEWPRODUCTS.aspx");
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("CONTACTUS.aspx");
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("HELP.aspx");
    }
}
