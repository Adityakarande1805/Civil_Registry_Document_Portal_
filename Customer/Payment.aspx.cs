using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_Payment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(payid) from Payment";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        lblpayid.Text = n.ToString();
        cn.Close();

        lblapplid.Text = Session["appid"].ToString();
        lblcertificatetype.Text = Session["type"].ToString();
        lbldate.Text = System.DateTime.Now.ToShortDateString();

        Panel1.Visible = false;
        Panel2.Visible = false;
    }
    protected void btnpayment_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Payment values(" + lblpayid.Text + ",'" + lblapplid.Text + "','"+lbldate.Text+"','" + lblcertificatetype.Text + "'," + lblfee.Text + ",@p1,'"+txtifsccode.Text+"','"+txtbankname.Text+"','"+txtaccno.Text+"','"+txtcvv.Text+"')";
        if (rdonline.Checked==true)
            cmd.Parameters.AddWithValue("@p1", rdonline.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rdupi.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Payment Received Successfully!!...')</script>");
    }
    protected void rdonline_CheckedChanged1(object sender, EventArgs e)
    {
        if (rdonline.Checked == true)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        if (rdupi.Checked == true)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }
    protected void rdupi_CheckedChanged1(object sender, EventArgs e)
    {
        if (rdonline.Checked == true)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        if (rdupi.Checked == true)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }
}