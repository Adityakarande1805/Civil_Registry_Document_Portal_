<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="BirthCertificate.aspx.cs" Inherits="User_BirthCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style4
    {
        width: 231px;
    }
    .style5
    {
        font-weight: bold;
    }
    .style6
    {
        }
    .style7
    {
        font-size: 14px;
        height: 21px;
    }
        .style15
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: x-large;
            background-image: url('../Images/indian-flag.jpg');
            height: 40px;
        }
        .style17
        {
            color: #000000;
        }
        .style19
        {
            font-size: medium;
            height: 21px;
            color: #000000;
        }
        .style20
        {
            height: 33px;
            text-align: right;
            text-decoration: underline;
        }
        .style21
        {
            height: 54px;
        }
        .style22
        {
            height: 57px;
        }
        .style23
        {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <table align="center" cellpadding="5" cellspacing="0" width="80%" 
        style="border: thin solid #808080">
    <tr>
        <td class="style15" colspan="2" style="padding: 5px">
                &nbsp;&nbsp;&nbsp;&nbsp;
                REGISTERING A BIRTH</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Image ID="Image1" runat="server" Height="231px" 
                ImageUrl="~/Images/images (8).png" style="margin-left: 22px; margin-top: 0px" 
                Width="176px" />
        </td>
        <td>
            <ul style="font-size: 14px">
                <li class="style21">To obtain a birth certificate, The birth must be registered 
                    with the concerened local authorities within 21 days from date of occurance.</li>
                <li class="style22">In case of birth has taken place in hospital or nursing 
                    homes or medical institution, Such birth has to be reported by the institutions.</li>
            </ul>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style20"><strong>DOCUMENTS REQUIRED</strong></span></p>
            <p class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style19">Following documents needs to be 
                turnished for getting obtaining Maharashtra birth certificate.</span></p>
            <ul>
                <li class="style23">Identity proof of the parents for 
                    verification(AdhaarCard)</li>
                <li class=""><span class="style17">Letter from h</span>ospital - proof of birth of child issued by the 
                    hospital where child is born.</li>
            </ul>
        </td>
    </tr>
</table><br /><br /><br /><br /><br /><br />
</asp:Content>

