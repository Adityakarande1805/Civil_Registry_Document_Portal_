using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd= new SqlCommand();
    SqlDataAdapter da=new SqlDataAdapter();
    DataTable dt=new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="select username,password from Registration where username='"+txtusername.Text+"'and password='"+txtpassword.Text+"'";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand=cmd;
        da.Fill(dt);
        string a=txtusername.Text;
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Login", "<script language='javascript'>alert('Login Successfully!!')</script>");
            Session["User"] = txtusername.Text;
            Response.Redirect("~/Customer/Home.aspx");
        }
        else
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script Language='javascript'>alert('Incorrect username or password')</Script>");
    }
}