using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.SqlClient;
using System.Data;


public partial class Report_Paymentrpt : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\Civil Registry\\App_Data\\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    ReportDocument crpt = new ReportDocument();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Payment where date between '"+txtfromdate.Text +"' and '"+txttodate.Text +"'", cn);
      //  cmd.Parameters.AddWithValue("@p1",txtfromdate.Text);
      //  cmd.Parameters.AddWithValue("@p2",txttodate.Text);
        da.Fill(ds, "Payment");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\PaymentReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Payment");
        crpt.Refresh();
        cn.Close();

    }
}