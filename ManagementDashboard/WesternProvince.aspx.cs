using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManagementDashboard
{
    public partial class WesternProvince : System.Web.UI.Page
    {
        Common common = new Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.IsPostBack)
            //{
            //    DataSet dataSet = new DataSet();
            //dataSet = common.ReturnDataSet("SELECT TOP (50) dbo.Teams.Name AS Team, dbo.Styles.Code AS Style, dbo.Colors.Code AS Colour, dbo.ProductionOrders.ProdOrder AS Cut, SUM(dbo.SewingWips.Quantity) AS Quantity " +
            //                                    "FROM     dbo.SewingWips INNER JOIN " +
            //                                                      "dbo.ProductionOrders ON dbo.SewingWips.ProductionOrderid = dbo.ProductionOrders.Id INNER JOIN " +
            //                                                      "dbo.Products ON dbo.ProductionOrders.ProductId = dbo.Products.Id INNER JOIN " +
            //                                                      "dbo.Styles ON dbo.Products.StyleId = dbo.Styles.Id INNER JOIN " +
            //                                                      "dbo.Colors ON dbo.Products.ColorId = dbo.Colors.Id INNER JOIN " +
            //                                                      "dbo.Sizes ON dbo.Products.SizeId = dbo.Sizes.Id INNER JOIN " +
            //                                                      "dbo.Teams ON dbo.SewingWips.TeamId = dbo.Teams.Id " +
            //                                    "WHERE(CAST(dbo.SewingWips.EffectiveDate AS DATE) = '2020-09-02') " +
            //                                    "GROUP BY dbo.Styles.Code, dbo.Colors.Code, dbo.ProductionOrders.ProdOrder, dbo.SewingWips.WIPArea, dbo.Teams.Name " +
            //                                    "HAVING(dbo.SewingWips.WIPArea = 2) " +
            //                                    "ORDER BY Team, Style, Colour, Cut");
            //    gvCMSL.DataSource = dataSet.Tables[0];
            //    gvCMSL.DataBind();
            //}
        }
    }
}