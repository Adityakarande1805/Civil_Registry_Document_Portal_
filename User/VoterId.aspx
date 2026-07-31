<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="VoterId.aspx.cs" Inherits="User_VoterId" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 316px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table align="center" cellpadding="5" cellspacing="0" 
        style="border: thin solid #808080" width="80%">
        <tr>
            <td class="style15" colspan="2" 
                style="font-weight: 700; background-image: url('../Images/indian-flag.jpg');">
                &nbsp;&nbsp; <span class="style16">&nbsp;VOTER ID REGISTRATION</span>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                <asp:Image ID="Image2" runat="server" Height="174px" 
                    ImageUrl="~/Images/com.voter.name.search.png" style="margin-left: 78px" 
                    Width="200px" />
            </td>
            <td>
                <p class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style17">DOCUMENTS REQUIRED</span></p>
                <p style="margin-top: 0px">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applying for a Voters ID requires you to submit the following 
                    documents.<br />
                </p>
                <ul>
                    <li style="margin-top: 4px">Proof of identity</li>
                    <li>Proof of address</li>
                    <li>Photograph</li>
                </ul>
                <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">Voter ID Card Eligibility:</span></p>
                <ul>
                    <li>In order to be eligible for a Voter ID card, indivisuals must meet the following 
                        criteria</li>
                </ul>
                <p>
                    &nbsp;</p>
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

