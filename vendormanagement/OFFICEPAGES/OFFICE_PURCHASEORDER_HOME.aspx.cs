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

public partial class OFFICEPAGES_OFFICE_PURCHASEORDER_HOME : System.Web.UI.Page
{
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vd.getcon();

        if (!IsPostBack)
        {
            cmd.CommandText = "select name from componentlist";
            ad.SelectCommand = cmd;
            ad.Fill(ds);
            /*DPLSELECTVENDOR.DataSource = ds;
            DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSELECTVENDOR.DataBind();*/
            DPLSELECTCOMPONENT.DataSource = ds;
            DPLSELECTCOMPONENT.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSELECTCOMPONENT.DataBind();

        }
    }
    protected void BTNGETSTOCKSTATUS_Click(object sender, EventArgs e)
    {
        SqlDataReader stock;
        
            cmd.CommandText = "select numbers from componentlist where name='" + DPLSELECTCOMPONENT.SelectedItem.Text + "'";
            stock= cmd.ExecuteReader();
            stock.Read();
            TXTSTOCKSTATUS.Text = stock["numbers"].ToString();
            stock.Close();
       
    }
   

    protected void DPLSELECTCOMPONENT_SelectedIndexChanged(object sender, EventArgs e)
    { 
        Session["component"] = DPLSELECTCOMPONENT.SelectedItem.Text;
        Response.Write(Session["component"].ToString());
        TXTSTOCKSTATUS.Text = "";
   
    }

    
    
    protected void BTNREQSAMPLE_Click(object sender, EventArgs e)
    {
        Session["component"] = DPLSELECTCOMPONENT.SelectedItem.Text;
        Response.Write(Session["component"].ToString());
        Response.Redirect("~/OFFICEPAGES/Demo.aspx");
    }
}
