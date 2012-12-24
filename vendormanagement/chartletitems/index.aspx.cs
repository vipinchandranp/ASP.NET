using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Please modify the connection string in web.config and choose the correct path of .mdb file.

        //Step 1: Choose one appearance style from enum FanG.Chartlet.AppearanceStyles
        Chartlet1.AppearanceStyle = FanG.Chartlet.AppearanceStyles.Bar_2D_StarryNight_FlatCrystal_Glow_TextureBorder;
        
        //Alternative steps
        //If you want to use other colors, decomments the statement below, and you can use different value (0 ~ 12)
        //Chartlet1.FillShiftStep = 8;
        //You can still setting other attributes here.

        //Step 2: Bind a data source
        Chartlet1.BindChartData(SqlDataSource1);

        //OK, run your web form, a beautiful chart appears, does it?
        //So simple Chartlet is.
        //More info on http://www.Chartlet.cn

        //========================================================//
        Chartlet2.AppearanceStyle = FanG.Chartlet.AppearanceStyles.Line_2D_StarryNight_ThickRound_Glow_NoBorder;
        Chartlet2.ChartTitle.Text = "Line Chart";
        //You adjust some attributes based on AppearanceStyle selected
        //Chartlet2.LineWidth = 2;
        Chartlet2.MaxValueY = 1000;
        Chartlet2.BindChartData(SqlDataSource1);

        Chartlet3.AppearanceStyle = FanG.Chartlet.AppearanceStyles.Line_3D_StarryNight_FlatCrystalRound_NoGlow_NoBorder;
        Chartlet3.Fill.ShiftStep = 7;
        Chartlet3.ChartTitle.Text = "Pie Chart";
        Chartlet3.BindChartData(SqlDataSource1);

        Chartlet4.AppearanceStyle = FanG.Chartlet.AppearanceStyles.Pie_3D_Aurora_NoCrystal_NoGlow_NoBorder;
        Chartlet4.Fill.ShiftStep = 9;
        Chartlet4.ChartTitle.Text = "3D Pie Chart";
        Chartlet4.BindChartData(SqlDataSource1);
    }
}
