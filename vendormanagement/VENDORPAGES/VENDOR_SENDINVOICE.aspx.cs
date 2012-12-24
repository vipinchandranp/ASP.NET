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

public partial class VENDORPAGES_VENDOR_SENDINVOICE : System.Web.UI.Page
{
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataReader dr;

   

    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vd.getcon();
        /*if (!IsPostBack)
        {
            cmd.CommandText = "select name from componentlist";
            ad.SelectCommand = cmd;
            ad.Fill(ds);
            DPLSELECTVENDOR.DataSource = ds;
            DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSELECTVENDOR.DataBind();
        }*/
        
       
        if (!Page.IsPostBack)
        {
            cmd.CommandText = "select * from purchaseorder where vendorname='"+Session["vendorname"]+"' and componentname='"+Session["comp"]+"'";
            dr = cmd.ExecuteReader();
            dr.Read();
            TXTPONUMBER.Text = dr["ponumber"].ToString();
            TXTCOMPONENTNAME.Text = dr["componentname"].ToString();
            TXTQUANTITY.Text=dr["quantity"].ToString();
            dr.Close();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string dt = DateTime.Now.ToShortDateString();
        DateTime tt = Convert.ToDateTime(dt);

        if (TXTTOTAL.Text == "")
        {
            Label1.Visible = true;
        }
        else
        {
            Label1.Visible = false;
            cmd.CommandText = "insert into invoice (vendorname,vendorid,porequestno,date,paymentterms,componentname,quantity,unitrate,tax,total) values ('" + Session["vendorname"] + "', " + Session["id"] + "," + TXTPONUMBER.Text + ",'" + tt + "'," + TXTPAYTERMS.Text + ",'" + Session["comp"] + "'," + TXTQUANTITY.Text + "," + TXTUNITRATE.Text + "," + TXTTAX.Text + "," + TXTTOTAL.Text + ")";
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        float tax1 = Convert.ToInt32(TXTTAX.Text);
        float urate = Convert.ToInt32(TXTUNITRATE.Text);
        float qty = Convert.ToInt32(TXTQUANTITY.Text);
        tax1 = tax1 / 100;
        float total = (qty * urate);
        total=(total*tax1)+total;
        string total1 = Convert.ToString(total);
        TXTTOTAL.Text = total1;


    }
  
}
