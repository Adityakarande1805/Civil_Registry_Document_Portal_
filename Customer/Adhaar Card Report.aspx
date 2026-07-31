<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="Adhaar Card Report.aspx.cs" Inherits="Customer_Adhaar_Card_Report" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
        <tr>
            <td class="style4">
&nbsp;<asp:Label ID="lblstatus" runat="server" Text="Approval Panding........"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="Label3" runat="server" Text="Application Declined..."></asp:Label>
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
&nbsp;           
<%-- <asp:Button ID="btngeneratecertificate" runat="server" Height="30px" 
                    onclick="btngeneratecertificate_Click" Text="Generate Certificate" 
                    Width="150px"  ForeColor="White"BackColor="#0099CC" BorderStyle="None" />
--%>
                    <asp:Button ID="btngeneratecertificate" runat="server" BorderStyle="None" BackColor="#0099CC" 
                Font-Bold="True" ForeColor="White" Height="30px" 
                onclick="btngeneratecertificate_Click" Text="Generate Certificate" 
                Width="150px" />
            </td>
        </tr>
        <tr>
            <td>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                    AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" 
                    ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" 
                    ToolPanelWidth="200px" Width="350px" />
                <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                    <Report FileName="Report\Adhaar.rpt">
                    </Report>
                </CR:CrystalReportSource>
            </td>
        </tr>
    </table>
</asp:Content>

