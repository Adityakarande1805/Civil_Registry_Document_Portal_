<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="AdhaarCard.aspx.cs" Inherits="User_AdhaarCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 247px;
            height: 276px;
        }
        .style5
        {
            height: 276px;
        }
        .style6
        {
            font-weight: bold;
        }
        .style15
        {
            height: 40px;
        }
        .style16
        {
            font-size: x-large;
            color: #FFFFFF;
        }
        .style17
        {
            font-weight: bold;
            height: 33px;
            text-align: right;
            text-decoration: underline;
            font-size: large;
        }
    .style18
    {
        margin-left: 36px;
        margin-top: 38px;
    }
    .style19
    {
        width: 421px;
    }
    .style20
    {
        width: 81%;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
 <br />
    <br />
    <table align="center" cellpadding="5" cellspacing="0" 
        style="border: thin solid #808080" class="style20">
        <tr>
            <td class="style15" colspan="2" 
                style="font-weight: 700; background-image: url('../Images/indian-flag.jpg');">
                &nbsp;&nbsp; <span class="style16">&nbsp;ADHAR CARD REGISTRATION</span>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                <asp:Image ID="Image4" runat="server" CssClass="style18" Height="224px" 
                    ImageUrl="~/Images/Static adhaar.jpg" Width="265px" />
            </td>
            <td class="style19">
                <p style="margin-top: 0px">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adhar Number is a 12-digit Random Number issued by the UIDAI(&quot;Authority&quot;) 
                    to the residents of india after satisfying the verification process laid down by 
                    the authority .</p>
                <p style="margin-top: 0px">
                    Any individual ,irreaspective of age and gender, who is a resident of india, may 
                    voluntarily enrol to obtain adhar number.</p>
                <p style="margin-top: 0px">
                    <span class="style17">DOCUMENTS REQUIRED</span></p>
                <ul>
                    <li style="margin-top: 4px">Ration Card</li>
                    <li>Leaving Certificate</li>
                    <li>Resident Proof</li>
                    <li>Photograph</li>
                </ul>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>

