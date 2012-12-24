using System;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{

    /* You can get more info on http://www.Chartlet.cn.
     * 获得更多信息请登陆 http://www.Chartlet.cn
     * Chartlet provide 2 methods to bind data.
     * Chartlet 提供了两种绑定数据的方法，BindChartData()和InitializeData();
     * 
     * BindChartData()  This method is very simple, you just need to put a SqlDataSource control on web form, then
     *                  call this method and pass SqlDataSource to it, it's done. So easy, very little code.
     *                  But you need to organize your data into Stand Format in SQL statement, you can find the 
     *                  Stand Format in Chartlet-Help.pdf which is also in your download package, if you can't find
     *                  it, you can go to http://www.Chartlet.cn to download it.
     * 
     *                 方法非常简单，你只需要在页面上放置一个SqlDataSource，然后在后台代码里调用BindChartData()方法，
     *                 把SqlDataSource当做参数传入即可，几乎不需要写代码，但是需要你在SQL中把数据表组织成标准的格式。
     * 
     *                  注：数据表的标准格式请参照压缩包内的Chartlet-Help.pdf，也可以上Chartlet主页参看帮助页面
     *                  http://www.Chartlet.cn
     * 
     * 
     * InitializeData() This method is a little complicated, you need to query data from you database first and then
     *                  use them to create 3 ArrayList and pass the 3 ArrayList to thi method as parameters. But this
     *                  method is very flexible, when your database is so complicated that you can not organize it into
     *                  Stand Format, you can use this method as a alternative choice.
     *                  
     *                  这个方法，需要你构造三个数组（ArrayList），再把三个数据传入这个方法，这意味着你需要自己书写读
     *                  数据库的代码，把读出来的数据组织成ArrayList。比较繁琐，但是很灵活，如果你的数据表比较复杂不能
     *                  在SQL中组织成标准的格式，你可以把查出来的数据表里的数据再次进行组织，变成三个ArrayList用这个
     *                  方法传入Chartlet。
     * 
     * ========================== BindChartData() 参数介绍============================================================
     *      Chartlet1.BindChartData(SqlDataSource DataSource)
     *         1.DataSource : The data source you use to query data from database.(当然就是你查询数据的SqlDataSource啦)
     * ========================== InitalizeData() 参数介绍 ==========================================================
     *      Chartlet1.InitializeData(ArrayList[] ChartData,ArrayList XLabel,ArrayList ColorGuider);
     *         1.ChartData : Groups of ArrayList contains data for chart.(数据数组(数组的数组))
     *         2.XLabel :  ArrayList of Labes on X Axis.(横坐标标识的数组)
     *         3.ColorGuider : ArrayList contains Color representation string  (颜色图例数组)
    /*=============================================================================================================*/

    /*This sample can show you how to set attributes of Chartlet to get different chart appearance.
     * You can get specific introduction of every attribute in Chartlet-Help.pdf.
    /*这个例子简单演示了如何对Chartlet进行设置画出不同效果的图标，大部分属性设置在前台页面（Test.aspx）
     *具体属性的详细介绍请参考Chartlet主页的帮助页面（也可以参照压缩包里的帮助文件）*/

    string cs = WebConfigurationManager.ConnectionStrings["Chartlet"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Chartlet1.GetVersion(); ;

        //Modify the conneciton string in web.config, so that program can find the database file.
        //修改web.config里面的连接字符串，使之能够找到数据库文件
        cs +=Server.MapPath("App_Data/Chartlet.mdb");
        SqlDataSource1.ConnectionString=cs;
        
        //=====================================================================================================
        //1. Bind data for first Chart, it's so easy.
        //Note: If you have some Error in database connection, pelase modify connection string in web.config
        //1.下面为第一个图表加载数据，使用BindChartData()方法,超级简单！
        //注：数据库在App_Data/Chartlet.mdb,如果你运行时无法连接，可能需要修改web.config里面的连接字符串
       
        //设置2个显示属性
        //Attributes setting
        Chartlet1.ChartTitle.Text = "Sales Accomplishment";
        Chartlet1.YLabels.UnitText = "Million";

        //绑定数据就是这么简单,直接一句话搞定
        //You see, so easy! only 1 statement can bind all the data.
        Chartlet1.BindChartData(SqlDataSource1);


        //=====================================================================================================
        //2. Bind data for 2nd Chart.
        //2.为图表二添加后台数据(使用InitalizeData()方法）*/

        //构造数据数组ArrayList[]
        /*注： 这里构造数据数组时，是直接手填的，当然你在实际应用中应该是从数据库读出数据再构建这个数组*/
        ArrayList ChartD21 = new ArrayList();
        ChartD21.Add(53); ChartD21.Add(85); ChartD21.Add(60);
        ChartD21.Add(40); ChartD21.Add(45); ChartD21.Add(53);
        ChartD21.Add(60); ChartD21.Add(90); ChartD21.Add(76);
        ChartD21.Add(57); ChartD21.Add(60); ChartD21.Add(53);
        //只有一组数据的 ArrayList[]
        ArrayList[] ChartData2={ChartD21};

        //将数据数组传入InitializeData()方法，后两个参数数据使用默认值
        Chartlet2.InitializeData( ChartData2, null, null);

        //======================================================================================================
        //3. Bind data for 3rd chart and 4th chart.
        // 3.为第三，四个图表加载数据，使用InitializeData()方法
        //颜色图例数组
        ArrayList ColorGuider = new ArrayList();
        ColorGuider.Add("Laura");
        ColorGuider.Add("Jesy");
        ColorGuider.Add("Linda");

        //X坐标轴标识数组
        //Labels on X Axis
        ArrayList XTitle = new ArrayList();
        XTitle.Add("East");
        XTitle.Add("South");
        XTitle.Add("West");
        XTitle.Add("North");

        //图表数据（3组）
        //Chart data (3 Groups)
        ArrayList[] ChartData = new ArrayList[3];

        ChartData[0] = new ArrayList();
        ChartData[0].Add(53);
        ChartData[0].Add(40);
        ChartData[0].Add(60);
        ChartData[0].Add(57);

        ChartData[1] = new ArrayList();
        ChartData[1].Add(76);
        ChartData[1].Add(68);
        ChartData[1].Add(43);
        ChartData[1].Add(99);

        ChartData[2] = new ArrayList();
        ChartData[2].Add(10);
        ChartData[2].Add(77);
        ChartData[2].Add(15);
        ChartData[2].Add(79);
        //图表数据（3组）

        Chartlet3.InitializeData( ChartData, XTitle, ColorGuider);
        Chartlet4.InitializeData( ChartData,XTitle, ColorGuider);
        //======================================================================================================


        Label2.Text = Chartlet1.GetVersionDetail();
    }
}
