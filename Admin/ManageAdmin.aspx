<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageAdmin.aspx.cs" Inherits="Admin_ManageAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style23
    {
        font-size: large;
    }
    .style24
    {
        font-size: large;
        height: 38px;
    }
    .style25
    {
        height: 38px;
    }
    .style26
    {
        height: 72px;
    }
        .style27
        {
            text-align: left;
        }
        .style29
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="8" cellspacing="0" 
    style="height: 501px; width: 77%;">
        <tr>
            <td colspan="2" style="font-weight: 700; font-size: large; " class="style29">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Manage Admin</td>
        </tr>
        <tr>
            <td style="font-size: large">
                Admin Name</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Old Password</td>
            <td class="style25">
                <asp:TextBox ID="txtoldpassword" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style23">
                New Password</td>
            <td>
                <asp:TextBox ID="txtnewpassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password</td>
            <td>
                <asp:TextBox ID="txtconfirmpassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnewpassword" ControlToValidate="txtconfirmpassword" 
                    ErrorMessage="Password must be match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsave" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Save" Width="150px" 
                    onclick="btnsave_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Update" Width="150px" onclick="btnupdate_Click" 
                    />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btndelete" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Delete" Width="150px" onclick="btndelete_Click" 
                     />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" Text="Cancel" Width="150px" onclick="btncancel_Click" 
                    />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Height="65px" 
                    Width="405px" AllowPaging="True" PageSize="5" BackColor="White" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT * FROM [Admin]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

