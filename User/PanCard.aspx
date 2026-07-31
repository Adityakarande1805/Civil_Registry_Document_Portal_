<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="PanCard.aspx.cs" Inherits="User_PanCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 283px;
            height: 249px;
        }
        .style4
        {
            font-weight: bold;
            }
        .style5
        {
            height: 249px;
        }
        .style6
        {
            font-size: medium;
        }
        .style15
        {
            height: 35px;
        }
        .style16
        {
            color: #FFFFFF;
            font-size: x-large;
        }
        .style17
        {
            font-size: medium;
            height: 33px;
            text-align: left;
        }
        .style18
        {
            font-weight: bold;
            text-align: left;
            text-decoration: underline;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="5" cellspacing="0" 
        style="border: thin solid #808080" width="80%">
        <tr>
            <td class="style15" colspan="2" 
                style="font-weight: 700; background-image: url('../Images/indian-flag.jpg');">
                &nbsp;&nbsp;&nbsp; <span class="style16">PAN REGISTRATION</span>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                <asp:Image ID="Image1" runat="server" Height="233px" 
                    ImageUrl="~/Images/PAN-Card-for-a-Minor-Everything-You-Need-To-Know-thumbnail.png" 
                    style="margin-left: 15px; margin-top: 0px" Width="238px" />
            </td>
            <td>
                <p class="style18">
                    DOCUMENTS REQUIRED</p>
                <ol>
                    <li><b>Documents accepted as proof of indentity [only one]-</b></li>
                </ol>
                <ul>
                    <li class="style17" style="margin-bottom: 0px">Voter&#39;s ID card.</li>
                    <li class="style17">Password</li>
                    <li style="font-size: medium">Adhaar card</li>
                    <li>Driving License, Domacile</li>
                    <li>A certificate issued by a bank that should be duly attested, counting 
                        applicant&#39;s photo and the bank a/c number</li>
                    <li>Pensioner card copy with appropriate&#39;s photograph.</li>
                </ul>
                <ol start="2">
                    <li><b>Documents accepted as proof of Address -</b></li>
                </ol>
                <ul>
                    <li>Electricity Bills</li>
                    <li>Password</li>
                    <li>Statements of Bank Account</li>
                    <li>Latest order for property tax assessment</li>
                    <li>Property Registration Document</li>
                </ul>
                <ol start="3">
                    <li><b>Documents accepted as proof of Date of Birth -</b></li>
                </ol>
                <ul>
                    <li>Birth Certificate issued by Indian Consulat</li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

