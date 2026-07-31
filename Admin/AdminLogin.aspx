<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 28px;
            text-align: center;
        }
        .style3
        {
            width: 227px;
            text-align: left;
        }
        .style4
        {
            width: 227px;
            text-align: left;
            height: 54px;
        }
        .style5
        {
            height: 54px;
        }
        .style6
        {
            border-radius:10px;
        }
        .style7
        {
            background-color: #CCCCCC;
        }
    </style>
</head>

<body background="../Images/HD_Technologies_Banner5.jpg">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/HD_Technologies_Banner5.jpg" Height="700">
  
                    <br /><br /><br />
                    <br />
                    <table align="center" cellpadding="5" cellspacing="0" 
    class="style7">
                        <tr>
                            <td class="style2" colspan="2" 
                                style="font-weight: 700; font-size: x-large; color: #FF0000;">
                                &nbsp;<asp:Image ID="Image1" runat="server" Height="102px" 
                                    ImageUrl="~/Images/pngwing.com (1).png" Width="119px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;Admin Login</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Admin Name</td>
                            <td>
                                <asp:TextBox ID="txtadminname" Class="style6" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Password</td>
                            <td class="style5">
                                <asp:TextBox ID="txtpassword" Class="style6" runat="server" Height="30px" Width="200px" 
                                    TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Button ID="btnlogin0" Class="style6" runat="server" BackColor="#336699" Font-Bold="True" 
                                    ForeColor="White" Height="30px" Text="Login" Width="150px" 
                                    onclick="btnlogin_Click" BorderStyle="None" />
                                &nbsp;&nbsp; &nbsp;
                                <asp:Button ID="btncancel0" Class="style6" runat="server" BackColor="#336699" Font-Bold="True" 
                                    ForeColor="White" Height="30px" Text="Cancel" Width="150px" 
                                    BorderStyle="None" />
                            </td>
                        </tr>
                    </table>
           
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /><br /> <br /><br /><br /> </asp:Panel>
           
    </form>
</body>
</html>
