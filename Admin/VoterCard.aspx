<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="VoterCard.aspx.cs" Inherits="Admin_VoterCard" %>

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
                APPROVE VOTER CARD APPLICATION<hr />
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
                </td>
        </tr>
        <tr>
            <td class="style30">
                VoterId</td>
            <td class="style30">
                <asp:TextBox ID="txtvoteridno" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style30">
                <asp:Button ID="btnupdate" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnupdate_Click" Text="Update" 
                    Width="150px" />
            </td>
            <td class="style30">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" class="style27">
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="voterregid" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black" Height="252px" Width="2506px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="voterregid" HeaderText="voterregid" ReadOnly="True" 
                            SortExpression="voterregid" />
                        <asp:BoundField DataField="regdate" HeaderText="regdate" 
                            SortExpression="regdate" />
                        <asp:BoundField DataField="nmofparliment" HeaderText="nmofparliment" 
                            SortExpression="nmofparliment" />
                        <asp:BoundField DataField="noofparliment" HeaderText="noofparliment" 
                            SortExpression="noofparliment" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                        <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="adharno" HeaderText="adharno" 
                            SortExpression="adharno" />
                        <asp:BoundField DataField="religion" HeaderText="religion" 
                            SortExpression="religion" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" 
                            SortExpression="dateofbirth" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="disability" HeaderText="disability" 
                            SortExpression="disability" />
                        <asp:BoundField DataField="disabilitytyper" HeaderText="disabilitytyper" 
                            SortExpression="disabilitytyper" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="district" HeaderText="district" 
                            SortExpression="district" />
                        <asp:BoundField DataField="taluka" HeaderText="taluka" 
                            SortExpression="taluka" />
                        <asp:BoundField DataField="village" HeaderText="village" 
                            SortExpression="village" />
                        <asp:BoundField DataField="pincode" HeaderText="pincode" 
                            SortExpression="pincode" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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
                    SelectCommand="SELECT DISTINCT * FROM [Voterid]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

