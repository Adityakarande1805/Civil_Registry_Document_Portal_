<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="Pancard.aspx.cs" Inherits="Customer_Pancard" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .style15
    {
            height: 30px;
            text-align: center;
        }
    .style16
    {
            height: 31px;
            text-align: left;
        }
    .style18
    {
        height: 34px;
            width: 11%;
        }
    .style19
    {
        height: 35px;
            width: 20%;
        }
    .style20
    {
        height: 37px;
            width: 15%;
        }
    .style21
    {
        height: 38px;
            width: 20%;
        }
    .style22
    {
        height: 39px;
    }
    .style23
    {
        height: 40px;
        color: #FFFFFF;
        font-size: x-large;
    }
       
        .style25
        {
            height: 38px;
            width: 700px;
        }
        .style30
        {
            height: 31px;
            width: 15%;
        }
        .style34
        {
            width: 15%;
        }
        .style36
        {
            text-align: center;
            width: 15%;
        }
        .style37
        {
            width: 700px;
        }
        .style38
        {
            width: 11%;
            text-align: center;
        }
        .style39
        {
            width: 20%;
        }
        .style40
        {
            height: 32px;
            width: 15%;
        }
        .style41
        {
            height: 31px;
            width: 11%;
        }
        .style42
        {
            width: 15%;
        }
        .style43
        {
            height: 37px;
            width: 11%;
        }
       
        .style44
        {
            width: 11%;
        }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="4" cellspacing="0" class="style1" 
        style="height: 510px; width: 89%">
        <tr>
            <td class="style23" colspan="8" 
                
                
                style="font-weight: 700; background-color: #99CCFF; background-image: url('../Images/indian-flag.jpg');">
                &nbsp;&nbsp;&nbsp;
                Application Form For PanCard</td>
        </tr>
        <tr>
            <td class="style30">
                PanRegid</td>
            <td colspan="2" class="style37">
                <asp:TextBox ID="txtregid" runat="server" Height="30px" Width="200px" 
                    Enabled="False" ReadOnly="True" ></asp:TextBox>
            </td>
            <td class="style44">
                RegDate</td>
            <td class="style39">
                <asp:TextBox ID="txtregdate" runat="server" Height="30px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="style15" rowspan="3" colspan="2">
                <asp:Image ID="Image3" runat="server" BorderWidth="1px" Height="95px" 
                    ImageUrl="~/Images/usericon.png" style="margin-top: 6px" Width="92px" />
            </td>
            <td class="style40">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                Name</td>
            <td colspan="2" class="style37">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style44">
                Mobile Number</td>
            <td class="style39">
                <asp:TextBox ID="txtmobno" runat="server" Height="30px" Width="200px" 
                    MaxLength="10"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmobno" ErrorMessage="Enter valid mobile number" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style40">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="style34">
                Date of Birth</td>
            <td colspan="2" class="style37">
                <asp:TextBox ID="txtdobirth" runat="server" Height="30px" Width="200px" 
                    AutoPostBack="True" ontextchanged="txtdobirth_TextChanged" TextMode="Date"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtdobirth" ErrorMessage="Enter date of birth" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style44" align="left">
                Age</td>
            <td class="style39">
                <asp:TextBox ID="txtage" runat="server" Height="30px" Width="200px" 
                    AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="style40">
                <asp:Button ID="btnuploadimg" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" onclick="btnuploadimg_Click" 
                    Text="Upload Image" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="style38">
                Gender</td>
            <td colspan="2" class="style37">
                <asp:RadioButton ID="rdmale" runat="server" Font-Bold="False" GroupName="a" 
                    Height="30px" Text="Male" Width="87px" />
                <asp:RadioButton ID="rdfemale" runat="server" Font-Bold="False" GroupName="a" 
                    Height="30px" Text="Female" Width="87px" />
                <asp:RadioButton ID="rdother" runat="server" GroupName="a" Height="30px" 
                    Text="other" />
            </td>
            <td class="style44">
                Email Id</td>
            <td class="style39">
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter a valid email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style15" colspan="2">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                Place</td>
            <td colspan="2" class="style37">
                <asp:TextBox ID="txtplace" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtplace" ErrorMessage="Enter place" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style44">
                Father Name</td>
            <td class="style39">
                <asp:TextBox ID="txtfathername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtfathername" ErrorMessage="Enter father name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style15" colspan="2">
                <asp:Image ID="Image4" runat="server" BorderWidth="1px" Height="64px" 
                    Width="148px" />
            </td>
            <td class="style40">
                <asp:FileUpload ID="FileUpload3" runat="server" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="style34">
                Village</td>
            <td colspan="2" class="style37">
                <asp:TextBox ID="txtvillage" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtvillage" ErrorMessage="Enter village" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style41">
                Taluka</td>
            <td class="style39">
                <asp:TextBox ID="txttaluka" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txttaluka" ErrorMessage="Enter taluka" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style16" colspan="2">
                &nbsp;</td>
            <td class="style42">
                <asp:Button ID="btnuploadsign" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" onclick="btnuploadsign_Click" 
                    Text="Upload Sign" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="style36" style="text-align: left">
                District</td>
            <td colspan="2" class="style37">
                <asp:DropDownList ID="drpdistrict" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Amravati</asp:ListItem>
                    <asp:ListItem>Akola</asp:ListItem>
                    <asp:ListItem>Beed</asp:ListItem>
                    <asp:ListItem>Buldhana</asp:ListItem>
                    <asp:ListItem>Chnadrapur</asp:ListItem>
                    <asp:ListItem>Dhule</asp:ListItem>
                    <asp:ListItem>Gadchiroli</asp:ListItem>
                    <asp:ListItem>Hingoli</asp:ListItem>
                    <asp:ListItem>Jalna</asp:ListItem>
                    <asp:ListItem>latur</asp:ListItem>
                    <asp:ListItem>Mumbai city</asp:ListItem>
                    <asp:ListItem>Nagpur</asp:ListItem>
                    <asp:ListItem>Nanded</asp:ListItem>
                    <asp:ListItem>Nashik</asp:ListItem>
                    <asp:ListItem>Palghar</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Raigad</asp:ListItem>
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Satara</asp:ListItem>
                    <asp:ListItem>Solapur</asp:ListItem>
                    <asp:ListItem>Thane</asp:ListItem>
                    <asp:ListItem>Washim</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="style18">
                State</td>
            <td class="style19">
                <asp:DropDownList ID="drpstate" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Maharashtra</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="style16" colspan="2">
                &nbsp;</td>
            <td class="style42">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                Pincode</td>
            <td class="style25" colspan="2">
                <asp:TextBox ID="txtpincode" runat="server" Height="30px" Width="200px" 
                    MaxLength="6"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtpincode" ErrorMessage="Enter a valid pincode" 
                    ForeColor="Red" ValidationExpression="[0-6]{6}"></asp:RegularExpressionValidator>
            </td>
            <td class="style43">
                Country Name</td>
            <td class="style21">
                <asp:TextBox ID="txtcountryname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtcountryname" ErrorMessage="Enter country name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style15" colspan="2">
                <br />
            </td>
            <td class="style40">
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DropDownList ID="drpidproof" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Voter Id</asp:ListItem>
                    <asp:ListItem>Adhaar card</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>Drivind License</asp:ListItem>
                    <asp:ListItem>Domacile</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtidentyproof" runat="server" Height="30px" Width="200px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:FileUpload ID="FileUpload4" runat="server" Width="200px" />
            </td>
            <td colspan="2">
                <asp:Button ID="btnidentyproof" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" onclick="btnidentyproof_Click" 
                    Text="Upload Identy Proof" Width="150px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style22">
                <asp:DropDownList ID="drpaddressproof" runat="server" Height="30px" 
                    Width="200px">
                    <asp:ListItem>Electricity Bill</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>Statement of Bank Account</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td colspan="2" style="text-align: left">
                <asp:TextBox ID="txtaddressproof" runat="server" Height="30px" Width="200px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td colspan="2" class="style22">
                <asp:FileUpload ID="FileUpload5" runat="server" Width="200px" />
            </td>
            <td colspan="2" class="style22">
                <asp:Button ID="btnaddressproof" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" 
                    onclick="btnaddressproof_Click" Text="Upload Address Proof" Width="150px" />
            </td>
        </tr>
        <tr>
            <td colspan="8" style="text-align: center">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnsubmit_Click" Text="Save &amp; Next" 
                    Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>

