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
using System.Data.SqlClient;

public partial class OFFICEPAGES_OFFICE_LOGIN : System.Web.UI.Page
{

    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vd.getcon();
    }
    protected void BTNLOGIN_Click(object sender, EventArgs e)
    {


        cmd.CommandText = "select count(*) from employeedetails where username='" + TXTUSERNAME.Text + "'and password='" + TXTPASSWORD.Text + "'";
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count > 0)
        {
            Session["user"] = TXTUSERNAME.Text;
            cmd.CommandText = "select empid from employeedetails where username='" + TXTUSERNAME.Text + "'";
            Session["id"] = Convert.ToInt32(cmd.ExecuteScalar());

            cmd.CommandText = "select department from employeedetails where username='" + TXTUSERNAME.Text + "'and password='" + TXTUSERNAME.Text + "'";
            string dp = Convert.ToString(cmd.ExecuteScalar());
            if (dp == "STOCKMANAGEMENT")
            {
                Response.Redirect("~/OFFICEPAGES/OFFICE_STOCKMANAGEMENT_HOME.aspx");
            }
            else if (dp == "FINANCE")
            {
                Response.Redirect("~/OFFICEPAGES/OFFICE_FINANCE_HOME.aspx");
            }
            else if (dp == "PURCHASEORDER")
            {
                Response.Redirect("~/OFFICEPAGES/OFFICE_PURCHASEORDER_HOME.aspx");
            }
            else if (dp == "QUALITYASSURANCE")
            {
                Response.Redirect("~/OFFICEPAGES/OFFICE_QUALITYASURANCE_HOME.aspx");
            }
            Response.Write("HAI WELCOME" + Session["user"]);

        }
        else
        {
            Response.Write("INVALID USERNAME OR PASSWORD");
        }
    }
}
