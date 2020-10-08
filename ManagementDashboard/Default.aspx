<%@ Page Title="SPLASHER" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ManagementDashboard._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="SubContent" runat="server">
    <%--    <link href="Content/bootstrap.css" rel="stylesheet" />--%>
    <meta http-equiv="refresh" content="10;url=WesternProvince.aspx" />

  <div class="row text-center">
         <div class="col-md-3 text-center" style="padding-top:10px">
            <asp:Label ID="lblCMSLTime" runat="server" style="font-size:x-large;color:darkolivegreen; font-weight:bolder; "></asp:Label>
            
        </div>

        <div class="col-md-6 text-center">
            <asp:Label ID="lblTitle" runat="server" style="font-size:xx-large; color:darkorange; font-weight:bolder">CMSL Current Status</asp:Label>
           
        </div>
    </div>

    <%--Bundling--%>
    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center">
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="lblEff" runat="server" Text="Efficiency %"></asp:Label>
        </div>

        <div class="col-md-1 text-center">
            <asp:Label ID="lblOutput" runat="server" Text="Output"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="lblSAH" runat="server" Text="SAH"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="lblHC" runat="server" Text="Head Count"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label3" runat="server" Text="Absenteesm %"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label4" runat="server" Text="Downtime Hrs"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center" style="padding-top: 10px; font-weight: bolder; color: blue">
            <asp:Label ID="lblArea" runat="server" Text="BUNDLING"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary  btn-lg btn-block" ID="btnBunEfficiency" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary btn-lg btn-block" ID="btnBunOutput" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary btn-lg btn-block" ID="btnBunSAH" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary btn-lg btn-block" ID="btnBunHC" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary btn-lg btn-block" ID="btnBunAbsenteesm" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary btn-lg btn-block" ID="btnBunDowntime" runat="server" Text="0"></asp:Label>
        </div>
    </div>
    <br />
    <%--Sewing--%>
    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center">
            <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label8" runat="server" Text="Efficiency %"></asp:Label>
        </div>

        <div class="col-md-1 text-center">
            <asp:Label ID="Label9" runat="server" Text="C-Output"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label10" runat="server" Text="C-SAH"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label11" runat="server" Text="Head Count"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label12" runat="server" Text="Absenteesm %"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label13" runat="server" Text="Downtime Hrs"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label14" runat="server" Text="ILQ Pass %"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label15" runat="server" Text="AQL Pass %"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center" style="padding-top: 10px; font-weight: bolder; color: green">
            <asp:Label ID="Label17" runat="server" Text="SEWING"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewEff" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewOut" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewSAH" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewHC" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewAbsent" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewDowntime" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="BtnSewILQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="BtnSewAQL" runat="server" Text="0"></asp:Label>
        </div>
    </div>
    <br />
    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center">
            <asp:Label ID="Label42" runat="server" Text=" "></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label43" runat="server" Text="L-Out Eff.%"></asp:Label>
        </div>

        <div class="col-md-1 text-center">
            <asp:Label ID="Label44" runat="server" Text="L-Output"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label45" runat="server" Text="L-Out SAH"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center" style="padding-top: 10px;">
            <asp:Label ID="Label46" runat="server" Text=""></asp:Label>
        </div>

        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewLoutEff" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewLOUT" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewLoutSAH" runat="server" Text="0"></asp:Label>
        </div>
    </div>
    <br />
    <%--Finishing--%>
    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center">
            <asp:Label ID="Label20" runat="server" Text=" "></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label21" runat="server" Text="Efficiency %"></asp:Label>
        </div>

        <div class="col-md-1 text-center">
            <asp:Label ID="Label22" runat="server" Text="Output"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label23" runat="server" Text="SAH"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label24" runat="server" Text="Head Count"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label25" runat="server" Text="Absenteesm %"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label26" runat="server" Text="Downtime Hrs"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center" style="padding-top: 10px; font-weight: bolder; color: darkorange">
            <asp:Label ID="Label32" runat="server" Text="FINISHING"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinEff" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinOutput" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinSAH" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinHC" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinAbsent" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinDowntime" runat="server" Text="0"></asp:Label>
        </div>
    </div>
    <br />
    <%--Totals--%>
    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center">
            <asp:Label ID="Label30" runat="server" Text=" "></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label31" runat="server" Text="Efficiency %"></asp:Label>
        </div>

        <div class="col-md-1 text-center">
            <asp:Label ID="Label33" runat="server" Text="Output"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label34" runat="server" Text="SAH"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label35" runat="server" Text="Head Count"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label36" runat="server" Text="Absenteesm %"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label37" runat="server" Text="Downtime Hrs"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label38" runat="server" Text="ILQ Pass %"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label39" runat="server" Text="AQL Pass %"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center" style="padding-top: 10px; font-weight: bolder; color: darkred">
            <asp:Label ID="Label41" runat="server" Text="TOTAL"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotEff" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotOutput" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotSAH" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotHC" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotAbsent" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotDowntime" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotILQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotAQL" runat="server" Text="0"></asp:Label>
        </div>
    </div>
    <%--WIP Details--%>
    <hr />
    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center">
            <asp:Label ID="Label18" runat="server" Text=" "></asp:Label>
        </div>

        <div class="col-md-1 text-center">
            <asp:Label ID="Label5" runat="server" Text="WIP at Cutting"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label6" runat="server" Text="WIP at BUN"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label7" runat="server" Text="WIP After BUN"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label16" runat="server" Text="WIP at Sewing"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label27" runat="server" Text="WIP After AQL"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label28" runat="server" Text="WIP at FIN"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label29" runat="server" Text="WIP After FIN"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label ID="Label40" runat="server" Text="WIP-SEW-FIN"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left: 150px; font-weight: bolder">
        <div class="col-md-1 text-center" style="padding-top: 10px; font-weight: bolder; color: red">
            <asp:Label ID="Label19" runat="server" Text="WIP DETAILS"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary btn-lg btn-block" ID="btnBunINQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary btn-lg btn-block" ID="btnBunWIP" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-primary btn-lg btn-block" ID="btnBunOutQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-success btn-lg btn-block" ID="btnSewWIP" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinINQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinWIP" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-warning btn-lg btn-block" ID="btnFinOutQ" runat="server" Text="0"></asp:Label>
        </div>

        <div class="col-md-1 text-center">
            <asp:Label CssClass="btn btn-danger btn-lg btn-block" ID="btnTotWIP" runat="server" Text="0"></asp:Label>
        </div>
    </div>
</asp:Content>