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

public partial class OFFICEPAGES_OFFICE_CREATEPROFILE : System.Web.UI.Page
{
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vd.getcon();
    }
    protected void BTNOFFFINCRESUB_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select isnull(max(empid)+1,1) from employeedetails";
        int id = Convert.ToInt32(cmd.ExecuteScalar());
       
       /* if (TXTOFFFIRNAM.Text == "")
            Label1.Visible = true;
        if (TXTOFFPERADD.Text == "" || TXTOFFMAIADD.Text == "")
            Label2.Visible = true;
        if (TXTOFFCONMOB.Text == "" || TXTOFFCONRES.Text == "")
            Label3.Visible = true;
        if (TXTOFFUSE.Text == "")
            Label4.Visible = true;
        if (TXTOFFPAS.Text == "")
            Label5.Visible = true;
        if (TextBox3.Text == TXTOFFPAS.Text)
            Label6.Visible = false;
        else
            Label6.Visible = true;*/
        cmd.CommandText = "insert into employeedetails(empid,firstname,lastname,department,peraddress,mailaddress,rescontactno,mobcontactno,emailid,username,password)values(" + id + ",'" + TXTOFFFIRNAM.Text + "','" + TXTOFFLASNAM.Text + "','" +DRPDEPARTMENT.SelectedItem.Text + "','" + TXTOFFPERADD.Text + "','" + TXTOFFMAIADD.Text + "'," + TXTOFFCONRES.Text + "," + TXTOFFCONMOB.Text + ",'" + TXTOFFEMA.Text + "','" + TXTOFFUSE.Text + "','" + TXTOFFPAS.Text + "')";
        cmd.ExecuteNonQuery();
        TXTOFFFIRNAM.Text = "";
        TXTOFFLASNAM.Text = "";
        TXTOFFPERADD.Text = "";
        TXTOFFMAIADD.Text = "";
        TXTOFFCONRES.Text = "";
        TXTOFFCONMOB.Text = "";
        TXTOFFEMA.Text = "";
        TXTOFFUSE.Text = "";
        TXTOFFPAS.Text = "";
        TXTOFFFIRNAM.Focus();
        Response.Write("SUCCESS");

    }
}
