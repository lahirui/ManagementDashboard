<%@ Page Title="Western Province" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WesternProvince.aspx.cs" Inherits="ManagementDashboard.WesternProvince" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <meta http-equiv="refresh" content="10;url=CentralProvince.aspx" />
    <h3 class="text-center" style="font-weight:bold; color:darkkhaki">Western Province Current Status</h3>
  <h3>
        <asp:Button ID="btnExportExcel" runat="server" Text="Export to Excel" OnClick="btnExportExcel_Click" CssClass="btn btn-success" style="font-weight:bold" />
    </h3>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black" OnRowDataBound="GridView1_RowDataBound" Width="100%">

            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"/>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" HorizontalAlign="Right" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    
</asp:Content>
