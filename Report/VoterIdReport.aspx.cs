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


public partial class Report_VoterId : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\Civil Registry\\App_Data\\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    ReportDocument crpt = new ReportDocument();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        string nm = "Voter Card";
        SqlDataAdapter da = new SqlDataAdapter("select * from voterrepotrview where type='" + nm + "'", cn);
        da.Fill(ds, "voterrepotrview");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\VoterIdReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "voterrepotrview");
        crpt.Refresh();
        cn.Close();

    }
}