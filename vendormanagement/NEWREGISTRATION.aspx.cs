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


public partial class NEWREGISTRATION : System.Web.UI.Page
{
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

        cmd.Connection = vd.getcon();
        
        /*
          if (RadioButton1.Checked == true)
        {
            Button1.Enabled = true;
        }
         */
      
    }
    protected void BTNREGSUB_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "select isnull(max(vendorid)+1,1) from vendorregistration";
        int id = Convert.ToInt32(cmd.ExecuteScalar());
        
        cmd.CommandText = "insert into vendorregistration(vendorname,username,password,email,address,contactno,fax,vendorid)values('" + TXTREGVEN.Text + "','" + TXTREGUSE.Text + "','" + TXTREGPAS.Text + "','" + TXTREGEMA.Text + "','" + TXTREGADD.Text + "','" + TXTREGCONNO.Text + "','" + TXTREGFAX.Text + "'," + id + ")";
        Session["vendorname"] = TXTREGVEN.Text;
        cmd.ExecuteNonQuery();
        TXTREGADD.Text = "";
        TXTREGCON.Text = "";
        TXTREGCONNO.Text = "";
        TXTREGEMA.Text = "";
        TXTREGFAX.Text = "";
        TXTREGPAS.Text = "";
        TXTREGUSE.Text = "";
        TXTREGVEN.Text = "";
        TXTREGVEN.Focus();

       
        Response.Write(Session["vendorname"].ToString());
    }
}
