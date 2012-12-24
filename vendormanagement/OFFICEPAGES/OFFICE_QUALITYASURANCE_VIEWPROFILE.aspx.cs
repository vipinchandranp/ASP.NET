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

public partial class OFFICEPAGES_OFFICE_QUALITYASURANCE_CREATEPROFILE : System.Web.UI.Page
{
    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
       cmd.Connection = vd.getcon();
        SqlDataReader dr;
        if (!Page.IsPostBack)
        {
            cmd.CommandText = "select * from employeedetails where empid=" + Session["id"] + "";
            dr = cmd.ExecuteReader();
            dr.Read();
            TXTOFFFIRNAM.Text = dr["firstname"].ToString();
            TXTOFFLASNAM.Text = dr["lastname"].ToString();
            TXTOFFPERADD.Text = dr["peraddress"].ToString();
            TXTOFFMAIADD.Text = dr["mailaddress"].ToString();
            TXTOFFCONRES.Text = dr["rescontactno"].ToString();
            TXTOFFCONMOB.Text = dr["mobcontactno"].ToString();
            TXTOFFEMA.Text = dr["emailid"].ToString();
            TXTOFFUSERNAME.Text=dr["username"].ToString();
            dr.Close();
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       cmd.CommandText = "update employeedetails set firstname='"+TXTOFFFIRNAM.Text+"',lastname='"+TXTOFFLASNAM.Text+"',peraddress='"+TXTOFFPERADD.Text+"',mailaddress='"+TXTOFFMAIADD.Text+"',rescontactno="+TXTOFFCONRES.Text+",mobcontactno="+TXTOFFCONMOB.Text+",emailid='"+TXTOFFEMA.Text+"'where empid="+Session["id"]+"";
        cmd.ExecuteNonQuery();
    }
    
}
