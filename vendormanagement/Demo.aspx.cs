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

public partial class SampleSite_Chartlet_Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            /* 这里用映射列出所有AppearanceStyles枚举里的所有值 */
            foreach (string es in System.Enum.GetNames(typeof(FanG.Chartlet.AppearanceStyles)))
            {
                AT.Items.Add(new ListItem(es));
            }

            //设置一个初始AppearanceStyle
            AT.Text = "Bar_2D_Aurora_FlatCrystal_NoGlow_NoBorder";
            LoadData();
        }
        
    }

    public void LoadData()
    {
        /*** 
         * 这里就不用数据库了，手动添加一些数据。你正式使用时，是不需要这么繁琐的，只要绑定一个数据源既可。
         * 数据库绑定请参看下面的四个构造函数
         * void BindChartData(SqlDataSource)
         * void BindChartData(DataSet)
         * void BindChartData(DataView)
         * void BindChartData(DataTable)
         * ****/



        ArrayList ColorGuider = new ArrayList();
        ArrayList[] DataArray = { new ArrayList(), new ArrayList(), new ArrayList() };
        ArrayList XLabel = new ArrayList();

        //1.Set data by manual, you can read data from database use below statements
        //手动添加数据，你也可以使用下面的代码从数据库中读取数据
        ColorGuider.Add("cost/sample");
        ColorGuider.Add("travel time");
        ColorGuider.Add("trevel cost");


        XLabel.Add("East");
        XLabel.Add("South");
        XLabel.Add("West");
        XLabel.Add("North");

        //Chartlet1.TipsShow = false;
        DataArray[0].Add(200);
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

        Chartlet1.ChartTitle.Text = "vipin chandran p";
        Chartlet1.XLabels.UnitText = "Region";
        Chartlet1.YLabels.UnitText = "Yield / %";
        Chartlet1.InitializeData(DataArray, XLabel, ColorGuider);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //将Dropdown list里的文本转换成AppearanceStyle类型并用来设置Chartlet1
        Chartlet1.AppearanceStyle = (FanG.Chartlet.AppearanceStyles)System.Enum.Parse(typeof(FanG.Chartlet.AppearanceStyles), AT.Text, true);
        LoadData();
    }
}
