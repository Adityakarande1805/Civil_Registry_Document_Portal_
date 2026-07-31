<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="DeathCertificate.aspx.cs" Inherits="Customer_DeathCertificate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            color: #0066CC;
            background-color: #99CCFF;
        }
        .style6
        {
            font-size: large;
        }
        .style7
        {
            width: 223px;
        }
    .style15
    {
        color: #FFFFFF;
        font-size: x-large;
        height: 41px;
        background-color: #990000;
    }
        .style17
        {
            font-size: large;
            height: 33px;
            text-align: left;
            width: 93px;
        }
        .style18
        {
            height: 57px;
        }
        .style19
        {
            width: 223px;
            height: 57px;
        }
        .style20
        {
            width: 93px;
        }
        .style21
        {
            width: 93px;
            height: 57px;
        }
        .style22
        {
            height: 68px;
        }
        .style23
        {
            width: 303px;
        }
        .style24
        {
            height: 57px;
            width: 303px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="5" cellspacing="0" class="style1" 
        style="width: 91%; height: 415px">
        <tr>
            <td class="style15" colspan="6" 
                style="font-weight: 700; background-color: #99CCFF; background-image: url('../Images/indian-flag.jpg');">
                &nbsp;&nbsp;&nbsp;&nbsp;
                Application Form For Death Certificate</td>
        </tr>
        <tr>
            <td class="style20">
                DeathRegid</td>
            <td class="style23">
                <asp:TextBox ID="txtdeathregid" runat="server" Height="30px" Width="200px" 
                    Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                Date of Reg.</td>
            <td>
                <asp:TextBox ID="txtdateofreg" runat="server" Height="30px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                Permanent Address</td>
            <td>
                <asp:TextBox ID="txtpermanentaddress" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpermanentaddress" ErrorMessage="Enter Permanent address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Death date</td>
            <td class="style23">
                <asp:TextBox ID="txtdeathdate" runat="server" Height="30px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtdeathdate" ErrorMessage="Enter Death Date" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Date of Birth</td>
            <td>
                <asp:TextBox ID="txtdateofbirth" runat="server" Height="30px" Width="200px" 
                    AutoPostBack="True" ontextchanged="txtdateofbirth_TextChanged" 
                    TextMode="Date"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtdateofbirth" ErrorMessage="Enter date of birth" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Informer Name</td>
            <td>
                <asp:TextBox ID="txtinformername" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Name</td>
            <td class="style23">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Age</td>
            <td>
                <asp:TextBox ID="txtage" runat="server" Height="30px" Width="200px" 
                    AutoPostBack="True"></asp:TextBox>
                <br />
            </td>
            <td>
                Informer Address</td>
            <td>
                <asp:TextBox ID="txtinformeraddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Gender</td>
            <td class="style23">
                <asp:RadioButton ID="rdmale" runat="server" GroupName="a" Height="30px" 
                    Text="Male" />
                <asp:RadioButton ID="rdfemale" runat="server" GroupName="a" Height="30px" 
                    Text="Female" />
                <asp:RadioButton ID="rdother" runat="server" GroupName="a" Height="30px" 
                    Text="Other" />
            </td>
            <td>
                Mother Name</td>
            <td>
                <asp:TextBox ID="txtmothername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtmothername" ErrorMessage="Enter mother name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Place of Death</td>
            <td>
                <asp:DropDownList ID="drpplcofdeath" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Hospital</asp:ListItem>
                    <asp:ListItem>Home</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Religion</td>
            <td class="style23">
                <asp:DropDownList ID="drpreligion" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Muslim</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Jain</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                Father/Husband Name</td>
            <td>
                <asp:TextBox ID="txtfathername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtfathername" ErrorMessage="Enter Father name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Medical Service taken before Death</td>
            <td>
                <asp:DropDownList ID="drpmedicalservice" runat="server" Height="30px" 
                    Width="200px">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Death Person Occupation</td>
            <td class="style23">
                <asp:DropDownList ID="drpoccupation" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>farmer</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Military</asp:ListItem>
                    <asp:ListItem>Government Servent</asp:ListItem>
                    <asp:ListItem>Businessman</asp:ListItem>
                    <asp:ListItem>Police</asp:ListItem>
                    <asp:ListItem>Corporate Work</asp:ListItem>
                    <asp:ListItem>Housewife</asp:ListItem>
                    <asp:ListItem>Other Work</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                Death Reason</td>
            <td>
                <asp:TextBox ID="txtdeathreason" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdeathreason" ErrorMessage="Enter Death reason" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Is the person is Addicted (Tobacco/Cigaret/Alcohol)</td>
            <td>
                <asp:DropDownList ID="drpaddiction" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Tobacco</asp:ListItem>
                    <asp:ListItem>Cigarate</asp:ListItem>
                    <asp:ListItem>Alcohol</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem>No-one</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <strong>Documents</strong></td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                <asp:TextBox ID="txtdocument" runat="server" Height="30px" Width="200px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
            </td>
            <td class="style24">
                </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style18">
                <asp:DropDownList ID="drpaddressproof" runat="server" Height="30px" 
                    Width="200px">
                    <asp:ListItem>Adhaar Card</asp:ListItem>
                    <asp:ListItem>Voter ID</asp:ListItem>
                    <asp:ListItem>Ration Card</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>Electricity Bill</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtaddressproof" runat="server" Height="30px" ReadOnly="True" 
                    Width="200px"></asp:TextBox>
                </td>
            <td class="style18">
                </td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server" style="text-align: left" 
                    Width="198px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="btnuploaddocument" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" 
                    onclick="btnuploaddocument_Click" Text="Upload Death Proof" 
                    Width="186px" BorderStyle="None" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:FileUpload ID="FileUpload2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnaddressproof" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" 
                    onclick="btnaddressproof_Click" Text="Upload Address Proof" 
                    Width="165px" BorderStyle="None" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center" class="style22">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Save &amp; Next" Width="150px" 
                    onclick="btnsubmit_Click" BorderStyle="None" />
            </td>
        </tr>
    </table>
</asp:Content>

