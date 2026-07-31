<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="BirthCertificate.aspx.cs" Inherits="Customer_BirthCertificate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 132px;
        }
        .style4
        {
            text-align: left;
        }
        .style6
        {
            text-align: left;
     
        }
        .style7
        {
        
        }
        .style8
        {
       
        }
        .style9
        {
    
        }
        .style10
        {
            text-align: left;
        width: 132px;
    }
        .style11
        {
      
        }
    .style15
    {
        height: 44px;
        color: #FFFFFF;
        font-size: xx-large;
    }
    .style16
    {
            width: 740px;
        }
    .style17
    {
        height: 82px;
    }
    .style18
    {
        width: 740px;
        height: 82px;
    }
    .style19
    {
        width: 132px;
        height: 82px;
    }
    .style20
    {
        color: #800000;
        width: 170px;
    }
    .style21
    {
        width: 170px;
    }
    .style22
    {
        width: 170px;
        height: 82px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="5" cellspacing="0" class="style1" 
        style="height: 556px; width: 1190px">
        <tr>
            <td colspan="6" 
                
                
                style="font-weight: 700; background-color: #99CCFF; background-image: url('../Images/indian-flag.jpg');" 
                class="style15">
                Application Form For Birth Certificate</td>
        </tr>
        <tr>
            <td class="style20">
                BirthRegid</td>
            <td class="style16">
                <asp:TextBox ID="txtregid" runat="server" Height="30px" Width="200px" 
                    Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style10">
                Date of Registration:</td>
            <td class="style8">
                <asp:TextBox ID="txtdateofreg" runat="server" Height="30px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <ajaxToolkit:CalendarExtender ID="txtdateofreg_CalendarExtender" runat="server" 
                    BehaviorID="txtdateofreg_CalendarExtender" TargetControlID="txtdateofreg">
                </ajaxToolkit:CalendarExtender>
            </td>
            <td class="style11">
                Informer Name </td>
            <td class="style8">
                <asp:TextBox ID="txtinformername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;Name</td>
            <td class="style16">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                Place of birth </td>
            <td>
                <asp:TextBox ID="txtplcofbirth" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtplcofbirth" ErrorMessage="Enter Place of Birth" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Informer Address </td>
            <td>
                <asp:TextBox ID="txtinformeraddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;Birth Date</td>
            <td class="style16">
                <asp:TextBox ID="txtbdate" runat="server" Height="30px" Width="200px" 
                    TextMode="Date"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtbdate_CalendarExtender" runat="server" 
                    BehaviorID="txtbdate_CalendarExtender" TargetControlID="txtbdate">
                </ajaxToolkit:CalendarExtender>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                    ControlToValidate="txtbdate" ErrorMessage="Enter birth date" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                Father Name </td>
            <td>
                <asp:TextBox ID="txtfathername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtfathername" ErrorMessage="Enter Father name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Age of Mother at Wedding</td>
            <td>
                <asp:TextBox ID="txtageofmotheratwedding" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtageofmotheratwedding" 
                    ErrorMessage="Enter age of mother at wedding" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
                Gender </td>
            <td class="style16">
                <asp:RadioButton ID="rdmale" runat="server" Text="Male" GroupName="a" 
                    Width="60px" />
                <asp:RadioButton ID="rdfemale" runat="server" Text="Female" GroupName="a" 
                    Width="80px" />
            &nbsp;<asp:RadioButton ID="rdother" runat="server" GroupName="a" Text="Other" Width="70px" 
                     />
            </td>
            <td class="style3">
                Father Qualification</td>
            <td>
                <asp:TextBox ID="txtfatherqualification" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                Delivery Type</td>
            <td>
                <asp:DropDownList ID="drpdivilarytype" runat="server" Height="30px" 
                    Width="200px">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>cesarean</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style22">
                Parmanent Address</td>
            <td class="style18">
                <asp:TextBox ID="txtpermanentaddress" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpermanentaddress" ErrorMessage="EnterAddress" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                Father Occupation</td>
            <td class="style17">
                <asp:TextBox ID="txtfatheroccupation" runat="server" Height="30px" 
                    Width="200px" ></asp:TextBox>
            </td>
            <td class="style17">
                Age of mother When baby born</td>
            <td class="style17">
                <asp:TextBox ID="txtmotheragewhenbabyborn" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtmotheragewhenbabyborn" 
                    ErrorMessage="Enter age of mother when baby born" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
                Village 
            </td>
            <td class="style16">
                <asp:TextBox ID="txtvillage" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtvillage" ErrorMessage="Enter Village" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                Mother Name </td>
            <td>
                <asp:TextBox ID="txtmothername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtmothername" ErrorMessage="Enter Mother Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Pregnancy period in weeks:</td>
            <td>
                <asp:TextBox ID="txtpregnancyperiod" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="txtpregnancyperiod" 
                    ErrorMessage="Enter Pregnancy Period in weeks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
                Taluka</td>
            <td class="style16">
                <asp:TextBox ID="txttaluka" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txttaluka" ErrorMessage="Enter Taluka" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                Mother Qualification</td>
            <td>
                <asp:TextBox ID="txtmotherqualification" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                No. of Children Born in the Mother&#39;s Womb</td>
            <td>
                <asp:TextBox ID="txtnoofchildren" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="txtnoofchildren" 
                    ErrorMessage="Enter No. of childrens in the Mother's Womb" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
                District</td>
            <td class="style16">
                <asp:DropDownList ID="drpdistrict" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Akola</asp:ListItem>
                    <asp:ListItem>Amravati</asp:ListItem>
                    <asp:ListItem>Beed</asp:ListItem>
                    <asp:ListItem>Buldhana</asp:ListItem>
                    <asp:ListItem>Chnadrapur</asp:ListItem>
                    <asp:ListItem>Dhule</asp:ListItem>
                    <asp:ListItem>Gadchiroli</asp:ListItem>
                    <asp:ListItem>Hingoli</asp:ListItem>
                    <asp:ListItem>Jalna</asp:ListItem>
                    <asp:ListItem>Latur</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Mumbai city</asp:ListItem>
                    <asp:ListItem>Nagpur</asp:ListItem>
                    <asp:ListItem>Namded</asp:ListItem>
                    <asp:ListItem>Nashik</asp:ListItem>
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
            <td class="style3">
                Religion</td>
            <td>
                <asp:DropDownList ID="drpreligion" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Muslim</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Jain</asp:ListItem>
                    <asp:ListItem>Buddha</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                Baby Weight at Birth</td>
            <td>
                <asp:TextBox ID="txtbabyweight" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="txtbabyweight" ErrorMessage="Enter Baby Weight at Birth" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
                State</td>
            <td class="style16">
                <asp:DropDownList ID="drpstate" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>Maharashtra</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="style3">
                <strong>
                Documents:<br />
                </strong>
                <br />
                <asp:TextBox ID="txtuploadbirthcard" runat="server" Height="30px" Width="200px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td class="style7">
                <br />
                <strong>
                <br />
                <asp:TextBox ID="txtdocument" runat="server" Height="30px" Width="200px" 
                    ReadOnly="True"></asp:TextBox>
                </strong>
            </td>
            <td>
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td style="text-align: center" class="style3">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="btnuploadbirthcard" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px"
                    Text="Upload Birth Card" Width="150px" 
                    onclick="btnuploadbirthcard_Click" BorderStyle="None" />
            </td>
            <td style="text-align: left" class="style7">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="btnuploaddocument" runat="server" BackColor="#336699" 
                    Font-Bold="True" ForeColor="White" Height="30px" 
                    onclick="btnuploaddocument_Click" Text="Upload Adhaar Card" 
                    Width="150px" BorderStyle="None" />
            </td>
        </tr>
        <tr>
            <td colspan="6" class="style14">
                &nbsp;<asp:Button ID="btnsubmit" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Save &amp; Next" Width="150px" 
                    onclick="btnsubmit_Click" BorderStyle="None" />
            </td>
        </tr>
    </table>
</asp:Content>

