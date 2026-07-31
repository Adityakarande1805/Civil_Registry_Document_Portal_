<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="AdhaarCard.aspx.cs" Inherits="Customer_AdhaarCard" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 37px;
            color: #000000;
        }
        .style7
        {
            height: 51px;
        }
        .style8
        {
            height: 46px;
        }
    .style15
    {
        color: #FFFFFF;
        height: 39px;
    }
        .style19
        {
            height: 51px;
            width: 215px;
        }
        .style20
        {
            height: 46px;
            color: #800000;
            width: 215px;
        }
        .style24
        {
            width: 215px;
        }
        .style25
        {
            height: 23px;
            color: #000000;
            text-align: left;
            width: 215px;
        }
        .style26
        {
            height: 73px;
            width: 215px;
        }
        .style28
        {
            height: 23px;
            color: #000000;
            text-align: left;
            width: 290px;
        }
        .style29
        {
            height: 51px;
            width: 290px;
        }
        .style30
        {
            height: 46px;
            color: #800000;
            width: 290px;
        }
        .style31
        {
            height: 73px;
            width: 290px;
        }
        .style32
        {
            height: 73px;
        }
        .style33
        {
            height: 57px;
            text-align: left;
        }
        .style35
        {
            height: 23px;
            color: #000000;
            text-align: right;
        }
        .style36
        {
            width: 113px;
        }
        .style37
        {
            height: 23px;
            color: #000000;
            text-align: left;
            width: 113px;
        }
        .style38
        {
            height: 51px;
            width: 113px;
        }
        .style39
        {
            height: 46px;
            color: #800000;
            width: 113px;
        }
        .style40
        {
            height: 73px;
            width: 113px;
        }
        .style48
        {
            height: 23px;
            color: #000000;
            text-align: left;
            width: 216px;
        }
        .style49
        {
            height: 51px;
            width: 216px;
        }
        .style50
        {
            height: 46px;
            color: #800000;
            width: 216px;
        }
        .style51
        {
            height: 73px;
            width: 216px;
        }
        .style55
        {
            width: 290px;
        }
        .style62
        {
            width: 229px;
        }
        .style63
        {
            width: 216px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <asp:Panel ID="Panel1" runat="server">
                    <table align="center" cellpadding="4" cellspacing="0" class="style1" style="height: 510px; width: 89%">
                        <tr>
                            <td colspan="5" 
                                
                                
                                
                                style="font-weight: 700; background-color: #99CCFF; font-size: large; background-image: url('../Images/indian-flag.jpg');" 
                                class="style15">
                                Application Form For Aadhaar Card</td>
                        </tr>
                        <tr>
                            <td class="style63">
                                AdhaarRegId</td>
                            <td class="style55">
                                <asp:TextBox ID="txtadhaarregid" runat="server" Height="30px" Width="200px" 
                                    Enabled="False" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style24">
                                &nbsp;</td>
                            <td rowspan="3" style="text-align: center">
                                <asp:Image ID="Image3" runat="server" BorderWidth="1px" Height="105px" 
                                    Width="98px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style63">
                                Name</td>
                            <td class="style55">
                                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="style36">
                                Date of Birth</td>
                            <td class="style24">
                                <asp:TextBox ID="txtdateofbirth" runat="server" Height="30px" Width="200px" 
                                    TextMode="Date" AutoPostBack="True" 
                                    ontextchanged="txtdateofbirth_TextChanged"></asp:TextBox>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <ajaxToolkit:CalendarExtender ID="txtdateofbirth_CalendarExtender" 
                                    runat="server" BehaviorID="txtdateofbirth_CalendarExtender" 
                                    TargetControlID="txtdateofbirth" />
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtdateofbirth" ErrorMessage="Enter Date of birth" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style63">
                                Age
                            </td>
                            <td class="style55">
                                <asp:TextBox ID="txtage" runat="server" Height="30px" Width="200px" 
                                   AutoPostBack="True"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtage" ErrorMessage="Enter Age" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="style36">
                                Mobile Number</td>
                            <td class="style24">
                                <asp:TextBox ID="txtmobilenumber" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtmobilenumber" ErrorMessage="Enter valid mobile number" 
                                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style48">
                                Gender</td>
                            <td class="style28">
                                <asp:RadioButton ID="rdmale" runat="server" GroupName="a" Height="30px" 
                                    Text="Male" Width="62px" />
                                &nbsp;<asp:RadioButton ID="rdfemale" runat="server" GroupName="a" 
                                    Height="30px" Text="Female" Width="82px" />
                                <asp:RadioButton ID="rdother" runat="server" Height="30px" Text="Other" 
                                    Width="74px" GroupName="a" />
                            </td>
                            <td class="style37">
                                Email Id</td>
                            <td class="style25">
                                <asp:TextBox ID="txtemailid" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtemailid" ErrorMessage="Enter a valid email" 
                                    ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                            <td style="text-align: center" class="style35">
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="164px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style49">
                                House No. /Building</td>
                            <td class="style29">
                                <asp:TextBox ID="txthousebuilding" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style38">
                                Street/Lane</td>
                            <td class="style19">
                                <asp:TextBox ID="txtstreetlane" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                            <td style="text-align: center" class="style7">
                                <asp:Button ID="btnuploadimage" runat="server" BackColor="#336699" 
                                    Font-Bold="True" ForeColor="White" Height="30px" Text="Upload Image" 
                                    Width="150px" onclick="btnuploadimage_Click" BorderStyle="None" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style50">
                                Landmark</td>
                            <td class="style30">
                                <asp:TextBox ID="txtlandmark" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style39">
                                Area/Locality</td>
                            <td class="style20">
                                <asp:TextBox ID="txtarealocality" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                            <td style="text-align: center" class="style8">
                                </td>
                        </tr>
                        <tr>
                            <td class="style63">
                                Village/City</td>
                            <td class="style55">
                                <asp:TextBox ID="txtvillagecity" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtvillagecity" ErrorMessage="Enter village/city" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="style36">
                                Post Office</td>
                            <td class="style24">
                                <asp:TextBox ID="txtpostoffice" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="txtpostoffice" ErrorMessage="Enter a valid pincode" 
                                    ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                            </td>
                            <td style="text-align: center">
                                <asp:Image ID="Image5" runat="server" BorderWidth="1px" Height="60px" 
                                    Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style63">
                                District</td>
                            <td class="style55">
                                <asp:DropDownList ID="drpdistrict" runat="server" Height="30px" Width="200px">
                                    <asp:ListItem>Amaravati</asp:ListItem>
                                    <asp:ListItem>Aurangbad</asp:ListItem>
                                    <asp:ListItem>Beed</asp:ListItem>
                                    <asp:ListItem>Buldhana</asp:ListItem>
                                    <asp:ListItem>Chandrapur</asp:ListItem>
                                    <asp:ListItem>Gadchiroli</asp:ListItem>
                                    <asp:ListItem>Hingoli</asp:ListItem>
                                    <asp:ListItem>Jalna</asp:ListItem>
                                    <asp:ListItem>Latur</asp:ListItem>
                                    <asp:ListItem>Kolhapur</asp:ListItem>
                                    <asp:ListItem>Mumbai City</asp:ListItem>
                                    <asp:ListItem>Nagpur</asp:ListItem>
                                    <asp:ListItem>Nashik</asp:ListItem>
                                    <asp:ListItem>Pune</asp:ListItem>
                                    <asp:ListItem>Raigad</asp:ListItem>
                                    <asp:ListItem>Sangli</asp:ListItem>
                                    <asp:ListItem>Satara</asp:ListItem>
                                    <asp:ListItem>Solapur</asp:ListItem>
                                    <asp:ListItem>Thanae</asp:ListItem>
                                    <asp:ListItem>Washim</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </td>
                            <td class="style36">
                                State</td>
                            <td class="style24">
                                <asp:DropDownList ID="drpstate" runat="server" Height="30px" Width="200px">
                                    <asp:ListItem>Maharashtra</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </td>
                            <td style="text-align: center">
                                <asp:FileUpload ID="FileUpload3" runat="server" Width="164px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style51">
                                Gardian Name</td>
                            <td class="style31">
                                <asp:TextBox ID="txtgname" runat="server" Height="30px" Width="200px" 
                                    Enabled="False"></asp:TextBox>
                            </td>
                            <td class="style40">
                                Gardian Aadhaar No.</td>
                            <td class="style26">
                                <asp:TextBox ID="txtgaadhaarno" runat="server" Height="30px" Width="200px" 
                                    Enabled="False"></asp:TextBox>
                            </td>
                            <td style="text-align: center" class="style32">
                                <asp:Button ID="btnuploadsign0" runat="server" BackColor="#336699" 
                                    Font-Bold="True" ForeColor="White" Height="30px" onclick="btnuploadsign_Click" 
                                    Text="Upload Sign" Width="150px" BorderStyle="None" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" class="style33">
                                <asp:DropDownList ID="drpdoclist" runat="server" Height="30px" Width="150px">
                                    <asp:ListItem>Ration card</asp:ListItem>
                                    <asp:ListItem>Leaving certificate</asp:ListItem>
                                    <asp:ListItem>Resident proof</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtdoc" runat="server" Height="30px" ReadOnly="True" 
                                    Width="200px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:FileUpload ID="FileUpload4" runat="server" />
                                <asp:Button ID="btnuploaddoc" runat="server" BackColor="#336699" 
                                    Font-Bold="True" ForeColor="White" Height="30px" onclick="btnuploaddoc_Click" 
                                    Text="Upload Document" Width="150px" BorderStyle="None" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" style="text-align: center">
                                <asp:Button ID="btnsubmit" runat="server" BackColor="#336699" Font-Bold="True" 
                                    ForeColor="White" Height="30px" onclick="btnsubmit_Click" 
                                    Text="Save &amp; next" Width="150px" BorderStyle="None" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
</asp:Content>

