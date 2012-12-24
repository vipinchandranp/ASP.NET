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

public partial class OFFICEPAGES_OFFICE_STOCKMANAGEMENT_HOME : System.Web.UI.Page
{       
    
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();

    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        cmd.Connection = vd.getcon(); Label1.Visible = false;
        if (!Page.IsPostBack)
        {
            cmd.CommandText = "select name from componentlist";
            ad.SelectCommand = cmd;
            ad.Fill(ds);
            DPLEXISTUPD.DataSource = ds;
            DPLEXISTUPD.DataTextField = ds.Tables[0].Columns[0].ToString();
            DPLEXISTUPD.DataBind();


        }
    }


    protected void BTNADDNEWCOMP_Click(object sender, EventArgs e)
    {
        ViewState["fname"] = FileUpload1.FileName.ToString();
        cmd.CommandText = "insert into componentlist(name,numbers,datasheet)values('"+TXTNEWCOMPONENT.Text+"','"+TXTNEWCOMPNUMBERS.Text+"','"+Convert.ToString(ViewState["fname"])+"')";
        cmd.ExecuteNonQuery();
        TXTNEWCOMPNUMBERS.Text = "";
        TXTNEWCOMPONENT.Text = "";
        Response.Write("SUCCESS");
        FileUpload1.SaveAs(Server.MapPath(".")+"//DATASHEETS//" + ViewState["fname"].ToString());
    }
    protected void BTNUPLOADDATASHEET_Click(object sender, EventArgs e)
    {
        //FileUpload1.SaveAs(Server.MapPath("DATASHEETS") + "//" + FileUpload1.FileName);
    }
    protected void BTNEXISTADD_Click(object sender, EventArgs e)
    {
     
        cmd.CommandText = "select numbers from componentlist where name='" + DPLEXISTUPD.SelectedItem.Text + "'";
        cmd.ExecuteNonQuery();
        int num = Convert.ToInt32(cmd.ExecuteScalar());
        int r = Convert.ToInt32(TXTEXISTCOMPNUMBERS.Text) + num;
        cmd.CommandText = "update componentlist set numbers=" + r + " where name='" + DPLEXISTUPD.SelectedItem.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("ADDITION SUCESSFUL");
     

    }
    protected void BTNEXISTDEL_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "select numbers from componentlist where name='" + DPLEXISTUPD.SelectedItem.Text + "'";
        //cmd.ExecuteNonQuery();
        int num = Convert.ToInt32(cmd.ExecuteScalar());
        int r = num-Convert.ToInt32(TXTEXISTCOMPNUMBERS.Text) ;
       if (r < 0)
        {
            Response.Write("NOT POSSIBLE");
        }
        else
        {
            cmd.CommandText = "update componentlist set numbers=" + r + " where name='" + DPLEXISTUPD.SelectedItem.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("DELETION SUCCESSFUL");
            Label1.Visible = true;
        }

    }

    protected void DPLEXISTUPD_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
