<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="PanCard.aspx.cs" Inherits="Admin_PanCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style23
        {
            width: 100%;
            border: 1px solid #000000;
        }
        .style24
        {
            width: 329px;
        }
        .style26
        {
            width: 145px;
        }
     .style27
     {
         height: 173px;
     }
     .style28
     {
         width: 145px;
         height: 62px;
     }
     .style29
     {
         width: 329px;
         height: 62px;
     }
     .style30
     {
         height: 62px;
     }
     .style31
     {
         height: 40px;
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" cellpadding="3" class="style23">
        <tr>
            <td colspan="4" style="font-weight: 700; text-align: left;" class="style31">
                APPROVE PAN CARD APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style26">
                Applicant Id</td>
            <td>
                <asp:TextBox ID="txtappid" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style26">
                Applicant Name</td>
            <td>
                <asp:TextBox ID="txtappname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Change Status</td>
            <td class="style29">
                <asp:RadioButton ID="rdapprove" runat="server" GroupName="a" Text="Approve" 
                    AutoPostBack="True" oncheckedchanged="rdapprove_CheckedChanged" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rddecline" runat="server" GroupName="a" Text="Decline" 
                    AutoPostBack="True" oncheckedchanged="rddecline_CheckedChanged" />
            </td>
            <td>
                Reason of Decline</td>
            <td class="style30">
                <asp:TextBox ID="txtreasonofdecline" runat="server" Height="30px" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>
                Pan Number</td>
            <td class="style30" colspan="3">
                <asp:TextBox ID="txtpanno" runat="server" Height="30px" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnupdate_Click" Text="Update" 
                    Width="150px" />
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtpanno" ErrorMessage="Invalid" ForeColor="Red" 
                    ValidationExpression="[A-Z]{5}[0-9]{4}[A-Z]{1}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="style27">
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="panregid" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="panregid" HeaderText="panregid" ReadOnly="True" 
                            SortExpression="panregid" />
                        <asp:BoundField DataField="regdate" HeaderText="regdate" 
                            SortExpression="regdate" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                        <asp:BoundField DataField="sign" HeaderText="sign" SortExpression="sign" />
                        <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                        <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" 
                            SortExpression="dateofbirth" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="village" HeaderText="village" 
                            SortExpression="village" />
                        <asp:BoundField DataField="taluka" HeaderText="taluka" 
                            SortExpression="taluka" />
                        <asp:BoundField DataField="district" HeaderText="district" 
                            SortExpression="district" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="pincode" HeaderText="pincode" 
                            SortExpression="pincode" />
                        <asp:BoundField DataField="countryname" HeaderText="countryname" 
                            SortExpression="countryname" />
                        <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                            SortExpression="mobileno" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="idprooflist" HeaderText="idprooflist" 
                            SortExpression="idprooflist" />
                        <asp:BoundField DataField="idproofdoc" HeaderText="idproofdoc" 
                            SortExpression="idproofdoc" />
                        <asp:BoundField DataField="addressprooflist" HeaderText="addressprooflist" 
                            SortExpression="addressprooflist" />
                        <asp:BoundField DataField="addressproofdoc" HeaderText="addressproofdoc" 
                            SortExpression="addressproofdoc" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT * FROM [Pancard]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

