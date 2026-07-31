<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="User_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
        .style15
        {
            color: #FFFFFF;
        height: 41px;
    }
        .style16
        {
            color: #FFFFFF;
            font-size: x-large;
        }
        .style17
        {
            font-size: medium;
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
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="style16"> ENQUIRY FORM</span>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="color: #000000; font-size: 18px; font-weight: bold">
                <table width="60%" align="center" cellpadding="8" class="style17">
        
       
        <tr>
    
        <td colspan="2" style="font-size: 18px; font-weight: bold; color: #000000">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;Name</td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;Mobile Number</td>
        <td>
            <asp:TextBox ID="txtmobile" runat="server" Height="30px" Width="200px" 
                MaxLength="10"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtmobile" ErrorMessage="Enter valid mobile number" 
                ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;Email</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage=" Enter a valid email" 
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Query</td>
        <td>
            <asp:TextBox ID="txtquery" runat="server" Height="30px" Width="200px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnsubmit" runat="server" BackColor="#003366" Font-Bold="True" 
                ForeColor="White" Height="30px" Text="Submit" Width="150px" 
                onclick="btnsubmit_Click" BorderStyle="None" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="btncancel" runat="server" BackColor="#003366" Font-Bold="True" 
                ForeColor="White" Height="30px" onclick="btncancel_Click" Text="Cancel" 
                Width="150px" BorderStyle="None" />
            &nbsp;</td>
    </tr>
    </table>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

