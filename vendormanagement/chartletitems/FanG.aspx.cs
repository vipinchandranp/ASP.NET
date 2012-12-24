using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Chartlet1.MaxValueY = 1000;
        Chartlet1.Shadow.Radius = 5;

        Chartlet1.BindChartData(SqlDataSource1);

        //Get more info on http://www.Chartlet.cn
    }
}
