<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="User_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 90%;
    }
    .style4
    {
    
    }
    .style5
    {        text-align: justify;
    }
    .style6
    {
        height: 33px;
        text-align: left;
        color: #FFFFFF;
        font-size: large;
    }
    .style14
    {
        font-size: x-large;
        color: #FFFFFF;
        height: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<table align="center" cellpadding="5" cellspacing="0" class="style2" 
    style="border: thin solid #808080">
    <tr>
        <td class="style14" 
            
            style="font-weight: 700; background-image: url('../Images/indian-flag.jpg');">
            &nbsp;&nbsp;&nbsp; About Us&nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Image ID="Image1" runat="server" Height="181px" 
                ImageUrl="~/Images/crs.jpg" style="margin-top: 26px" Width="850px" />
        </td>
    </tr>
    <tr>
        <td align="justify">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Civil Registry is a consultancy agency who are providing the assistant to apply 
            and enquire about the legal activities and different application such as a Birth 
            Registration, Death Registration, Marriage Registration, VoterId Registration, 
            PanCard Registration, AdhaarCard Registration.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Civil Registry has to its 
            own support team for giving assistance to collect supporting documents and 
            signature for each of every application. It has its own legal helpdesk for 
            assisting the legal quiries online.</td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br />
</asp:Content>

