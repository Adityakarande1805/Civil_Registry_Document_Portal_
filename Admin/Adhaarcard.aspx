<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Adhaarcard.aspx.cs" Inherits="Admin_Adhaarcard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style23
        {
            width: 101%;
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
            width: 145px;
            height: 56px;
        }
        .style28
        {
            width: 329px;
            height: 56px;
        }
        .style29
        {
            height: 56px;
        }
        .style30
        {
            height: 34px;
            font-size: x-large;
        }
        .style31
        {
            width: 153px;
            text-decoration: none;
        }
        .style32
        {
            width: 153px;
            height: 56px;
            color: #000000;
            text-decoration: none;
        }
        .style33
        {
            width: 283px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3">
        <tr>
            <td colspan="4" style="font-weight: 700" class="style30">
                APPROVE ADHAAR CARD APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style31">
                Applicant Id</td>
            <td class="style33">
                <asp:TextBox ID="txtappid" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style26">
                Applicant Name</td>
            <td>
                <asp:TextBox ID="txtappname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style32">
                Change Status</td>
            <td class="style33">
                <asp:RadioButton ID="rdapprove" runat="server" GroupName="a" Text="Approve" 
                    oncheckedchanged="rdapprove_CheckedChanged" AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rddecline" runat="server" GroupName="a" Text="Decline" 
                    oncheckedchanged="rddecline_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style27">
                Reason of Decline</td>
            <td class="style29">
                <asp:TextBox ID="txtreasonofdecline" runat="server" Height="30px" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style32">
                Adhaar Number</td>
            <td class="style29" colspan="3">
                &nbsp;
                <asp:TextBox ID="txtadhaarno1" runat="server" Height="30px"></asp:TextBox>
                &nbsp;<asp:TextBox ID="txtadhaarno2" runat="server" Height="30px"></asp:TextBox>
&nbsp;
                <asp:TextBox ID="txtadhaarno3" runat="server" Height="30px" 
                ></asp:TextBox>
            &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnupdate_Click" Text="Update" 
                    Width="150px" BorderStyle="None" />
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtadhaarno1" ErrorMessage="Invalid" ForeColor="Red" 
                    ValidationExpression="[2-9]{1}[0-9]{3}"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtadhaarno2" ErrorMessage="Invalid" ForeColor="Red" 
                    ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtadhaarno3" ErrorMessage="Invalid" ForeColor="Red" 
                    ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="adharregid" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                    AllowPaging="True" PageSize="5" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="adharregid" HeaderText="adharregid" ReadOnly="True" 
                            SortExpression="adharregid" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                        <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                            SortExpression="mobileno" />
                        <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" 
                            SortExpression="dateofbirth" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" 
                            SortExpression="emailid" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="house_buildingno" HeaderText="house_buildingno" 
                            SortExpression="house_buildingno" />
                        <asp:BoundField DataField="street_lane" HeaderText="street_lane" 
                            SortExpression="street_lane" />
                        <asp:BoundField DataField="landmark" HeaderText="landmark" 
                            SortExpression="landmark" />
                        <asp:BoundField DataField="arealocality" HeaderText="arealocality" 
                            SortExpression="arealocality" />
                        <asp:BoundField DataField="village_city" HeaderText="village_city" 
                            SortExpression="village_city" />
                        <asp:BoundField DataField="postoffice" HeaderText="postoffice" 
                            SortExpression="postoffice" />
                        <asp:BoundField DataField="district" HeaderText="district" 
                            SortExpression="district" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="gname" HeaderText="gname" SortExpression="gname" />
                        <asp:BoundField DataField="gadharno" HeaderText="gadharno" 
                            SortExpression="gadharno" />
                        <asp:BoundField DataField="sign" HeaderText="sign" SortExpression="sign" />
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
                    SelectCommand="SELECT * FROM [Adharcard]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

