using System;
using System.Web.UI;

namespace ManagementDashboard
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CMEPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("CME.aspx");
        }

        protected void CMGMPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("CMGM.aspx");
        }

        protected void CMWPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("CMW.aspx");
        }

        protected void CMCDPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("CMCD.aspx");
        }

        protected void CMCGPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("CMCG.aspx");
        }

        protected void CMPKPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("CMPK.aspx");
        }

        protected void CMSLPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void WPPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("WesternProvince.aspx");
        }

        protected void CPPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("CentralProvince.aspx");
        }
    }
}