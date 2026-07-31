<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="MarriageCertificate.aspx.cs" Inherits="Customer_MarriageCertificate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
        
        }
        .style4
        {
     
        }
        .style5
        {
       
        }
        .style7
        {
        
        }
        .style9
        {
        
        }
        .style10
        {
            width: 104%;
        }
        .style11
        {
        
        }
        .style12
        {
         
        }
        .style13
        {
   
            text-align: justify;
        }
        .style14
        {
            text-align: justify;
        }
        .style15
        {
  
            }
        .style17
        {
       
        }
        .style18
        {
      
        }
        .style19
        {
            width: 166px;
        }
        .style21
        {
            color: #FFFFFF;
            font-size: x-large;
            height: 47px;
        }
        .style22
        {
            height: 33px;
            text-align: left;
        }
        .style23
        {
            text-align: left;
        }
        .style24
        {
            text-align: left;
            height: 49px;
        }
        .style25
        {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="5" cellspacing="0" class="style1" 
        style="width: 92%">
        <tr>
            <td colspan="4" 
                
                style="font-weight: 700; background-color: #99CCFF; background-image: url('../Images/indian-flag.jpg');" 
                class="style21">
                &nbsp;&nbsp;&nbsp;&nbsp;
                Application For Marriage Certificate</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                MarriegeRegid</td>
            <td>
                <asp:TextBox ID="txtmrgregid" runat="server" Height="30px" 
                    style="margin-left: 0px" Width="200px" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                RegDate</td>
            <td>
                <asp:TextBox ID="txtregdate" runat="server" Height="30px" 
                    style="margin-left: 0px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Place of Marriage:</td>
            <td>
                <asp:TextBox ID="txtplcofmrg" runat="server" Height="30px" 
                    style="margin-left: 0px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtplcofmrg" ErrorMessage="Enter place of marriage" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Marriage Date:</td>
            <td>
                <asp:TextBox ID="txtmrgdate" runat="server" Height="30px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtmrgdate" ErrorMessage="Enter marriage date" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table align="center" cellpadding="4" cellspacing="0" class="style1" 
                    style="height: 264px; width: 87%">
                    <tr>
                        <td style="font-size: large; font-weight: 700; color: #FF0000" colspan="3">
                            Husband Details</td>
                    </tr>
                    <tr>
                        <td class="style23">
                            Huband&#39;s Name:</td>
                        <td>
                <asp:TextBox ID="txthubname" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txthubname" ErrorMessage="Enter husband name" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td rowspan="4" style="text-align: center">
                            <asp:Image ID="Image3" runat="server" BorderWidth="1px" Height="84px" 
                                ImageUrl="~/Images/usericon.png" style="margin-left: 0px" Width="94px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            Husband&#39;s Address:</td>
                        <td>
                <asp:TextBox ID="txthubaddress" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txthubaddress" ErrorMessage="Enter husband's address" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            Huband&#39;s Religion:</td>
                        <td>
                <asp:TextBox ID="txthubreligion" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txthubreligion" ErrorMessage="Enter husband's religion" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style24">
                            Father Name:</td>
                        <td class="style25">
                <asp:TextBox ID="txthubfathername" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txthubfathername" ErrorMessage="Enter husband's father name" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Husband&#39;s Age at Marriage:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                <asp:TextBox ID="txthubageatmrg" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txthubageatmrg" 
                                ErrorMessage="Enter husband's age at marriage" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td style="text-align: center">
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:TextBox ID="txthubadhar" runat="server" Height="30px" Width="200px" 
                                ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td style="text-align: center">
                            <asp:Button ID="btnuploadhubimg" runat="server" BackColor="#336699" Font-Bold="True" 
                                ForeColor="White" Height="30px" Text="Upload" Width="150px" 
                                onclick="btnuploadhubimg_Click" BorderStyle="None" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:FileUpload ID="FileUpload5" runat="server" Width="192px" />
                        </td>
                        <td>
                            <asp:Button ID="btnuploadhubadhar" runat="server" BackColor="#336699" 
                                Font-Bold="True" ForeColor="White" Height="30px" 
                                onclick="btnuploadhubadhar_Click" Text="Upload AadharCard" Width="150px" 
                                BorderStyle="None" />
                        </td>
                        <td style="text-align: center">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td colspan="2">
                <table align="center" cellpadding="4" cellspacing="0" class="style1" 
                    style="width: 87%">
                    <tr>
                        <td colspan="3" style="font-weight: 700; font-size: large; color: #0099FF" 
                            class="style14">
                            Wife Deatails</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            Wife&#39;s Name:</td>
                        <td class="style14">
                <asp:TextBox ID="txtwifename" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtwifename" ErrorMessage="Enter wife name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td rowspan="4" class="style15">
                            <asp:Image ID="Image4" runat="server" BorderWidth="1px" Height="84px" 
                                ImageUrl="~/Images/usericon.png" style="margin-left: 0px" Width="94px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Wifes&#39;s Address:</td>
                        <td class="style14">
                <asp:TextBox ID="txtwifeaddress" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtwifeaddress" ErrorMessage="Enter wife's address" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Wife&#39;s Religion</td>
                        <td class="style14">
                <asp:TextBox ID="txtwifereligion" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtwifereligion" ErrorMessage="Enter wife's religion" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Father Name:</td>
                        <td class="style14">
                <asp:TextBox ID="txtwifefathername" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtwifefathername" ErrorMessage="Enter wife's father name" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Wife&#39;s Age at Marriage:</td>
                        <td class="style14">
                <asp:TextBox ID="txtwifeageatmrg" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="txtwifeageatmrg" ErrorMessage="Enter wife's age at marriage" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style15">
                            <asp:FileUpload ID="FileUpload2" runat="server" Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtwifeadhar" runat="server" Height="30px" Width="200px" 
                                ReadOnly="True"></asp:TextBox>
                            </td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style15">
                            <asp:Button ID="btnuploadwifeimg" runat="server" BackColor="#336699" Font-Bold="True" 
                                ForeColor="White" Height="30px" Text="Upload" Width="150px" 
                                onclick="btnuploadwifeimg_Click" BorderStyle="None" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:FileUpload ID="FileUpload6" runat="server" />
                            </td>
                        <td class="style13">
                            <asp:Button ID="btnuploadwifeadhar" runat="server" BackColor="#336699" 
                                Font-Bold="True" ForeColor="White" Height="30px" 
                                onclick="btnuploadwifeadhar_Click" Text="Upload AadharCard" Width="150px" 
                                BorderStyle="None" />
                        </td>
                        <td style="text-align: center">
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="font-weight: 700; color: #CC3399; font-size: large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Witness Details</td>
        </tr>
        <tr>
            <td colspan="2">
                <table align="center" cellpadding="2" cellspacing="0" class="style1" 
                    style="height: 222px; width: 88%">
                    <tr>
                        <td rowspan="3" style="text-align: center" class="style10">
                            <br />
                            <asp:Image ID="Image5" runat="server" BorderWidth="1px" Height="77px" 
                                ImageUrl="~/Images/usericon.png" Width="90px" />
                            <br />
                        </td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Name:</td>
                        <td class="style18">
                <asp:TextBox ID="txtwitness1name" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="txtwitness1name" ErrorMessage="Enter witness1 name" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center" class="style10">
                            &nbsp;</td>
                        <td class="style19">
                            Address:</td>
                        <td class="style18">
                <asp:TextBox ID="txtwitness1address" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ControlToValidate="txtwitness1address" ErrorMessage="Enter witness1's address" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" style="text-align: center">
                            <asp:FileUpload ID="FileUpload3" runat="server" Width="150px" />
                        </td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Button ID="btnuploadwitness1" runat="server" BackColor="#336699" Font-Bold="True" 
                                ForeColor="White" Height="30px" Text="Upload" Width="150px" 
                                onclick="btnuploadwitness1_Click" BorderStyle="None" />
                        </td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style17">
                            </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:TextBox ID="txtwitness1adhar" runat="server" Height="30px" Width="200px" 
                                ReadOnly="True"></asp:TextBox>
                        </td>
                        <td style="text-align: left" class="style19">
                            <asp:FileUpload ID="FileUpload7" runat="server" Width="192px" />
                        </td>
                        <td class="style18">
                            <asp:Button ID="btnuploadwitness1adhar" runat="server" BackColor="#336699" 
                                Font-Bold="True" ForeColor="White" Height="30px" 
                                onclick="btnuploadwitness1adhar_Click" Text="Upload AadharCard" 
                                Width="150px" BorderStyle="None" />
                        </td>
                    </tr>
                </table>
            </td>
            <td colspan="2">
                <table align="center" cellpadding="2" cellspacing="0" class="style1" 
                    style="height: 222px; width: 88%">
                    <tr>
                        <td rowspan="3" style="text-align: center">
                            <br />
                            <asp:Image ID="Image6" runat="server" BorderWidth="1px" Height="77px" 
                                ImageUrl="~/Images/usericon.png" Width="90px" />
                            <br />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Name:</td>
                        <td>
                <asp:TextBox ID="txtwitness2name" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ControlToValidate="txtwitness2name" ErrorMessage="Enter witness2 name" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            &nbsp;</td>
                        <td>
                            Address:</td>
                        <td>
                <asp:TextBox ID="txtwitness2address" runat="server" Height="30px" style="margin-left: 0px" 
                                Width="200px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                ControlToValidate="txtwitness2address" ErrorMessage="Enter witness2's address" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:FileUpload ID="FileUpload4" runat="server" Width="150px" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Button ID="btnuploadwitness2" runat="server" BackColor="#336699" Font-Bold="True" 
                                ForeColor="White" Height="30px" Text="Upload" Width="150px" 
                                onclick="btnuploadwitness2_Click" BorderStyle="None" />
                        </td>
                        <td class="style7">
                            </td>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:TextBox ID="txtwitness2adhar" runat="server" Height="30px" Width="200px" 
                                ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload8" runat="server" Width="192px" />
                        </td>
                        <td>
                            <asp:Button ID="btnuploadwitness2adhar" runat="server" BackColor="#336699" 
                                Font-Bold="True" ForeColor="White" Height="30px" 
                                onclick="btnuploadwitness2adhar_Click" Text="Upload AadharCard" 
                                Width="150px" BorderStyle="None" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: left">
                <asp:TextBox ID="txtstamp" runat="server" Height="30px" ReadOnly="True" 
                    Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload9" runat="server" Width="200px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnstamp" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" onclick="btnstamp_Click" Text="Upload  Affidavit" 
                    Width="150px" BorderStyle="None" Height="30px" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Save &amp; Next" Width="150px" 
                    onclick="btnsubmit_Click" BorderStyle="None" />
            </td>
        </tr>
    </table>
</asp:Content>

