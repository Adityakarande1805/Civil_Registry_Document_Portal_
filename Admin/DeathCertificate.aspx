<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="DeathCertificate.aspx.cs" Inherits="Admin_DeathCertificate" %>

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
<table align="center" cellpadding="3">
        <tr>
            <td colspan="4" style="font-weight: 700; text-align: left;" class="style31">
                APPROVE DEATH APPLICATION<hr />
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
                <asp:Button ID="btnupdate" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnupdate_Click" Text="Update" 
                    Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Visible="False">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="style27">
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="deathregid" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1" PageSize="5" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="deathregid" HeaderText="deathregid" ReadOnly="True" 
                            SortExpression="deathregid" />
                        <asp:BoundField DataField="dateofreg" HeaderText="dateofreg" 
                            SortExpression="dateofreg" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" 
                            SortExpression="dateofbirth" />
                        <asp:BoundField DataField="placeofdeath" HeaderText="placeofdeath" 
                            SortExpression="placeofdeath" />
                        <asp:BoundField DataField="fathername" HeaderText="fathername" 
                            SortExpression="fathername" />
                        <asp:BoundField DataField="mothername" HeaderText="mothername" 
                            SortExpression="mothername" />
                        <asp:BoundField DataField="permanentaddressofdeceased" 
                            HeaderText="permanentaddressofdeceased" 
                            SortExpression="permanentaddressofdeceased" />
                        <asp:BoundField DataField="informername" HeaderText="informername" 
                            SortExpression="informername" />
                        <asp:BoundField DataField="informeraddress" HeaderText="informeraddress" 
                            SortExpression="informeraddress" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="deathdate" HeaderText="deathdate" 
                            SortExpression="deathdate" />
                        <asp:BoundField DataField="medicalservicetakenbefore" 
                            HeaderText="medicalservicetakenbefore" 
                            SortExpression="medicalservicetakenbefore" />
                        <asp:BoundField DataField="Deathpersonoccupation" 
                            HeaderText="Deathpersonoccupation" SortExpression="Deathpersonoccupation" />
                        <asp:BoundField DataField="Deathreason" HeaderText="Deathreason" 
                            SortExpression="Deathreason" />
                        <asp:BoundField DataField="personaddiction" HeaderText="personaddiction" 
                            SortExpression="personaddiction" />
                        <asp:BoundField DataField="document" HeaderText="document" 
                            SortExpression="document" />
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
                    SelectCommand="SELECT * FROM [Deathcertificate]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

