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
using System.Web.Mail;
using System.IO;

public partial class OFFICEPAGES_Default : System.Web.UI.Page
{

    vendormanagement vd = new vendormanagement();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        cmd.Connection = vd.getcon();
        /*if (!IsPostBack)
     {
         cmd.CommandText = "select name from componentlist";
         ad.SelectCommand = cmd;
         ad.Fill(ds);
         DPLSELECTVENDOR.DataSource = ds;
         DPLSELECTVENDOR.DataTextField = ds.Tables[0].Columns[0].ToString();
         DPLSELECTVENDOR.DataBind();
     }*/


        if (!Page.IsPostBack)
        {
            cmd.CommandText = "select email from vendorregistration where vendorname='" + Session["vdname"] + "'";
            dr = cmd.ExecuteReader();
            dr.Read();
            //TXTPONUMBER.Text = dr["ponumber"].ToString();
            TXTTO.Text = dr["email"].ToString();
            dr.Close();

        }
    }
    protected void BTNSENTMAIL_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();
        StringWriter sw = new StringWriter();
        Html32TextWriter htw = new Html32TextWriter(sw);

        //htw.RenderBeginTag("html");
        //htw.RenderBeginTag("head");
        //htw.RenderBeginTag("title");
        //htw.Write("A Message From Electromotive");
        //htw.RenderEndTag();
        //htw.RenderEndTag();
        //htw.RenderBeginTag("body");
        //htw.WriteLine(TXTMESSAGE.Text);
        //htw.RenderEndTag();
        //htw.RenderEndTag();
        msg.From=("electromotive.com");
        msg.To=TXTTO.Text;
        msg.Subject=TXTSUBJECT.Text;
        msg.BodyFormat = MailFormat.Html;
       // System.Web.Mail.SmtpMail.SmtpServer = "localhost";
       //System.Web.Mail.SmtpMail.Send(msg); 

         SmtpMail.Send(msg);
        Label2.Visible = true;
       
    }
    
}
