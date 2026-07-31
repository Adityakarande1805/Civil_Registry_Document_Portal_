<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
    {
        width: 63%;
            height: 239px;
            margin-top: 56px;
        }
        .style4
        {
            width: 242px;
            
        }
        .style5
        {
            color: #000000;
        }
        .style6
        {
            height: 44px;
        }
        .style1
        {
            border-radius:10px;
        }
        .style7
        {
            height: 37px;
        }
        .style8
        {
            height: 39px;
        }
    .style15
    {
        font-size: x-large;
        height: 40px;
    }
    .style16
    {
        font-size: x-large;
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="5" cellspacing="0" 
        style="border: thin solid #808080" width="80%">
        <tr>
            <td colspan="2" 
                style="font-weight: 700; background-image: url('../Images/indian-flag.jpg');" 
                class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp; <span class="style16">&nbsp;LOGIN FORM</span>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="color: #000000; font-size: 18px; font-weight: bold">
                <table width="60%" align="center" cellpadding="8">
    
    <tr>
        <td rowspan="6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txtusername" class="style1" runat="server" Height="30px" Width="250px"  
                placeholder="Enter name"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txtpassword" class="style1" runat="server" Height="30px" 
                Width="250px"  placeholder="Enter password"
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            <asp:Button ID="btnlogin" class="style1" runat="server" BackColor="#003366" Font-Bold="True" 
                ForeColor="White" Height="30px" onclick="btnlogin_Click" Text="Login" 
                Width="150px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" 
                NavigateUrl="~/User/Registration.aspx">New to Website?Register</asp:HyperLink>
            <br />
        </td>
    </tr>
</table>
</asp:Panel>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

