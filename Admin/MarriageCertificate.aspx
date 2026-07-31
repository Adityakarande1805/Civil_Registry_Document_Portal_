<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="MarriageCertificate.aspx.cs" Inherits="Admin_MarriageCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style23
        {
            width: 83%;
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
         height: 39px;
     }
     .style28
     {
         width: 145px;
         height: 54px;
     }
     .style29
     {
         width: 329px;
         height: 54px;
     }
     .style30
     {
         height: 54px;
     }
        .style31
        {
            height: 39px;
            color: #000000;
            text-decoration: none;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3">
        <tr>
            <td colspan="4" style="font-weight: 700" class="style31">
                APPROVE MARRIAGE APPLICATION<hr />
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
            <td class="style16">
                Reason of Decline</td>
            <td class="style30">
                <asp:TextBox ID="txtreasonofdecline" runat="server" Height="30px" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnupdate_Click" Text="Update" 
                    Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Visible="False">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="marriageregid" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="marriageregid" HeaderText="marriageregid" 
                            ReadOnly="True" SortExpression="marriageregid" />
                        <asp:BoundField DataField="regdate" HeaderText="regdate" 
                            SortExpression="regdate" />
                        <asp:BoundField DataField="plcofmrg" HeaderText="plcofmrg" 
                            SortExpression="plcofmrg" />
                        <asp:BoundField DataField="mrgdate" HeaderText="mrgdate" 
                            SortExpression="mrgdate" />
                        <asp:BoundField DataField="hubname" HeaderText="hubname" 
                            SortExpression="hubname" />
                        <asp:BoundField DataField="hubaddress" HeaderText="hubaddress" 
                            SortExpression="hubaddress" />
                        <asp:BoundField DataField="hubreligion" HeaderText="hubreligion" 
                            SortExpression="hubreligion" />
                        <asp:BoundField DataField="hubage" HeaderText="hubage" 
                            SortExpression="hubage" />
                        <asp:BoundField DataField="hubimg" HeaderText="hubimg" 
                            SortExpression="hubimg" />
                        <asp:BoundField DataField="wifename" HeaderText="wifename" 
                            SortExpression="wifename" />
                        <asp:BoundField DataField="wifeaddress" HeaderText="wifeaddress" 
                            SortExpression="wifeaddress" />
                        <asp:BoundField DataField="wifereligion" HeaderText="wifereligion" 
                            SortExpression="wifereligion" />
                        <asp:BoundField DataField="hubfathername" HeaderText="hubfathername" 
                            SortExpression="hubfathername" />
                        <asp:BoundField DataField="wifefathername" HeaderText="wifefathername" 
                            SortExpression="wifefathername" />
                        <asp:BoundField DataField="wifeimg" HeaderText="wifeimg" 
                            SortExpression="wifeimg" />
                        <asp:BoundField DataField="hubadhar" HeaderText="hubadhar" 
                            SortExpression="hubadhar" />
                        <asp:BoundField DataField="wifeadhar" HeaderText="wifeadhar" 
                            SortExpression="wifeadhar" />
                        <asp:BoundField DataField="witnessname1" HeaderText="witnessname1" 
                            SortExpression="witnessname1" />
                        <asp:BoundField DataField="witness1address" HeaderText="witness1address" 
                            SortExpression="witness1address" />
                        <asp:BoundField DataField="witness1img" HeaderText="witness1img" 
                            SortExpression="witness1img" />
                        <asp:BoundField DataField="witness2name" HeaderText="witness2name" 
                            SortExpression="witness2name" />
                        <asp:BoundField DataField="witness2address" HeaderText="witness2address" 
                            SortExpression="witness2address" />
                        <asp:BoundField DataField="witness2img" HeaderText="witness2img" 
                            SortExpression="witness2img" />
                        <asp:BoundField DataField="witness1adhar" HeaderText="witness1adhar" 
                            SortExpression="witness1adhar" />
                        <asp:BoundField DataField="witness2adhar" HeaderText="witness2adhar" 
                            SortExpression="witness2adhar" />
                        <asp:BoundField DataField="wifeage" HeaderText="wifeage" 
                            SortExpression="wifeage" />
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
                    SelectCommand="SELECT * FROM [Marriagecertificate]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

