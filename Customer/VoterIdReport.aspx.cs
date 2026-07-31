using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data;
using System.Data.SqlClient;


public partial class Customer_VoterIdReport : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    ReportDocument crpt = new ReportDocument();

    string s1, reason;
    int AId;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        CrystalReportViewer1.Visible = false;
        btngeneratecertificate.Visible = false;
        lblstatus.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        string name = Session["user"].ToString();
        string type = "Voter Card ";


        cn.Close();
        cn.Open();
        cmd.CommandText = "Select changestatus from Approvecertificate where applname='" + name + "'and type='" + type + "'";
        cmd.Connection = cn;
        s1 = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();

        cn.Close();
        cn.Open();
        cmd.CommandText = "Select applid from Approvecertificate where applname='" + name + "'and type='" + type + "'";
        cmd.Connection = cn;
        AId = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();

        cn.Open();
        cmd.CommandText = "Select reasonofdecline from Approvecertificate where applid=" + AId + "";
        cmd.Connection = cn;
        reason = Convert.ToString(cmd.ExecuteScalar());
        Label2.Text = reason.ToString();
        cn.Close();

        if (s1 == "Approve")
        {
            btngeneratecertificate.Visible = true;
        }
        else if (s1 == "Decline")
        {
            Label3.Visible = true;
            Label2.Visible = true;
        }
        else
        {
            lblstatus.Visible = true;
        }

    }
    protected void btngeneratecertificate_Click(object sender, EventArgs e)
    {
        string name = Session["User"].ToString();
        CrystalReportViewer1.Visible = true;
        string type = "Voter Card";
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from voterview where type='" + type + "' and name='" + name + "'", cn);
        da.Fill(ds, "voterview");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Customer\VoterIdReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "voterview");
        crpt.Refresh();
        cn.Close();
    
    }
}