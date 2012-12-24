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

public partial class OFFICEPAGES_OFFICE_FINANCE_HOME : System.Web.UI.Page
{

    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = vd.getcon();
        cmd.CommandText = "select empid";
    }
}
