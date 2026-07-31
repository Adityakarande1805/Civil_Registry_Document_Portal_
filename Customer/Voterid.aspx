<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="Voterid.aspx.cs" Inherits="Customer_Voterid" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 55px;
        }
        .style4
        {
            height: 55px;
            color: #000000;
        }
        .style5
        {
            width: 268435488px;
        }
        .style15
        {
            font-size: x-large;
            color: #FFFFFF;
            height: 42px;
        }
        .style16
        {
            height: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" cellspacing="0" class="style1" style="height: 510px; width: 89%">
        <tr>
            <td colspan="8" 
                
                
                
                style="font-weight: 700; background-color: #99CCFF; background-image: url('../Images/indian-flag.jpg');" 
                class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;
                Application Form For VoterId</td>
        </tr>
        <tr>
            <td>
                VoterRegId</td>
            <td colspan="2">
                <asp:TextBox ID="txtvoterregid" runat="server" Height="30px" Width="200px" 
                    Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td colspan="2">
                RegDate</td>
            <td colspan="2">
                <asp:TextBox ID="txtregdate" runat="server" Height="30px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td rowspan="3" style="text-align: center">
                <asp:Image ID="Image3" runat="server" BorderWidth="1px" Height="109px" 
                    Width="106px" />
            </td>
        </tr>
        <tr>
            <td>
                Name of Parliment</td>
            <td colspan="2">
                <asp:TextBox ID="txtnameofparliment" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td colspan="2">
                Number of Parliment</td>
            <td colspan="2">
                <asp:TextBox ID="txtnoofparliment" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td colspan="2">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
                Father Name</td>
            <td colspan="2">
                <asp:TextBox ID="txtfathername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtfathername" ErrorMessage="Enter father name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Mobile Number</td>
            <td colspan="2">
                <asp:TextBox ID="txtmobilenumber" runat="server" Height="30px" Width="200px" 
                    MaxLength="10"></asp:TextBox>
                <br />
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmobilenumber" ErrorMessage="Enter valid mobile number" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td colspan="2">
                Email Id</td>
            <td colspan="2">
                <asp:TextBox ID="txtemailid" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Enter a valid email" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="text-align: center">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Gender</td>
            <td class="style3" colspan="2">
                <asp:RadioButton ID="rdmale" runat="server" GroupName="a" Text="Male" 
                    ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdfemale" runat="server" GroupName="a" Text="Female" 
                    ForeColor="Black" />
            &nbsp;<asp:RadioButton ID="rdother" runat="server" GroupName="a" Height="30px" 
                    Text="other" />
            </td>
            <td colspan="2">
                Adhaar Number</td>
            <td colspan="2">
                <asp:TextBox ID="txtadharno" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtadharno" ErrorMessage="Enter adhaar number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: center">
                <asp:Button ID="btnuploadimage" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" Text="Upload Image" 
                    Width="150px" onclick="btnuploadimage_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Date of Birth</td>
            <td class="style3" colspan="2">
                <asp:TextBox ID="txtdateofbirth" runat="server" Height="30px" Width="200px" 
                    AutoPostBack="True" ontextchanged="txtdateofbirth_TextChanged" 
                    TextMode="Date"></asp:TextBox>
                <br />
            </td>
            <td class="style4" colspan="2">
                Age</td>
            <td class="style3" colspan="2">
                <asp:TextBox ID="txtage" runat="server" AutoPostBack="True" Height="30px" 
                    Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td>
                Disability</td>
            <td colspan="2">
                <asp:DropDownList ID="drpdisability" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td colspan="2">
                Disability Typer</td>
            <td colspan="2">
                <asp:TextBox ID="txtdisabilitytyper" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Religion</td>
            <td colspan="2">
                <asp:DropDownList ID="drpreligion" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Muslim</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Jain</asp:ListItem>
                    <asp:ListItem>Buddha</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td colspan="2">
                State</td>
            <td colspan="2">
                <asp:DropDownList ID="drpstate" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Maharashtra</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                District</td>
            <td colspan="2" class="style16">
                <asp:DropDownList ID="drpdistrict" runat="server" Height="30px" Width="200px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Aurangabad</asp:ListItem>
                    <asp:ListItem>Beed</asp:ListItem>
                    <asp:ListItem>Buldhana</asp:ListItem>
                    <asp:ListItem>Chandrapur</asp:ListItem>
                    <asp:ListItem>Dhule</asp:ListItem>
                    <asp:ListItem>Gadchiroli</asp:ListItem>
                    <asp:ListItem>Gondia</asp:ListItem>
                    <asp:ListItem>Hingoli</asp:ListItem>
                    <asp:ListItem>Jalna</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Latur</asp:ListItem>
                    <asp:ListItem>Mumbai city</asp:ListItem>
                    <asp:ListItem>Nagpur</asp:ListItem>
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
            <td colspan="2" class="style16">
                Taluka</td>
            <td colspan="2" class="style16">
                <asp:TextBox ID="txttaluka" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txttaluka" ErrorMessage="Enter taluka" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: center" class="style16">
                </td>
        </tr>
        <tr>
            <td>
                Village</td>
            <td colspan="2">
                <asp:TextBox ID="txtvillage" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtvillage" ErrorMessage="Enter village" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
                Pincode</td>
            <td colspan="2">
                <asp:TextBox ID="txtpincode" runat="server" Height="30px" Width="200px" 
                    MaxLength="6"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtpincode" ErrorMessage="Enter a valid pincode" 
                    ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:DropDownList ID="drpidproof" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Adhaar Card</asp:ListItem>
                    <asp:ListItem>Pan Card</asp:ListItem>
                    <asp:ListItem>Driving License</asp:ListItem>
                    <asp:ListItem>Ration Card</asp:ListItem>
                    <asp:ListItem>Passport Copy</asp:ListItem>
                    <asp:ListItem>Student Id Card</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td colspan="2" style="text-align: center">
                <asp:TextBox ID="txtidproof" runat="server" Height="30px" Width="200px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td colspan="2" style="text-align: center" class="style3">
                <asp:FileUpload ID="FileUpload3" runat="server" Width="222px" />
            </td>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnidproof" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnidproof_Click" 
                    Text="Upload Id Proof" Width="150px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:DropDownList ID="drpaddresspoof" runat="server" Height="30px" 
                    Width="200px">
                    <asp:ListItem>Ration Card</asp:ListItem>
                    <asp:ListItem>Driving License</asp:ListItem>
                    <asp:ListItem>Indian Passport</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td colspan="2" style="text-align: center">
                <asp:TextBox ID="txtaddressproof" runat="server" Height="30px" Width="200px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td colspan="2" style="text-align: center" class="style3">
                <asp:FileUpload ID="FileUpload4" runat="server" />
            </td>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnaddressproof" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" 
                    onclick="btnaddressproof_Click" Text="Upload Address Proof" Width="150px" />
            </td>
        </tr>
        <tr>
            <td colspan="8" style="text-align: center">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Save &amp; Next" Width="150px" 
                    onclick="btnsubmit_Click" />
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

