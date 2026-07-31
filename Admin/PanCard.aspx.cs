using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_PanCard : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string type = "Pan Card";
        cn.Open();
        cmd.CommandText = "insert into Approvecertificate values(" + txtappid.Text + ",'" + txtappname.Text + "',@p1,'" + txtreasonofdecline.Text + "','" + type + "','"+txtpanno.Text+"')";
        if (rdapprove.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdapprove.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rddecline.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        GridView1.DataBind();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Updated Successfully!!!')</script>");
    
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtappid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtappname.Text = GridView1.SelectedRow.Cells[6].Text;
    
    }
    protected void rdapprove_CheckedChanged(object sender, EventArgs e)
    {
        if (rdapprove.Checked == true)
        {
            txtreasonofdecline.Enabled = false;
            Random rand = new Random();
            string panNo = "";
            int randValue;
            string str = "";
            char letter;
            for (int i = 0; i < 4; i++)
            {
                randValue = rand.Next(0, 26);
                letter = Convert.ToChar(randValue + 65);

                str = str + letter;
            }

            string name = txtappname.Text;
            char a =char.ToUpper(name[1]);

            int _min = 1000;
            int _max = 9999;
            Random _ran = new Random();
            int id = _ran.Next(_min, _max);
            char ch = 'Z';

            panNo = str + a + id + ch;

            txtpanno.Text = panNo;

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
            Random rand = new Random();
            string panNo = "";
            int randValue;
            string str = "";
            char letter;
            for (int i = 0; i < 4; i++)
            {
                randValue = rand.Next(0, 26);
                letter = Convert.ToChar(randValue + 65);

                str = str + letter;
            }

            string name = txtappname.Text;
            char a = char.ToUpper( name[4]);
            

            int _min = 1000;
            int _max = 9999;
            Random _ran = new Random();
            int id = _ran.Next(_min, _max);
            char ch = 'Z';

            panNo = str + a + id + ch;

            txtpanno.Text = panNo;

 
        }
        if (rddecline.Checked == true)
        {
            txtreasonofdecline.Enabled = true;
        }
    }
}