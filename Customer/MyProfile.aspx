<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Customer_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
    .style15
    {
        color: #FFFFFF;
    }
    .style16
    {
        color: #FFFFFF;
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br /><br />
    <table align="center" cellpadding="5" cellspacing="0" width="80%" 
        style="border: thin solid #808080">
    <tr>
        <td class="style15" colspan="2" 
            style="padding: 5px; background-image: url('../Images/indian-flag.jpg');">
                &nbsp;&nbsp; <span class="style16"><strong>&nbsp;EDIT MY PROFILE</strong></span></td>
    </tr>
    <tr>
        <td class="style4">
   
    <table align="center" cellpadding="3" cellspacing="0">
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="custid" DataSourceID="SqlDataSource1" Height="90px" 
                    Width="481px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" 
                    BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="custid" HeaderText="custid" ReadOnly="True" 
                            SortExpression="custid" />
                        <asp:BoundField DataField="custname" HeaderText="custname" 
                            SortExpression="custname" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" 
                            SortExpression="emailid" />
                        <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT * FROM [Registration] WHERE ([username] = @username)" UpdateCommand="update Registration set [custname]=@custname,[emailid]=@emailid,[mobno]=@mobno,[username]=@username,[password]=@password where [custid]=@custid">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="User" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</table>
<br />
<br />
</asp:Content>

