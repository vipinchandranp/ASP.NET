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

    
using MathWorks.MATLAB.NET.WebFigures;

public partial class HOME : System.Web.UI.Page
{
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vd.getcon();
    }
    


    protected void BTNHOMLOG_Authenticate(object sender, AuthenticateEventArgs e)
    {

        cmd.CommandText = "select count(*) from vendorregistration where username='" + BTNHOMLOG.UserName + "'and password='" + BTNHOMLOG.Password + "'";
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count > 0)
        {
            Session["user"] = BTNHOMLOG.UserName;
            
            cmd.CommandText = "select vendorid from vendorregistration where username='" + BTNHOMLOG.UserName + "'";
            Session["id"] = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.CommandText = "select vendorname from vendorregistration where vendorid=" + Session["id"] + "";
            Session["vendorname"] = Convert.ToString(cmd.ExecuteScalar());
            Response.Redirect("~/VENDORPAGES/VENDOR_HOME.aspx");
            
        }
        else if (count == 0)
        {    

            cmd.CommandText = "select department from adminlogin where username='" + BTNHOMLOG.UserName + "'and password='" + BTNHOMLOG.Password + "'";
            string dp = Convert.ToString(cmd.ExecuteScalar());
            if (dp == "STOCKMANAGEMENT")
            {
                Response.Redirect("~/OFFICEPAGES/OFFICE_LOGIN.aspx");
            }
            else if (dp == "FINANCE")
            {
                Response.Redirect("~/OFFICEPAGES/OFFICE_LOGIN.aspx");
            }
            else if (dp =="PURCHASEORDER")
            {
                Response.Redirect("~/OFFICEPAGES/OFFICE_LOGIN.aspx");
            }
            else if (dp =="QUALITYASURANCE")
            {
                Response.Redirect("~/OFFICEPAGES/OFFICE_LOGIN.aspx");
            }
        }
        else
        {
            Response.Write("INVALID USERNAME OR PASSWORD");
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
