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

public partial class VENDORPAGES_VENDOR_VIEWORDERS : System.Web.UI.Page
{
    vendormanagement vm = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataAdapter adp= new SqlDataAdapter();
    DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vm.getcon();

        if (!IsPostBack)
        {
            cmd.CommandText = "select componentname from purchaseorder where vendorname='" + Session["vendorname"] + "' ";
            ad.SelectCommand = cmd;
            ad.Fill(ds);
            /*DPLSELECTVENDOR.DataSource = ds;
            DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSELECTVENDOR.DataBind();*/
            DPLORDEREDCOMPONENTS.DataSource = ds;
            DPLORDEREDCOMPONENTS.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLORDEREDCOMPONENTS.DataBind();
         
        }
        DPLORDEREDCOMPONENTS.Items.Insert(0, "COMPONENTS");
    }

    protected void DPLORDEREDCOMPONENTS_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from purchaseorder where componentname ='" + DPLORDEREDCOMPONENTS.SelectedItem.Text + "' AND vendorid='"+Session["id"]+"'";
        adp.SelectCommand = cmd;
        adp.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
        Session["comp"] = DPLORDEREDCOMPONENTS.SelectedItem.Text;
    }
    protected void BTNSENDINVOICE_Click(object sender, EventArgs e)
        
    {
        Response.Redirect("~/VENDORPAGES/VENDOR_SENDINVOICE.aspx");
    }
}
