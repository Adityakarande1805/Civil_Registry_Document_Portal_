<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="BirthCertificate.aspx.cs" Inherits="Admin_BirthCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style23
        {
            width: 68%;
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
        width: 288px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" cellpadding="3">
        <tr>
            <td colspan="4" style="font-weight: 700" class="style30">
                APPROVE BIRTH APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style26">
                Applicant Id</td>
            <td class="style31">
                <asp:TextBox ID="txtappid" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="style26">
                Applicant Name</td>
            <td>
                <asp:TextBox ID="txtappname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style27">
                Change Status</td>
            <td class="style31">
                <asp:RadioButton ID="rdapprove" runat="server" GroupName="a" Text="Approve" 
                    AutoPostBack="True" oncheckedchanged="rdapprove_CheckedChanged" 
                    />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rddecline" runat="server" GroupName="a" Text="Decline" 
                    AutoPostBack="True" oncheckedchanged="rddecline_CheckedChanged" 
                    />
            </td>
            <td class="style27">
                Reason of Decline</td>
            <td class="style29">
                <asp:TextBox ID="txtreasonofdecline" runat="server" Height="30px" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="#336699" Font-Bold="True" 
                    ForeColor="White" Height="30px" onclick="btnupdate_Click" Text="Update" 
                    Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Visible="False">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="birthregid" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="birthregid" HeaderText="birthregid" ReadOnly="True" 
                            SortExpression="birthregid" />
                        <asp:BoundField DataField="fathername" HeaderText="fathername" 
                            SortExpression="fathername" />
                        <asp:BoundField DataField="informername" HeaderText="informername" 
                            SortExpression="informername" />
                        <asp:BoundField DataField="birthdate" HeaderText="birthdate" 
                            SortExpression="birthdate" />
                        <asp:BoundField DataField="fatherqualifacation" 
                            HeaderText="fatherqualifacation" SortExpression="fatherqualifacation" />
                        <asp:BoundField DataField="informeraddress" HeaderText="informeraddress" 
                            SortExpression="informeraddress" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="mothername" HeaderText="mothername" 
                            SortExpression="mothername" />
                        <asp:BoundField DataField="dateofreg" HeaderText="dateofreg" 
                            SortExpression="dateofreg" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="motherqualification" 
                            HeaderText="motherqualification" SortExpression="motherqualification" />
                        <asp:BoundField DataField="permanentaddress" HeaderText="permanentaddress" 
                            SortExpression="permanentaddress" />
                        <asp:BoundField DataField="placeofbirth" HeaderText="placeofbirth" 
                            SortExpression="placeofbirth" />
                        <asp:BoundField DataField="deliverytype" HeaderText="deliverytype" 
                            SortExpression="deliverytype" />
                        <asp:BoundField DataField="religion" HeaderText="religion" 
                            SortExpression="religion" />
                        <asp:BoundField DataField="village" HeaderText="village" 
                            SortExpression="village" />
                        <asp:BoundField DataField="taluka" HeaderText="taluka" 
                            SortExpression="taluka" />
                        <asp:BoundField DataField="district" HeaderText="district" 
                            SortExpression="district" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="fatheroccupation" HeaderText="fatheroccupation" 
                            SortExpression="fatheroccupation" />
                        <asp:BoundField DataField="ageofmotherwhenbabyborn" 
                            HeaderText="ageofmotherwhenbabyborn" SortExpression="ageofmotherwhenbabyborn" />
                        <asp:BoundField DataField="ageofmotheratwedding" 
                            HeaderText="ageofmotheratwedding" SortExpression="ageofmotheratwedding" />
                        <asp:BoundField DataField="pregnancyperiodweek" 
                            HeaderText="pregnancyperiodweek" SortExpression="pregnancyperiodweek" />
                        <asp:BoundField DataField="noofchildrensborninthemotherswomb" 
                            HeaderText="noofchildrensborninthemotherswomb" 
                            SortExpression="noofchildrensborninthemotherswomb" />
                        <asp:BoundField DataField="babyweightatbirth" HeaderText="babyweightatbirth" 
                            SortExpression="babyweightatbirth" />
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
                    SelectCommand="SELECT * FROM [Birthcertificate]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

