<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Customer_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style2
        {
            width: 58%;
        }
        .style4
        {
            width: 247px;
        }
        .style15
        {
            height: 40px;
        }
        .style16
        {
            color: #FFFFFF;
            font-size: x-large;
        }
        .style17
        {
            width: 247px;
            text-align: left;
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
                &nbsp;&nbsp;&nbsp;&nbsp; <span class="style16">FEEDBACK FORM</span>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="color: #000000; font-size: 18px; font-weight: bold">
                <table width="60%" align="center" cellpadding="8">
        
       
        <tr>
            <td class="style17">
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Email Id</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter a valid email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Mobile Number</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="Enter valid mobile number" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Feedback Description</td>
            <td>
                <asp:TextBox ID="txtqueary" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#003366" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Submit" Width="160px" 
                    onclick="btnsubmit_Click" BorderStyle="None" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" BackColor="#003366" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Reset" Width="160px" 
                    onclick="btnreset_Click" BorderStyle="None" />
                <br />
            </td>
        </tr></table>      </td></tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

