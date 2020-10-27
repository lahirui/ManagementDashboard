using Microsoft.Reporting.WebForms;
using System;
using System.Data;
using System.Web.UI;

namespace ManagementDashboard
{
    public partial class CME : System.Web.UI.Page
    {
        private DataTable dt = new DataTable();
        private Common common = new Common();
        private GridViewQueries gridViewQueries = new GridViewQueries();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string factoryName = "CME";

                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/RDLC/CurrentStatus.rdlc");

                ReportDataSource BundlingData = new ReportDataSource("CMEData", gridViewQueries.getCMEBundlingData(factoryName));
                ReportDataSource SewingData = new ReportDataSource("CMESew", gridViewQueries.getCMESewingData(factoryName));
                ReportDataSource FinishingData = new ReportDataSource("CMEFin", gridViewQueries.getCMEFinishingData(factoryName));

                ReportViewer1.LocalReport.DataSources.Clear();

                ReportViewer1.LocalReport.DataSources.Add(BundlingData);
                ReportViewer1.LocalReport.DataSources.Add(SewingData);
                ReportViewer1.LocalReport.DataSources.Add(FinishingData);
                this.ReportViewer1.LocalReport.DisplayName = factoryName+" Current Status" + "_" + DateTime.Now.ToString("yyyyMMdd HH:mm");
            }
        }
    }
}