using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_MarriageCertificate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(marriageregid) from Marriagecertificate";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtmrgregid.Text = n.ToString();
        cn.Close();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "insert into Marriagecertificate values(" + txtmrgregid.Text + ",'" + txtregdate.Text + "','"+txtplcofmrg.Text+"','" + txtmrgdate.Text + "','" + txthubname.Text + "','" + txthubaddress.Text + "','" + txthubreligion.Text + "'," + txthubageatmrg.Text + ",'" + Image3.ImageUrl + "','" + txtwifename.Text + "','" + txtwifeaddress.Text + "','" + txtwifereligion.Text + "','" + txthubfathername.Text + "','" + txtwifefathername.Text + "','" + Image4.ImageUrl + "','"+txthubadhar.Text+"','"+txtwifeadhar.Text+"','" + txtwitness1name.Text + "','" + txtwitness1address.Text + "','" + Image5.ImageUrl + "','" + txtwitness2name.Text + "','" + txtwitness2address.Text + "','" + Image6.ImageUrl + "','" + txtwitness1adhar.Text + "','" + txtwitness2adhar.Text + "'," + txtwifeageatmrg.Text + ",'"+txtstamp.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Information Submitted Successfully!!')</script>");
        Session["appid"] = txtmrgregid.Text;
        Session["type"] = "Marriage Certificate";
        Response.Redirect("~/Customer/Payment.aspx");
    }
    protected void btnuploadhubimg_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image3.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
    }
    protected void btnuploadwifeimg_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\Images\\"+FileUpload2.FileName));
            Image4.ImageUrl = "~\\Images\\" + FileUpload2.FileName;
        }
    }
    protected void btnuploadwitness1_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile == true)
        {
            FileUpload3.SaveAs(Server.MapPath("~\\Images\\" + FileUpload3.FileName));
            Image5.ImageUrl = "~\\Images\\" + FileUpload3.FileName;
        }
    }
    protected void btnuploadwitness2_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile == true)
        {
            FileUpload4.SaveAs(Server.MapPath("~\\Images\\" + FileUpload4.FileName));
            Image6.ImageUrl = "~\\Images\\" + FileUpload4.FileName;
        }
    }
    protected void btnuploadhubadhar_Click(object sender, EventArgs e)
    {
        if (FileUpload5.HasFile == true)
        {
            FileUpload5.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload5.FileName));
            txthubadhar.Text = "~\\Documents\\" + FileUpload5.FileName;
        }
    }
    protected void btnuploadwifeadhar_Click(object sender, EventArgs e)
    {
        if (FileUpload6.HasFile == true)
        {
            FileUpload6.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload6.FileName));
            txtwifeadhar.Text = "~\\Documents\\" + FileUpload6.FileName;
        }
    }
    protected void btnuploadwitness1adhar_Click(object sender, EventArgs e)
    {
        if (FileUpload7.HasFile == true)
        {
            FileUpload7.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload7.FileName));
            txtwitness1adhar.Text = "~\\Documents\\" + FileUpload7.FileName;
        }
    }
    protected void btnuploadwitness2adhar_Click(object sender, EventArgs e)
    {
        if (FileUpload8.HasFile == true)
        {
            FileUpload8.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload8.FileName));
            txtwitness2adhar.Text = "~\\Documents\\" + FileUpload8.FileName;
        }
    }
    protected void btnstamp_Click(object sender, EventArgs e)
    {
        if (FileUpload9.HasFile == true)
        {
            FileUpload9.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload9.FileName));
            txtstamp.Text = "~\\Documents\\" + FileUpload9.FileName;
        }
    }
}