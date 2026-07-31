<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="MarriageCertificate.aspx.cs" Inherits="User_MarriageCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 272px;
        }
    .style14
    {
        height: 40px;
    }
    .style15
    {
        color: #FFFFFF;
    }
    .style16
    {
        font-size: x-large;
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
                &nbsp; &nbsp;<span class="style15"><span class="style16">&nbsp; </span>
                    <strong><span class="style16">MARRIAGE REGISTRATION</span></strong></span></td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                <asp:Image ID="Image1" runat="server" Height="288px" 
                    ImageUrl="~/Images/marr.png" style="margin-left: 10px; margin-right: 0px" 
                    Width="251px" />
            </td>
            <td>
                <p>
                    <br />
                    The party should apply to the office of the Inspector General of Registration 
                    under whose jurisdiction the marriage occured or where the spouses had stayed 
                    foe at least six months before the wedding. To register, any one of the 
                    following places should come under the jurisdiction of the Registering Officer.<br />
                </p>
                <ul>
                    <li>&nbsp;Residence of the bridegroom.</li>
                    <li>Residence of the bride.</li>
                    <li>Solemnization place.</li>
                </ul>
                <p>
                    In India, a marrige can be recorded under either the Special Marriage Act or 
                    Hindu Marriage Act. The Special Marriage Act applies to all citizen of Indian 
                    irrespective of their religion, whereas The Hindu Marriage Act applies only to 
                    Hindus. the Special Marriage Act provides for the solemnization of a marriage as 
                    well as registration of an already solemnized marriage and does not fit 
                    solemnization of amarriage by a marriage Registrar.</p>
                <p>
                    <strong>DOCUMENTS REQUIRED</strong></p>
                <ul>
                    <li>Application form</li>
                    <li>Affidavit of the couple is needed in which the place of marriage occurred 
                        including the details of marriage date, marital status and nationality.</li>
                    <li>Passport size photo and photograph of a marriage invitation card, if any.</li>
                    <li>Residency proof of the Applicant</li>
                    <li>Adhaar Card of the groom (Age proof)</li>
                    <li>Adhaar Card of the bride (Age Proof)</li>
                </ul>
            </td>
        </tr>
    </table>
<br />
</asp:Content>

