<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="DeathCertificate.aspx.cs" Inherits="User_DeathCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            font-size: medium;
        }
        .style3
        {
            width: 313px;
        }
        .style4
        {
            font-size: large;
            font-weight: bold;
        }
    .style14
    {
        height: 40px;
    }
    .style15
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
            <td class="style14" colspan="2" 
                style="font-weight: 700; background-image: url('../Images/indian-flag.jpg');">
                &nbsp;&nbsp;&nbsp; <span class="style15">&nbsp;</span><strong><span class="style15">REGISTERING DEATH</span></strong>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                <asp:Image ID="Image1" runat="server" Height="276px" 
                    ImageUrl="~/Images/death.jpg" style="margin-left: 16px" Width="269px" />
            </td>
            <td>
                <p>
                    <br />Every death in Maharashtra needs to be registered in the concern Register office 
                in order to obtain death certificate Persons responsible for registering a death is 
                    listed below.<br />
                </p>
                <ul>
                    <li>In case death in a house of the family is responsible for registering death.</li>
                    <li>The medical in-charge need to register, if the death occurs in a hospital or 
                        medical institution.</li>
                    <li>Jailer in-charge is responsible for registration, if a death occurs in a jail</li>
                    <li>If a new-born child or body is founded deserted in an area, headnman of that 
                        area or local police station in-charge can register the death.</li>
                    <li>In case death occurs in a hostel, choultry, dharmasala, boarding-house, lodging 
                        house, tavem toddy shop,barrack or public resort the in-charge person of that 
                        place needs to register.</li>
                    <li>In case of death occurs in a plantation the superintendent of the plantation can 
                        register.</li>
                </ul>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>DOCUMENT</strong><span class="style4"> 
                    REQUIRED</span></p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Following documents need to be submitted at the time 
                    of completing death&nbsp;registration in Maharashtra</p>
                <ul>
                    <li>Declaration&nbsp; by close relative or family member in prescribe format</li>
                    <li>Application form</li>
                    <li>Adress proof of deceased (Voter ID card, electricity, gas, water, telephone bill 
                        passport, valid ration card ,Aadhaar card, Name of the deceased)</li>
                </ul>
            </td>
        </tr>
    </table>
<br />
</asp:Content>

