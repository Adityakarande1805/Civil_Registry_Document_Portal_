<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="RegistrationReport.aspx.cs" Inherits="Report_RegistrationReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
    <tr>
        <td>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" 
                ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" 
                ToolPanelWidth="200px" Width="350px" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="Report\RegistrationReport.rpt">
                </Report>
            </CR:CrystalReportSource>
        </td>
    </tr>
</table>
</asp:Content>

