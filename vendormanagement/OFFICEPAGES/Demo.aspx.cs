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

public partial class SampleSite_Chartlet_Demo : System.Web.UI.Page
{
    vendormanagement vd=new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        cmd.Connection = vd.getcon();
        Response.Write(Session["component"].ToString());
       
       
       
        //modifiedvipin
        if (!IsPostBack)
        {
            
           cmd.CommandText = "select vendorname from quatation where componentname='" + Session["component"]+ "'";
            
           ad.SelectCommand = cmd;
           ad.Fill(ds);
           DPLSELECTVENDOR.DataSource = ds;
           DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
           DPLSELECTVENDOR.DataBind();


            //modifiedvipin
       
            /* AppearanceStyles*/
            foreach (string es in System.Enum.GetNames(typeof(FanG.Chartlet.AppearanceStyles)))
            {
                AT.Items.Add(new ListItem(es));
            }

            //AppearanceStyle
            AT.Text = "Bar_2D_Aurora_FlatCrystal_NoGlow_NoBorder";
            LoadData();
        }
        
    }

    public void LoadData()
    {
        /****
         * void BindChartData(SqlDataSource)
         * void BindChartData(DataSet)
         * void BindChartData(DataView)
         * void BindChartData(DataTable)
         * ****/

        cmd.CommandText = "select count(*) from quatation where componentname='" + Session["component"].ToString() + "'";
        int count = Convert.ToInt32(cmd.ExecuteScalar());


        ArrayList ColorGuider = new ArrayList();
        ArrayList[] DataArray ={  new ArrayList(), new ArrayList(), new ArrayList() };
        ArrayList XLabel = new ArrayList();

        //1.Set data by manual, you can read data from database use below statements
        ColorGuider.Add("unit rate");
        ColorGuider.Add("travel time");
        ColorGuider.Add("travel cost");
     
       
            //DPLORDEREDCOMPONENTS.Items.Insert(0, "COMPONENTS");
           

            
            
            XLabel.Add("VENDOR");
            
       
       
   
        //Chartlet1.TipsShow = false;

        //ok
        /*
        DataArray[0].Add(200);
        DataArray[0].Add(45.2);
        DataArray[0].Add(33.69);
        DataArray[0].Add(60.20);
        DataArray[0].Add(34);


        DataArray[1].Add(76.1);
        DataArray[1].Add(68);
        DataArray[1].Add(43);
        DataArray[1].Add(10);
        DataArray[1].Add(167);

        DataArray[2].Add(10);
        DataArray[2].Add(77);
        DataArray[2].Add(15);
        DataArray[2].Add(79);
        DataArray[2].Add(56);
        */
        //ok




                    cmd.CommandText = "select pricepercomponent from quatation where vendorname='" + DPLSELECTVENDOR.SelectedItem.Text + "' and componentname='" + Session["component"]+ "'";
                    DataArray[0].Add(Convert.ToInt32(cmd.ExecuteScalar()));


                    cmd.CommandText = "select traveltime from quatation where vendorname='" + DPLSELECTVENDOR.SelectedItem.Text + "'and componentname='" + Session["component"]+ "'";
                    DataArray[1].Add(Convert.ToInt32(cmd.ExecuteScalar()));



                    cmd.CommandText = "select travelcost from quatation where vendorname='" + DPLSELECTVENDOR.SelectedItem.Text + "'and componentname='" + Session["component"]+ "'";
                    DataArray[2].Add(Convert.ToInt32(cmd.ExecuteScalar()));
                   
               
                   
               
          
        Chartlet1.ChartTitle.Text = "VENDOR STATUS";
        Chartlet1.XLabels.UnitText = "VENDOR";
        Chartlet1.YLabels.UnitText = "RUPEES";
        Chartlet1.InitializeData(DataArray, XLabel, ColorGuider);
        XLabel.Add("status");
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Dropdown list Chartlet1
        Chartlet1.AppearanceStyle = (FanG.Chartlet.AppearanceStyles)System.Enum.Parse(typeof(FanG.Chartlet.AppearanceStyles), AT.Text, true);
        LoadData();
    }
    protected void BTNSENDMESSAGE_Click(object sender, EventArgs e)
    {
        string dt = DateTime.Now.ToShortDateString();
        DateTime tt = Convert.ToDateTime(dt);
        cmd.CommandText = "insert into sampleinfo(vendorname,component,date,message,mailingaddress) values('"+DPLSELECTVENDOR.SelectedItem.Text+"','"+Session["component"]+"','"+tt+"','"+TXTMESSAGE.Text+"','"+TXTSENDSAMPLETO.Text+"')";
        cmd.ExecuteNonQuery();
        LBLSUCCESS.Visible = true;
        
    }
   
    protected void DPLSELECTVENDOR_SelectedIndexChanged1(object sender, EventArgs e)
    {
       
        ArrayList ColorGuider = new ArrayList();
        ArrayList[] DataArray ={ new ArrayList(), new ArrayList(), new ArrayList() };
        ArrayList XLabel = new ArrayList();
        ColorGuider.Add("unit rate");
        ColorGuider.Add("travel time");
        ColorGuider.Add("travel cost");


        cmd.CommandText = "select pricepercomponent from quatation where vendorname='" + DPLSELECTVENDOR.SelectedItem.Text + "'and componentname='" + Session["component"] + "'";
        DataArray[0].Add(Convert.ToInt32(cmd.ExecuteScalar()));


        cmd.CommandText = "select traveltime from quatation where vendorname='" + DPLSELECTVENDOR.SelectedItem.Text + "'and componentname='" + Session["component"] + "'";
        DataArray[1].Add(Convert.ToInt32(cmd.ExecuteScalar()));



        cmd.CommandText = "select travelcost from quatation where vendorname='" + DPLSELECTVENDOR.SelectedItem.Text + "'and componentname='" + Session["component"] + "'";
        DataArray[2].Add(Convert.ToInt32(cmd.ExecuteScalar()));

        Chartlet1.ChartTitle.Text = "VENDOR STATUS";
        Chartlet1.XLabels.UnitText = "VENDOR";
        Chartlet1.YLabels.UnitText = "RUPEES";
        Chartlet1.InitializeData(DataArray, XLabel, ColorGuider);
        XLabel.Add("status");
                   
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["vdname"] = DPLSELECTVENDOR.SelectedItem.Text;
        Response.Redirect("~/OFFICEPAGES/OFFICE_PURCHASEORDER_SENTMAIL.aspx");
    }
}
