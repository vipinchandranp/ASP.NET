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

public partial class VENDORPAGES_VENDOR_UPDATEPROFILE : System.Web.UI.Page
{
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        cmd.Connection = vd.getcon();
        SqlDataReader dr;
        if (!Page.IsPostBack)
        {
            cmd.CommandText = "select * from vendorregistration where vendorid=" + Session["id"] + "";
            dr = cmd.ExecuteReader();
            dr.Read();
            TXTUPDVEN.Text = dr["vendorname"].ToString();
            TXTUPDUSE.Text = dr["username"].ToString();
            TXTUPDEMA.Text = dr["email"].ToString();
            TXTUPDADD.Text = dr["address"].ToString();
            TXTUPDCONNO.Text = dr["contactno"].ToString();
            TXTUPDFAX.Text = dr["fax"].ToString();

            dr.Close();

        }
    }
    protected void BTNUPDVEN_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "update vendorregistration set vendorname='" + TXTUPDVEN.Text + "',username='" + TXTUPDUSE.Text + "',password='" + TXTUPDPASS.Text + "',email='" + TXTUPDEMA.Text + "',address='" + TXTUPDADD.Text + "',contactno=" + TXTUPDCONNO.Text + ",fax=" + TXTUPDFAX.Text + " where vendorid=" + Session["id"] + "";
        cmd.ExecuteNonQuery();
    }
}
