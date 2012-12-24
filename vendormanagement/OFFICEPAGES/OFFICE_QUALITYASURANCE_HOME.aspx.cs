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

public partial class OFFICEPAGES_OFFICE_QUALITYASURANCE_HOME : System.Web.UI.Page
{
    vendormanagement vm = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataAdapter ad1 = new SqlDataAdapter();
    DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        cmd.Connection = vm.getcon();
        if (!IsPostBack)
        {
            cmd.CommandText = "select vendorname from quatation";
            ad.SelectCommand = cmd;
            ad.Fill(ds);
            /*DPLSELECTVENDOR.DataSource = ds;
            DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSELECTVENDOR.DataBind();*/
            DPLSELECTVENDORS.DataSource = ds;
            DPLSELECTVENDORS.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLSELECTVENDORS.DataBind();
        }
            
       
    }

    protected void DPLSELECTCOMPONENT_SelectedIndexChanged(object sender, EventArgs e)
    {
        //cmd.CommandText = "select componentname from quatation where vendorname='" + DPLSELECTVENDORS.SelectedItem.Text + "'";
        //ad1.SelectCommand = cmd;
       // ad1.Fill(ds1);
        /*DPLSELECTVENDOR.DataSource = ds;
        DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
        DPLSELECTVENDOR.DataBind();
        DPLSELECTCOMPONENT.DataSource = ds1;
        DPLSELECTCOMPONENT.DataTextField = ds1.Tables[0].Columns[0].ToString();
        DPLSELECTCOMPONENT.DataBind();
        */
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DPLSELECTVENDORS_SelectedIndexChanged(object sender, EventArgs e)
    {
        /*cmd.CommandText = " select componentname from quatation where vendorname='"+DPLSELECTVENDORS.SelectedItem.Text+"'";
        string comp = Convert.ToString(cmd.ExecuteScalar());
        TXTCOMPONENT.Text=comp;*/
        Session["vendor"] = DPLSELECTVENDORS.SelectedItem.Text;
        cmd.CommandText = "select componentname from quatation where vendorname='" + DPLSELECTVENDORS.SelectedItem.Text + "'";
        ad1.SelectCommand = cmd;
        ad1.Fill(ds1);
        /*DPLSELECTVENDOR.DataSource = ds;
        DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
        DPLSELECTVENDOR.DataBind();*/
        DPLSELECTCOMPONENT.DataSource = ds1;
        DPLSELECTCOMPONENT.DataTextField = ds1.Tables[0].Columns[0].ToString();
        DPLSELECTCOMPONENT.DataBind();

    }



    protected void BTNSUBMIT_Click(object sender, EventArgs e)
    {
       /* cmd.CommandText = "select vendorid from quatation where vendorname='"+DPLSELECTVENDORS.SelectedItem.Text+"'";
        int venid = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.CommandText = "insert into vendorstatus(vendorname,componentsupplied,vendorid,vendorstatus)values('"+DPLSELECTVENDORS.SelectedItem.Text+"','"+DPLSELECTCOMPONENT.SelectedItem.Text+"',"+venid+",'"+DPLVENDORSTATUS.SelectedItem.Text+"')";
        cmd.ExecuteNonQuery();*/
       
        cmd.CommandText = "update vendorlist   set vendorstatus='" + DPLVENDORSTATUS.SelectedItem.Text + "' where vendorname='" + Session["vendor"] + "' and componentsupplied='" + DPLSELECTCOMPONENT.SelectedItem.Text + "'";
        cmd.ExecuteNonQuery();
        LKBTSUCCESS.Visible = true;
        
    }
}
