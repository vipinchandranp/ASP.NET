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

public partial class VENDORPAGES_VENDOR_SENDQUATATION : System.Web.UI.Page
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
            DPLSENSEL.DataSource = ds;
            DPLSENSEL.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSENSEL.DataBind();

        }

       /* for (int i = 1; i <= 31; i++)
        {
            DROVENSENDAY.Items.Add(i.ToString());
        }
        for (int i = 1; i <= 12; i++)
        {
            DROVENSENMON.Items.Add(i.ToString());
        }
        for (int i = 1975; i <= 2050; i++)
        {
            DROVENSENYEA.Items.Add(i.ToString());
        }
        DROVENSENDAY.Items.Insert(0, "DD");
        DROVENSENMON.Items.Insert(0, "MM");
        DROVENSENYEA.Items.Insert(0, "YYYY");*/
    
    }

   
    protected void BTNVENSENSEN_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into vendorlist(vendorname,componentsupplied,vendorid)values('" + Session["vendorname"] + "','" + DPLSENSEL.Text + "'," + Session["id"] +")";
        cmd.ExecuteNonQuery();
        string dt = DateTime.Now.ToShortDateString();
        DateTime tt = Convert.ToDateTime(dt);
       
        //string dt = DROVENSENDAY.SelectedItem.Text + '/' + DROVENSENMON.SelectedItem.Text + '/' + DROVENSENYEA.SelectedItem.Text;
        
        cmd.CommandText = "insert into quatation(vendorid,vendorname,componentname,pricepercomponent,traveltime,travelcost,date)values("+Session["id"]+",'"+Session["vendorname"]+"','"+DPLSENSEL.SelectedItem.Text+"','"+TXTVENSENPRI.Text+"','"+TXTVENSENTRATIME.Text+"','"+TXTVENSENTRACOST.Text+"','"+tt+"')";
        cmd.ExecuteNonQuery();
        Response.Write("SUCCESS");
    }
    protected void DROSENSEL_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "Select * from componentlist where name='" + DPLSENSEL.SelectedItem.Text + "'";
        dr = cmd.ExecuteReader();
        dr.Read();
        HyperLink1.NavigateUrl ="~/OFFICEPAGES/DATASHEETS/"+ dr[2].ToString();
        dr.Close();

        
    }
}
