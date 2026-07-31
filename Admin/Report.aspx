<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style23
    {
        width: 62%;
        border: 1px solid #000000;
      
        }
        .style24
        {
            text-align: left;
        }
        .style25
        {
            text-align: left;
     
        }
        .style29
        {
           
           
            font-family: Arial, Helvetica, sans-serif;
            border: 1px solid #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" class="style23">
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink13" runat="server" 
                NavigateUrl="~/Report/AdhaarReport.aspx">Adhaar Card Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink14" runat="server" 
                NavigateUrl="~/Report/BirthcertificateReport.aspx">Birth Certificate Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink15" runat="server" 
                NavigateUrl="~/Report/DeathReport.aspx">Death Certificate Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink16" runat="server" 
                NavigateUrl="~/Report/MarriageReport.aspx">Marriage Certificate Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink17" runat="server" 
                NavigateUrl="~/Report/PancardReport.aspx">Pan Card Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink18" runat="server" 
                NavigateUrl="~/Report/VoterIdReport.aspx">Voter Card Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink19" runat="server" 
                NavigateUrl="~/Report/EnquiryReport.aspx">Enquiry Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink20" runat="server" 
                NavigateUrl="~/Report/FeedbackReport.aspx">Feedback Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style29">
            <asp:HyperLink ID="HyperLink21" runat="server" 
                NavigateUrl="~/Report/Paymentrpt.aspx">Payment Report</asp:HyperLink>
        </td>
    </tr>
</table>
</asp:Content>

