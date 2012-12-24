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

public partial class OFFICEPAGES_OFFICE_PURCHASEORDER_SHOWINGVENDORS : System.Web.UI.Page
{
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataReader dr;
    SqlDataAdapter ad1 = new SqlDataAdapter();
    DataSet ds1 = new DataSet();
    SqlDataReader dr1;
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
            DPLSELECTCOMPOONENT.DataSource = ds;
            DPLSELECTCOMPOONENT.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSELECTCOMPOONENT.DataBind();
           /* cmd.CommandText = "select vendorname from vendorlist where vendorstatus='ACCEPTED' ";
            ad1.SelectCommand = cmd;
            ad1.Fill(ds1);
            DPLSELECTQUALIFIEDVENDORS.DataSource = ds1;
            DPLSELECTQUALIFIEDVENDORS.DataTextField = ds1.Tables[0].Columns[0].ToString();
            DPLSELECTQUALIFIEDVENDORS.DataBind();*/

        }

    }
   
    protected void BTNGETPURCHASEORDER_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "select isnull(max(ponumber)+1,1) from purchaseorder";
        int id = Convert.ToInt32(cmd.ExecuteScalar());
        TXTPONO.Text = Convert.ToString(id);
        
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int vid;
        cmd.CommandText = "select vendorid from vendorregistration where vendorname='" + DPLSELECTQUALIFIEDVENDORS.SelectedItem.Text + "'";
        vid = Convert.ToInt32(cmd.ExecuteScalar());
        string dt = DateTime.Now.ToShortDateString();
        DateTime tt = Convert.ToDateTime(dt);
        string component = DPLSELECTCOMPOONENT.SelectedItem.Text;
        cmd.CommandText = "insert into purchaseorder(ponumber,date,vendorname,vendorid,componentname,quantity)values("+TXTPONO.Text+",'"+tt+"','"+DPLSELECTQUALIFIEDVENDORS.SelectedItem.Text+"',"+vid+",'"+DPLSELECTCOMPOONENT.SelectedItem.Text+"',"+TXTQUANTITY.Text+")";
        cmd.ExecuteNonQuery();
        LASUCCESS.Visible = true;
    }
    protected void DPLSELECTCOMPOONENT_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select vendorname from vendorlist where vendorstatus='ACCEPTED' AND componentsupplied='"+DPLSELECTCOMPOONENT.SelectedItem.Text+"'";
        ad1.SelectCommand = cmd;
        ad1.Fill(ds1);
        DPLSELECTQUALIFIEDVENDORS.DataSource = ds1;
        DPLSELECTQUALIFIEDVENDORS.DataTextField = ds1.Tables[0].Columns[0].ToString();
        DPLSELECTQUALIFIEDVENDORS.DataBind();
        

    }
    protected void DPLSELECTQUALIFIEDVENDORS_SelectedIndexChanged(object sender, EventArgs e)
    {
        int vid;
        cmd.CommandText = "select vendorid from vendorregistration where vendorname='"+DPLSELECTQUALIFIEDVENDORS.SelectedItem.Text+"'";
        vid = Convert.ToInt32(cmd.ExecuteScalar());
    }
}
