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


public partial class VENDORPAGES_OFFICE_VIEWORDERSFORSAMPLE : System.Web.UI.Page
{
    vendormanagement vm = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vm.getcon();
        cmd.CommandText = "select * from sampleinfo where vendorname='" + Session["vendorname"] + "'";
        cmd.ExecuteScalar();
        adp.SelectCommand = cmd;
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}
