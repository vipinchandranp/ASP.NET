using System;
using System.Collections.Generic;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SampleSite_Chartlet_AJAX : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            foreach (string es in System.Enum.GetNames(typeof(FanG.Chartlet.AppearanceStyles)))
            {
                AT.Items.Add(new ListItem(es));
            }

            AT.Text = "Bar_2D_Aurora_FlatCrystal_NoGlow_NoBorder";

        }
        SetApp();
        LoadData(null);
    }

    protected void AT_SelectedIndexChanged(object sender, EventArgs e)
    {
        SetApp();
        LoadData(null);
    }

    public void SetApp()
    {
        if (AT.Text.Contains("Line"))
        {
            Chartlet1.GroupSize = 2;
        }

        Chartlet1.AppearanceStyle = (FanG.Chartlet.AppearanceStyles)System.Enum.Parse(typeof(FanG.Chartlet.AppearanceStyles), AT.Text, true);
    }

    /**** 请用BindChartData()方法绑定数据 ****/
    public void LoadData(string cs)
    {

        ArrayList ColorGuider = new ArrayList();
        ArrayList[] DataArray = { new ArrayList(), new ArrayList(), new ArrayList() };
        ArrayList XLabel = new ArrayList();

        //1.Set data by manual, you can read data from database use below statements
        //手动添加数据，你也可以使用下面的代码从数据库中读取数据
        ColorGuider.Add("Laura");
        ColorGuider.Add("Jesy");
        ColorGuider.Add("Linda");

        XLabel.Add("East");
        XLabel.Add("South");
        XLabel.Add("West");
        XLabel.Add("North");

        //Chartlet1.TipsShow = false;
        DataArray[0].Add(98.9);
        DataArray[0].Add(45.2);
        DataArray[0].Add(33.69);
        DataArray[0].Add(60.20);


        DataArray[1].Add(76.1);
        DataArray[1].Add(68);
        DataArray[1].Add(43);
        DataArray[1].Add(10);

        DataArray[2].Add(10);
        DataArray[2].Add(77);
        DataArray[2].Add(15);
        DataArray[2].Add(79);

        Chartlet1.ChartTitle.Text = "Chartlet Demo";
        Chartlet1.XLabels.UnitText = "Region";
        Chartlet1.YLabels.UnitText = "Yield / %";
        Chartlet1.InitializeData(DataArray, XLabel, ColorGuider);

    }
   
    
}
