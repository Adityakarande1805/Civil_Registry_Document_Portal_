using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Adhaarcard : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string type = "Adhaar Card";
        cn.Open();

        cmd.CommandText = "insert into Approvecertificate values("+txtappid.Text+",'"+txtappname.Text+"',@p1,'"+txtreasonofdecline.Text+"','"+type+"','"+TextBox1.Text +"')";
        if (rdapprove.Checked == true)
        {
            cmd.Parameters.AddWithValue("@p1", rdapprove.Text);
            
        }
        else
        {
            cmd.Parameters.AddWithValue("@p1", rddecline.Text);
           
        }
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(),"Submit","<script language='javascript'>alert('Updated Successfully!!!')</script>");
    }
    protected void rdapprove_CheckedChanged(object sender, EventArgs e)
    {
        if (rdapprove.Checked == true)
        {
            txtreasonofdecline.Enabled = false;
            int id = Convert.ToInt32(txtappid.Text);
            int a, b, c;
            a = id + 1;
            b = id + 2;
            c = id + 3;
            txtadhaarno1.Text = "830" + a;
            txtadhaarno2.Text = "000" + b;
            txtadhaarno3.Text = "000" + c;

            string id1 = txtadhaarno1.Text +"  "+ txtadhaarno2.Text +"  "+ txtadhaarno3.Text;
            TextBox1.Text = id1.ToString();


        }
        if (rddecline.Checked == true)
        {
            txtreasonofdecline.Enabled = true;
            txtadhaarno1.Text = "";
            txtadhaarno2.Text = "";
            txtadhaarno3.Text = "";
        }
    }
    protected void rddecline_CheckedChanged(object sender, EventArgs e)
    {
        if (rdapprove.Checked == true)
        {
            txtreasonofdecline.Enabled = false;
            int id = Convert.ToInt32(txtappid.Text);
            int a, b, c;
            a = id + 1;
            b = id + 2;
            c = id + 3;
            txtadhaarno1.Text = "830" + a;
            txtadhaarno2.Text = "000" + b;
            txtadhaarno3.Text = "000" + c;

            string id1 = txtadhaarno1.Text + "  " + txtadhaarno2.Text + "  " + txtadhaarno3.Text;
            TextBox1.Text = id1.ToString();

        }
        if (rddecline.Checked == true)
        {
            txtreasonofdecline.Enabled = true;
            txtadhaarno1.Text = "";
            txtadhaarno2.Text = "";
            txtadhaarno3.Text = "";
        }
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

        txtappid.Text = GridView1.SelectedRow.Cells[1].Text;
      






        txtappname.Text = GridView1.SelectedRow.Cells[2].Text;
    }
}