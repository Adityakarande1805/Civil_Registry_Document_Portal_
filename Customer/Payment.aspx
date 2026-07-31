<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Customer_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            
        }
    .style6
    {
  
    }
    .style7
    {
   
    }
    .style8
    {
    }
    .style9
    {
   
    }
    .style15
    {
        height: 39px;
    }
    .style16
    {
        font-size: x-large;
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
 <br /><br />
    <table align="center" cellpadding="5" cellspacing="0" width="80%" 
        style="border: thin solid #808080">
    <tr>
        <td class="style15" colspan="2" 
            style="padding: 5px; background-image: url('../Images/indian-flag.jpg');">
                &nbsp;&nbsp;<strong><span class="style16">&nbsp;&nbsp;
             PAYMENT DETAILS</span></strong></td>
    </tr>
    <tr>
        <td class="style4">
   
    
    <table align="center" cellpadding="4" cellspacing="0">
        <tr>
            <td style="font-weight: 700">
              </td>
            <td style="font-weight: 700" class="style4">
                Date:&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Payment id</td>
            <td class="style4">
                <asp:Label ID="lblpayid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Application id</td>
            <td class="style4">
                <asp:Label ID="lblapplid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Certificate Type</td>
            <td class="style4">
                <asp:Label ID="lblcertificatetype" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Fees</td>
            <td class="style4">
                <asp:Label ID="lblfee" runat="server" Text="100"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Payment Mode</td>
            <td class="style4">
                <asp:RadioButton ID="rdonline" runat="server" GroupName="a" 
                    Text="OnlinePayment" AutoPostBack="True" 
                    oncheckedchanged="rdonline_CheckedChanged1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdupi" runat="server" GroupName="a" Text="UPI" 
                    AutoPostBack="True" oncheckedchanged="rdupi_CheckedChanged1" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Panel ID="Panel1" runat="server" Height="172px" style="text-align: left" 
                    Width="347px">
                    <table align="center" cellpadding="4" cellspacing="0" class="style1" 
                        style="height: 163px">
                        <tr>
                            <td>
                                IFSC Code</td>
                            <td>
                                <asp:TextBox ID="txtifsccode" runat="server" Height="25px" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bank Name</td>
                            <td>
                                <asp:TextBox ID="txtbankname" runat="server" Height="25px" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Account Number</td>
                            <td>
                                <asp:TextBox ID="txtaccno" runat="server" Height="25px" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                CVV
                            </td>
                            <td class="style9">
                                <asp:TextBox ID="txtcvv" runat="server" Height="25px" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style6">
                <asp:Panel ID="Panel2" runat="server" Height="179px" Width="396px">
                    <table align="center" cellpadding="4" cellspacing="0" class="style1">
                        <tr>
                            <td style="color: #000000; font-weight: 700; text-align: center">
                                Google Pay</td>
                            <td style="font-weight: 700; color: #000000; text-align: center">
                                Phone Pay</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image3" runat="server" Height="144px" 
                                    ImageUrl="~/Images/GpayQR.jpeg" Width="153px" />
                            </td>
                            <td style="text-align: center">
                                <asp:Image ID="Image4" runat="server" Height="138px" 
                                    ImageUrl="~/Images/PhonepayQR.jpeg" Width="160px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnpayment" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Make Payment" Width="150px" 
                    onclick="btnpayment_Click" />
            </td>
        </tr>
    </table>


    <br />
    <br />


</asp:Content>

