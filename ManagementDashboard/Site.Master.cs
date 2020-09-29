using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}