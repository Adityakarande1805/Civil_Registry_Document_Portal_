using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_Voterid : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count(voterregid) from Voterid";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtvoterregid.Text = n.ToString();
        cn.Close();

        string s = Session["User"].ToString();
        txtname.Text = s.ToString();
    }
    protected void btnuploadimage_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image3.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
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
            cmd.CommandText = "insert into Voterid values(" + txtvoterregid.Text + ",'" + txtregdate.Text + "','" + txtnameofparliment.Text + "'," + txtnoofparliment.Text + ",'" + txtname.Text + "','" + txtfathername.Text + "'," + txtmobilenumber.Text + ",'" + txtemailid.Text + "'," + txtadharno.Text + ",'" + drpreligion.Text + "',@p1,'" + txtdateofbirth.Text + "'," + txtage.Text + ",'" + drpdisability.Text + "','" + txtdisabilitytyper.Text + "','" + drpstate.Text + "','" + drpdistrict.Text + "','" + txttaluka.Text + "','" + txtvillage.Text + "'," + txtpincode.Text + ",'" + Image3.ImageUrl + "','" + drpidproof.Text + "','" + txtidproof.Text + "','" + drpaddresspoof.Text + "','" + txtaddressproof.Text + "')";
            if (rdmale.Checked == true)
                cmd.Parameters.AddWithValue("@p1", rdmale.Text);
            else if (rdfemale.Checked == true)
                cmd.Parameters.AddWithValue("@p1", rdfemale.Text);
            else
                cmd.Parameters.AddWithValue("@p1", rdother.Text);
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Information Submitted Successfully!!')</script>");

            Session["appid"] = txtvoterregid.Text;
            Session["type"] = "VoterId";
            Response.Redirect("~/Customer/Payment.aspx");
        }
    }
    protected void txtdateofbirth_TextChanged(object sender, EventArgs e)
    {
        DateTime d1 = DateTime.Now;
        DateTime d2 = DateTime.Parse(txtdateofbirth.Text);
        TimeSpan span = d1 - d2;
        txtage.Text = (span.Days/ 365).ToString();
    }
    protected void btnidproof_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile == true)
        {
            FileUpload3.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload3.FileName));
            txtidproof.Text = "~\\Documents\\" + FileUpload3.FileName;
        }
    }
    protected void btnaddressproof_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile == true)
        {
            FileUpload4.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload4.FileName));
            txtaddressproof.Text = "~\\Documents\\" + FileUpload4.FileName;
        }
    }
}