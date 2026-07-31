<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageCustomer.aspx.cs" Inherits="Admin_ManageCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style23
        {
            width: 100%;
        }
        .style29
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" class="style23">
        <tr>
            <td style="font-weight: 700; font-size: x-large; text-align: center">
                View Customer<hr />
            </td>
        </tr>
        <tr>
            <td class="style29">
                <asp:GridView ID="GridView1" runat="server" Width="670px" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="5" 
                    DataKeyNames="custid" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    ForeColor="Black" Height="259px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="custid" HeaderText="custid" SortExpression="custid" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="custname" HeaderText="custname" 
                            SortExpression="custname" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" 
                            SortExpression="emailid" />
                        <asp:BoundField DataField="mobno" HeaderText="mobno" 
                            SortExpression="mobno" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
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
                    SelectCommand="SELECT DISTINCT * FROM [Registration]"
                    
                    DeleteCommand="delete from [Registration] where [custid]=@custid"
                    ></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

