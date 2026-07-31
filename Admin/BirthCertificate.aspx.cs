using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_BirthCertificate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string type = "Birth Certificate";
        cn.Open();
        cmd.CommandText = "insert into Approvecertificate values(" + txtappid.Text + ",'" + txtappname.Text + "',@p1,'" + txtreasonofdecline.Text + "','" + type + "','"+TextBox1.Text+"')";
        if (rdapprove.Checked == true)
        {
            cmd.Parameters.AddWithValue("@p1", rdapprove.Text);

        }
        else
        {
            cmd.Parameters.AddWithValue("@p1", rddecline.Text);

        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'>alert('Updated Successfully!!!')</script>");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtappid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtappname.Text = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void rdapprove_CheckedChanged(object sender, EventArgs e)
    {
        if (rdapprove.Checked == true)
        {
            txtreasonofdecline.Enabled = false;
        }
        if (rddecline.Checked == true)
        {
            txtreasonofdecline.Enabled = true;
        }
    }
    protected void rddecline_CheckedChanged(object sender, EventArgs e)
    {
        if (rdapprove.Checked == true)
        {
            txtreasonofdecline.Enabled = false;
        }
        if (rddecline.Checked == true)
        {
            txtreasonofdecline.Enabled = true;
        }
    }
}