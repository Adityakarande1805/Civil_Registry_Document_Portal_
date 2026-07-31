<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Paymentrpt.aspx.cs" Inherits="Report_Paymentrpt" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style15
        {
            text-align: center;
            font-size: large;
        }
        .style16
        {
            font-size: large;
        }
    .style29
    {
        height: 284px;
        width: 640px;
    }
    .style30
    {
        font-size: large;
        width: 263px;
        font-weight: 700;
        height: 24px;
        text-align: left;
    }
    .style31
    {
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" class="style29">
        <tr>
            <td class="style30" colspan="2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment</strong></td>
        </tr>
        <tr>
            <td class="style31" colspan="2">
                <strong><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Datewise</span></strong> <strong>
                <span class="style16">Report</span></strong></td>
        </tr>
        <tr>
            <td>
                Select From Date</td>
            <td>
                <asp:TextBox ID="txtfromdate" runat="server" Height="30px" Width="200px" 
                    ></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtfromdate_CalendarExtender" runat="server" 
                    BehaviorID="txtfromdate_CalendarExtender" TargetControlID="txtfromdate">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                Select To Date</td>
            <td>
                <asp:TextBox ID="txttodate" runat="server" Height="30px" Width="200px" 
                    ></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txttodate_CalendarExtender" runat="server" 
                    BehaviorID="txttodate_CalendarExtender" TargetControlID="txttodate">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:Button ID="btnshow" runat="server" BackColor="#336699" BorderStyle="None" 
                    Font-Bold="True" ForeColor="White" Height="30px" onclick="btnshow_Click" 
                    Text="Show" Width="150px" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                    AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" 
                    ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="350px" />
            </td>
        </tr>
    </table>
</asp:Content>

