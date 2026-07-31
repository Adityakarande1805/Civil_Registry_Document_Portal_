<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    .style15
    {
        font-size: x-large;
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
                &nbsp;&nbsp;&nbsp;&nbsp; <span class="style16">&nbsp; REGISTRATION FORM</span>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="color: #000000; font-size: 18px; font-weight: bold">
                <table width="70%" align="center" cellpadding="8">
    
        <tr>
            <td>
                Customer Id</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="200px" 
                    Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Customer Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px" placeholder="Enter Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email Id</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter a valid email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Mobile Number</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" Height="30px" Width="200px" 
                    MaxLength="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="Enter valid mobile number" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Username</td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" Height="30px" Width="200px" placeholder="Enter Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password</td>
            <td>
                <asp:TextBox ID="txtconfirmpassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" 
                    ErrorMessage="Password must be same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#003366" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnsubmit_Click" Text="Submit" 
                    Width="150px" BorderStyle="None" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" BackColor="#003366" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnreset_Click" Text="Reset" 
                    Width="150px" BorderStyle="None" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

