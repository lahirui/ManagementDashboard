<%@ Page Title="CME" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="CMPK.aspx.cs" Inherits="ManagementDashboard.CMPK" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row" style="padding-top: 20px; padding-bottom: 10px; width: 100%; overflow: scroll;">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" SizeToReportContent="true">
        </rsweb:ReportViewer>
    </div>
</asp:Content>