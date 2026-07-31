using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_AdhaarCard : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\CivilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
         cn.Open();
        cmd.CommandText = "Select count(adharregid) from Adharcard";
        cmd.Connection=cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar ());
        n++;
        txtadhaarregid.Text  = n.ToString();
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
    protected void btnuploadsign_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile == true)
        {
            FileUpload3.SaveAs(Server.MapPath("~\\Images\\" + FileUpload3.FileName));
            Image5.ImageUrl = "~\\Images\\" + FileUpload3.FileName;
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if(rdfemale.Checked==false && rdmale.Checked==false && rdother.Checked==false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Please Select Gender')</script>");
      
        }
        else
        {
            
        cn.Open();
        cmd.CommandText = "insert into Adharcard values('"+txtadhaarregid.Text+"','"+txtname.Text+"','"+Image3.ImageUrl+"',"+txtmobilenumber.Text+",'"+txtdateofbirth.Text+"',@p1,'"+txtemailid.Text+"',"+txtage.Text+",'"+txthousebuilding.Text+"','"+txtstreetlane.Text+"','"+txtlandmark.Text+"','"+txtarealocality.Text+"','"+txtvillagecity.Text+"',"+txtpostoffice.Text+",'"+drpdistrict.Text+"','"+drpstate.Text+"','"+txtgname.Text+"','"+txtgaadhaarno.Text+"','"+Image5.ImageUrl+"','"+txtdoc.Text+"','"+drpdoclist.Text+"')";
        if (rdmale.Checked == true)
            cmd.Parameters.AddWithValue("@p1",rdmale.Text);
        else if (rdfemale.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdfemale.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rdother.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Information Submited Successfully!!')</script>");
        Session["appid"] = txtadhaarregid.Text;
        Session["type"] = "Adhaar Card";
        Response.Redirect("~/Customer/Payment.aspx");
        }

    }
    protected void txtdateofbirth_TextChanged(object sender, EventArgs e)
    {
        DateTime d1 = DateTime.Now;
        DateTime d2 = DateTime.Parse(txtdateofbirth.Text);
        TimeSpan span = d1 - d2;
        txtage.Text = (span.Days / 365).ToString();

        int a = Convert.ToInt32(txtage.Text);
        if (a<= 5)
        {
            txtgname.Enabled = true;
            txtgaadhaarno.Enabled = true;
        }
        else
        {
            txtgname.Enabled = false;
            txtgaadhaarno.Enabled = false;
        }
    }
    protected void btnuploaddoc_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile == true)
        {
            FileUpload4.SaveAs(Server.MapPath("~\\Documents\\" + FileUpload4.FileName));
            txtdoc.Text = "~\\Documents\\" + FileUpload4.FileName;
        }
    }
}