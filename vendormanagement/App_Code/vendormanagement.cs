using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


/// <summary>
/// Summary description for vendormanagement
/// </summary>
public class vendormanagement
{   SqlConnection con=new SqlConnection();


	public SqlConnection getcon()
	{
        if (con.State == ConnectionState.Closed)
        {
            con.ConnectionString = "Data Source=.;Initial Catalog=vendormanagement;Integrated Security=True;Pooling=False";
          
           // con.ConnectionString = "Data Source=C:/Documents and Settings/Sarin/My Documents/Visual Studio 2005/WebSites/DBMDF/vendormanagement.mdf;Integrated Security=True;Pooling=False";
            
            con.Open();
        }
        return con;
	}

}
