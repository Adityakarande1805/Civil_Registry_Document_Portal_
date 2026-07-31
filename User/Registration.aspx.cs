using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(custid) from Registration";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtid.Text = n.ToString();
        cn.Close();
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
        txtemail.Text = "";
        txtmobile.Text = "";
        txtuname.Text = "";
        txtpassword.Text = "";
        txtconfirmpassword.Text = "";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Registration values("+txtid.Text+",'" + txtname.Text + "','" + txtemail.Text + "'," + txtmobile.Text + ",'"+txtuname.Text+"','" + txtpassword.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Registered Successfully!!')</script>");
    }
}