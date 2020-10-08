<%@ Page Title="WP Summary" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WPSummary.aspx.cs" Inherits="ManagementDashboard.WPSummary" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="SubContent" runat="server">
    <meta http-equiv="refresh" content="30;url=CentralProvince.aspx" />

    <div class="row text-center">
         <div class="col-md-3 text-center" style="padding-top:10px">
            <asp:Label ID="lblCMSLTime" runat="server" style="font-size:x-large;color:darkolivegreen; font-weight:bolder; "></asp:Label>
            
        </div>

        <div class="col-md-6 text-center">
            <asp:Label ID="lblTitle" runat="server" style="font-size:xx-large; color:darkorange; font-weight:bolder">Western Province Factory Wise Summary</asp:Label>
           
        </div>
    </div>

    <%--CME--%>
    <%--Bundling--%>
    <div class="row" style="padding-left:10px; font-weight:bolder">
         <div class="col-md-1 text-center" style="width:170px">
             <asp:Label ID="Label19" runat="server" Text=" "></asp:Label>
         </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="lblEff" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="lblOutput" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="lblSAH" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="lblHC" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label3" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label4" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label5" runat="server" Text="Cutting WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label6" runat="server" Text="Bun. WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label7" runat="server" Text="After Bun."></asp:Label>
           
        </div>
    </div>
    
    <div class="row" style="padding-left:10px;font-weight:bolder; padding-bottom:1px; ">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:red">
            <asp:Label ID="Label18" runat="server" Text="CME"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="padding-top:5px;padding-right:5px;  font-weight:bolder; color:blue">
            <asp:Label ID="lblArea" runat="server" Text="BUNDLING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-primary  btn-sm btn-block" ID="btnBunEfficiency" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="btnBunOutput" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="btnBunSAH" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="btnBunHC" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="btnBunAbsenteesm" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="btnBunDowntime" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="btnBunINQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="btnBunWIP" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="btnBunOutQ" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
    <%--Sewing--%>
    <div class="row" style="padding-left:170px; font-weight:bolder; margin-top:-15px">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label8" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label9" runat="server" Text="C-Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label10" runat="server" Text="C-SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label11" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label12" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label13" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label14" runat="server" Text="ILQ Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label15" runat="server" Text="AQL Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label16" runat="server" Text="Sewing WIP"></asp:Label>
        </div>

         <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label47" runat="server" Text="L-Out Eff%"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label48" runat="server" Text="L-Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label49" runat="server" Text="L-Out SAH"></asp:Label>
           
        </div>
        
    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:green">
            <asp:Label ID="Label17" runat="server" Text="SEWING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-success btn-sm btn-block " ID="btnSewEff" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="btnSewOut" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="btnSewSAH" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="btnSewHC" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block " ID="btnSewAbsent" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="btnSewDowntime" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="BtnSewILQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="BtnSewAQL" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="btnSewWIP" runat="server" Text="0"></asp:Label>
        </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label50" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label51" runat="server" Text="0"></asp:Label>
        </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label52" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
 
    <%--Finishing--%>
    <div class="row" style="padding-left:170px;font-weight:bolder;margin-top:-15px">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label20" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label21" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label22" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label23" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label24" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label25" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label26" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label27" runat="server" Text="After AQL"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label28" runat="server" Text="Fin. WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label29" runat="server" Text="After Fin."></asp:Label>
        </div>

    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:darkorange">
            <asp:Label ID="Label32" runat="server" Text="FINISHING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinEff" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinOutput" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinSAH" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinHC" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinAbsent" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinDowntime" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinINQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinWIP" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="btnFinOutQ" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
    <%--Totals--%>
  <%--  <div class="row" style="padding-left:170px;font-weight:bolder">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label30" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label31" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label33" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label34" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label35" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label36" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label37" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label38" runat="server" Text="ILQ Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label39" runat="server" Text="AQL Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label40" runat="server" Text="WIP-SEW-FIN" Font-Size="Small"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:darkred">
            <asp:Label ID="Label41" runat="server" Text="TOTAL"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotEff" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotOutput" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotSAH" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotHC" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotAbsent" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotDowntime" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotILQ" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotAQL" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="btnTotWIP" runat="server" Text="0"></asp:Label>
        </div>
    </div>--%>

    <%--CMGM--%>
    <%--Bundling--%>
    <div class="row" style="padding-left:10px; font-weight:bolder;margin-top:15px ">
         <div class="col-md-1 text-center" style="width:170px">
             <asp:Label ID="Label42" runat="server" Text=" "></asp:Label>
         </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label ID="Label43" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label44" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label45" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label46" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label53" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label54" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label55" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label56" runat="server" Text="Cutting WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label57" runat="server" Text="Bun. WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label58" runat="server" Text="After Bun."></asp:Label>
           
        </div>
    </div>
    
    <div class="row" style="padding-left:10px;font-weight:bolder; padding-bottom:1px">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:red">
            <asp:Label ID="Label59" runat="server" Text="CMGM"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="padding-top:5px;padding-right:5px;  font-weight:bolder; color:blue">
            <asp:Label ID="Label60" runat="server" Text="BUNDLING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-primary  btn-sm btn-block" ID="Label61" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label62" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label63" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label64" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label65" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label66" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label67" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label68" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label69" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
    <%--Sewing--%>
    <div class="row" style="padding-left:170px; font-weight:bolder; margin-top:-15px">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label70" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label71" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label72" runat="server" Text="C-Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label73" runat="server" Text="C-SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label74" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label75" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label76" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label77" runat="server" Text="ILQ Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label78" runat="server" Text="AQL Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label79" runat="server" Text="Sewing WIP"></asp:Label>
        </div>

         <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label80" runat="server" Text="L-Out Eff%"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label81" runat="server" Text="L-Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label82" runat="server" Text="L-Out SAH"></asp:Label>
           
        </div>
        
    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:green">
            <asp:Label ID="Label83" runat="server" Text="SEWING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-success btn-sm btn-block " ID="Label84" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label85" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label86" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label87" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block " ID="Label88" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label89" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label90" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label91" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label92" runat="server" Text="0"></asp:Label>
        </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label93" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label94" runat="server" Text="0"></asp:Label>
        </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label95" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
  
    <%--Finishing--%>
    <div class="row" style="padding-left:170px;font-weight:bolder; margin-top:-15px">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label96" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label97" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label98" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label99" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label100" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label101" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label102" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label103" runat="server" Text="After AQL"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label104" runat="server" Text="Fin. WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label105" runat="server" Text="After Fin."></asp:Label>
        </div>

    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:darkorange">
            <asp:Label ID="Label106" runat="server" Text="FINISHING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-warning btn-sm btn-block" ID="Label107" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label108" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label109" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label110" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label111" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label112" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label113" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label114" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label115" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
    <%--Totals--%>
   <%-- <div class="row" style="padding-left:170px;font-weight:bolder">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label116" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label117" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label118" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label119" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label120" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label121" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label122" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label123" runat="server" Text="ILQ Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label124" runat="server" Text="AQL Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label125" runat="server" Text="WIP-SEW-FIN" Font-Size="Small"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:darkred">
            <asp:Label ID="Label126" runat="server" Text="TOTAL"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-danger btn-sm btn-block" ID="Label127" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label128" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label129" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label130" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label131" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label132" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label133" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label134" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label135" runat="server" Text="0"></asp:Label>
        </div>
    </div>--%>

    <%--CMW--%>
    <%--Bundling--%>
    <div class="row" style="padding-left:10px; font-weight:bolder; margin-top:15px">
         <div class="col-md-1 text-center" style="width:170px">
             <asp:Label ID="Label136" runat="server" Text=" "></asp:Label>
         </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label ID="Label137" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label138" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label139" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label140" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label141" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label142" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label143" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label144" runat="server" Text="Cutting WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label145" runat="server" Text="Bun. WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label146" runat="server" Text="After Bun."></asp:Label>
           
        </div>
    </div>
    
    <div class="row" style="padding-left:10px;font-weight:bolder; padding-bottom:1px">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:red">
            <asp:Label ID="Label147" runat="server" Text="CMW"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="padding-top:5px;padding-right:5px;  font-weight:bolder; color:blue">
            <asp:Label ID="Label148" runat="server" Text="BUNDLING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-primary  btn-sm btn-block" ID="Label149" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label150" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label151" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label152" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label153" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label154" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label155" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label156" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-primary btn-sm btn-block" ID="Label157" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
    <%--Sewing--%>
    <div class="row" style="padding-left:170px; font-weight:bolder;margin-top:-15px">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label158" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label159" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label160" runat="server" Text="C-Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label161" runat="server" Text="C-SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label162" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label163" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label164" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label165" runat="server" Text="ILQ Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label166" runat="server" Text="AQL Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label167" runat="server" Text="Sewing WIP"></asp:Label>
        </div>

         <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label168" runat="server" Text="L-Out Eff%"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label169" runat="server" Text="L-Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label170" runat="server" Text="L-Out SAH"></asp:Label>
           
        </div>
        
    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:green">
            <asp:Label ID="Label171" runat="server" Text="SEWING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-success btn-sm btn-block " ID="Label172" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label173" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label174" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label175" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block " ID="Label176" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label177" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label178" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label179" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label180" runat="server" Text="0"></asp:Label>
        </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label181" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label182" runat="server" Text="0"></asp:Label>
        </div>
         <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-success btn-sm btn-block" ID="Label183" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
    <%--Finishing--%>
    <div class="row" style="padding-left:170px;font-weight:bolder;margin-top:-15px">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label184" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label185" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label186" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label187" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label188" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label189" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label190" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label191" runat="server" Text="After AQL"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label192" runat="server" Text="Fin. WIP"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label193" runat="server" Text="After Fin."></asp:Label>
        </div>

    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:darkorange">
            <asp:Label ID="Label194" runat="server" Text="FINISHING"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-warning btn-sm btn-block" ID="Label195" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label196" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label197" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label198" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label199" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label200" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label201" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label202" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-warning btn-sm btn-block" ID="Label203" runat="server" Text="0"></asp:Label>
        </div>

    </div>
    <br />
    <%--Totals--%>
   <%-- <div class="row" style="padding-left:170px;font-weight:bolder">
         <div class="col-md-1 text-center">
             <asp:Label ID="Label204" runat="server" Text=" "></asp:Label>
         </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label205" runat="server" Text="Efficiency %"></asp:Label>
            
        </div>

        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label206" runat="server" Text="Output"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label207" runat="server" Text="SAH"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label208" runat="server" Text="Head Count"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label209" runat="server" Text="Absenteesm%"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label210" runat="server" Text="DowntimeHrs"></asp:Label>
            
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label211" runat="server" Text="ILQ Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label212" runat="server" Text="AQL Pass %"></asp:Label>
           
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label ID="Label213" runat="server" Text="WIP-SEW-FIN" Font-Size="Small"></asp:Label>
        </div>
    </div>

    <div class="row" style="padding-left:170px;font-weight:bolder">
        <div class="col-md-1 text-center" style="padding-top:5px;font-weight:bolder; color:darkred">
            <asp:Label ID="Label214" runat="server" Text="TOTAL"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:label CssClass="btn btn-danger btn-sm btn-block" ID="Label215" runat="server" Text="0"></asp:label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label216" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label217" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label218" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label219" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
            <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label220" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label221" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label222" runat="server" Text="0"></asp:Label>
        </div>
        <div class="col-md-1 text-center" style="width:120px">
             <asp:Label CssClass="btn btn-danger btn-sm btn-block" ID="Label223" runat="server" Text="0"></asp:Label>
        </div>
    </div>--%>
</asp:Content>