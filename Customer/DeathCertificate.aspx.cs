using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_DeathCertificate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(deathregid) from Deathcertificate";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtdeathregid.Text = n.ToString();
        cn.Close();

        string s = Session["User"].ToString();
        txtinformername.Text = s.ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (rdfemale.Checked == false && rdmale.Checked == false && rdother.Checked == false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Please Select Gender')</script>");

        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Deathcertificate values('" + txtdeathregid.Text + "','" + txtdateofreg.Text + "','" + txtname.Text + "',@p1,'" + txtdateofbirth.Text + "','" + drpplcofdeath.Text + "','" + txtfathername.Text + "','" + txtmothername.Text + "','" + txtpermanentaddress.Text + "','" + txtinformername.Text + "','" + txtinformeraddress.Text + "'," + txtage.Text + ",'" + txtdeathdate.Text + "','" + drpmedicalservice.Text + "','" + drpoccupation.Text + "','" + txtdeathreason.Text + "','" + drpaddiction.Text + "','" + txtdocument.Text + "','" + drpaddressproof.Text + "','" + txtaddressproof.Text + "')";
            if (rdmale.Checked == true)
                cmd.Parameters.AddWithValue("@p1", rdmale.Text);
            else if (rdfemale.Checked == true)
                cmd.Parameters.AddWithValue("@p1", rdfemale.Text);
            else
                cmd.Parameters.AddWithValue("@p1", rdother.Text);
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Information Submited Successfully!!')</script>");

            Session["appid"] = txtdeathregid.Text;
            Session["type"] = "Death Certificate";
            Response.Redirect("~/Customer/Payment.aspx");
        }
    }
    protected void btnuploaddocument_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload1.FileName));
            txtdocument.Text = "~\\Documents\\" + FileUpload1.FileName;
        }
    }
    protected void txtdateofbirth_TextChanged(object sender, EventArgs e)
    {
        DateTime d1 = DateTime.Parse(txtdeathdate.Text);
        DateTime d2 = DateTime.Parse(txtdateofbirth.Text);
        TimeSpan span = d1 - d2;
        txtage.Text = (span.Days / 365).ToString();
    }
    protected void btnaddressproof_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload2.FileName));
            txtaddressproof.Text = "~\\Documents\\" + FileUpload2.FileName;
        }
    }
}