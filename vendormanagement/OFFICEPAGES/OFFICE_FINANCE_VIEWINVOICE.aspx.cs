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

public partial class OFFICEPAGES_OFFICE_FINANCE_VIEWINVOICE : System.Web.UI.Page
{
    vendormanagement vm = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vm.getcon();
        
        if (!IsPostBack)
        {
            
            cmd.CommandText = "select vendorname from invoice";
            ad.SelectCommand = cmd;
            ad.Fill(ds);
            /*DPLSELECTVENDOR.DataSource = ds;
            DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSELECTVENDOR.DataBind();*/
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = ds.Tables[0].Columns[0].ToString();
            DropDownList1.DataBind();

        }
        //DPLORDEREDCOMPONENTS.Items.Insert(0, "COMPONENTS");
        DropDownList1.Items.Insert(0,"VENDORNAME");
    }
    
    protected void ddlvendid_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        cmd.CommandText = "select * from invoice where componentname ='" + ddlvendid.SelectedItem.Text + "'";
        adp.SelectCommand = cmd;
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }/*
      protected void DPLCOMPONENTNAME_SelectedIndexChanged(object sender, EventArgs e)
    {

        cmd.CommandText = "select * from invoice where componentname ='" + DPLCOMPONENTNAME.SelectedItem.Text+ "'";
        adp.SelectCommand = cmd;
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }*/
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from invoice where vendorname ='" +DropDownList1.SelectedItem.Text+ "'";
        adp.SelectCommand = cmd;
        adp.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
    }
}
