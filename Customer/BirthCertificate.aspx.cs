using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_BirthCertificate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(birthregid) from Birthcertificate";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtregid.Text = n.ToString();
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
            cmd.CommandText = "insert into Birthcertificate values('" + txtregid.Text + "','" + txtfathername.Text + "','" + txtinformername.Text + "','" + txtbdate.Text + "','" + txtfatherqualification.Text + "','" + txtinformeraddress.Text + "','" + txtname.Text + "','" + txtmothername.Text + "','" + txtdateofreg.Text + "',@p1,'" + txtmotherqualification.Text + "','" + txtpermanentaddress.Text + "','" + txtplcofbirth.Text + "','" + drpdivilarytype.Text + "','" + drpreligion.Text + "','" + txtvillage.Text + "','" + txttaluka.Text + "','" + drpdistrict.Text + "','" + drpstate.Text + "','" + txtfatheroccupation.Text + "'," + txtmotheragewhenbabyborn.Text + "," + txtageofmotheratwedding.Text + "," + txtpregnancyperiod.Text + "," + txtnoofchildren.Text + "," + txtbabyweight.Text + ",'" + txtdocument.Text + "','" + txtuploadbirthcard.Text + "')";
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
            Session["appid"] = txtregid.Text;
            Session["type"] = "Birth Certificate";
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

    protected void btnuploadbirthcard_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload2.FileName));
            txtuploadbirthcard.Text = "~\\Documents\\" + FileUpload2.FileName;
        }
    }
}