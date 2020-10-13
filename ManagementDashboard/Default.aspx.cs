using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManagementDashboard
{
    public partial class _Default : Page
    {
        private Common common = new Common();
        private GridViewQueries gridViewQueries = new GridViewQueries();
        int WIPtoFIN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                lblCMSLTime.Text = DateTime.Now.ToString("dd-MMM-yyyy hh:mm");
                DataSet dsCMSL = new DataSet();
                dsCMSL = common.ReturnDataSet(gridViewQueries.CMSLQuery);
                if (dsCMSL.Tables[0].Rows.Count > 0)
                {
                   
                    btnBunEfficiency.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                    btnBunOutput.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                    btnBunSAH.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(3).ToString();
                    btnBunHC.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(7).ToString();
                    btnBunAbsenteesm.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(8).ToString();
                    btnBunDowntime.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(9).ToString();
                    btnBunINQ.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(12).ToString();
                    btnBunWIP.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(13).ToString();
                    btnBunOutQ.Text = dsCMSL.Tables[0].Rows[0].ItemArray.GetValue(14).ToString();

                    btnSewEff.Text= dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(1).ToString();
                    btnSewOut.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(2).ToString();
                    btnSewSAH.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(3).ToString();
                    btnSewHC.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(7).ToString();
                    btnSewAbsent.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(8).ToString();
                    btnSewDowntime.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(9).ToString();
                    BtnSewILQ.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(10).ToString();
                    BtnSewAQL.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(11).ToString();
                    btnSewWIP.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(13).ToString();
                    btnSewLoutEff.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(4).ToString();
                    btnSewLOUT.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(5).ToString();
                    btnSewLoutSAH.Text = dsCMSL.Tables[0].Rows[1].ItemArray.GetValue(6).ToString();

                    btnFinEff.Text= dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(1).ToString();
                    btnFinOutput.Text = dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(2).ToString();
                    btnFinSAH.Text = dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(3).ToString();
                    btnFinHC.Text = dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(7).ToString();
                    btnFinAbsent.Text = dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(8).ToString();
                    btnFinDowntime.Text = dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(9).ToString();
                    btnFinINQ.Text = dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(12).ToString();
                    btnFinWIP.Text = dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(13).ToString();
                    btnFinOutQ.Text = dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(14).ToString();

                    DataSet dsTotal = new DataSet();
                    dsTotal = common.ReturnDataSet(gridViewQueries.CMSLTotal);
                    if (dsTotal.Tables[0].Rows.Count > 0)
                    {
                        btnTotAbsent.Text = dsTotal.Tables[0].Rows[0].ItemArray.GetValue(7).ToString();
                        btnTotAQL.Text = dsTotal.Tables[0].Rows[0].ItemArray.GetValue(10).ToString();
                        btnTotDowntime.Text = dsTotal.Tables[0].Rows[0].ItemArray.GetValue(8).ToString();
                        btnTotEff.Text = dsTotal.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
                        btnTotHC.Text = dsTotal.Tables[0].Rows[0].ItemArray.GetValue(6).ToString();
                        btnTotILQ.Text = dsTotal.Tables[0].Rows[0].ItemArray.GetValue(9).ToString();
                        btnTotOutput.Text = dsTotal.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                        btnTotSAH.Text = dsTotal.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                        WIPtoFIN = Convert.ToInt32(dsCMSL.Tables[0].Rows[2].ItemArray.GetValue(12).ToString()) + Convert.ToInt32(dsTotal.Tables[0].Rows[0].ItemArray.GetValue(12).ToString());
                        btnTotWIP.Text = Convert.ToString(WIPtoFIN);
                    }
                }

               
            }
            
        }

        #region Removed
        //public override void VerifyRenderingInServerForm(Control control)
        //{ /* Do nothing */ }

        //private void BindGrid()
        //{
        //    SqlConnection con = new SqlConnection();
        //    ds = new DataSet();
        //    con.ConnectionString = common.PDCS_Reportsconstr;
        //    SqlCommand cmd = new SqlCommand(gridViewQueries.CMSLQuery, con);

        //    da = new SqlDataAdapter(cmd);
        //    da.Fill(ds);
        //    con.Open();
        //    cmd.ExecuteNonQuery();
        //    con.Close();

        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        GridView1.DataSource = ds.Tables[0];
        //        GridView1.DataBind();

        //        // First parameter is Row Collection
        //        // Second is Start Column
        //        // Third is total number of Columns to make group of Data.
        //        ShowingGroupingDataInGridView(GridView1.Rows, 0, 3);
        //    }
        //}

        //private void ShowingGroupingDataInGridView(GridViewRowCollection gridViewRows, int startIndex, int totalColumns)
        //{
        //    if (totalColumns == 0) return;
        //    int i, count = 1;
        //    ArrayList lst = new ArrayList();
        //    lst.Add(gridViewRows[0]);
        //    var ctrl = gridViewRows[0].Cells[startIndex];
        //    for (i = 1; i < gridViewRows.Count; i++)
        //    {
        //        TableCell nextTbCell = gridViewRows[i].Cells[startIndex];
        //        if (ctrl.Text == nextTbCell.Text)
        //        {
        //            count++;
        //            nextTbCell.Visible = false;
        //            lst.Add(gridViewRows[i]);
        //        }
        //        else
        //        {
        //            if (count > 1)
        //            {
        //                ctrl.RowSpan = count;
        //                ShowingGroupingDataInGridView(new GridViewRowCollection(lst), startIndex + 1, totalColumns - 1);
        //            }
        //            count = 1;
        //            lst.Clear();
        //            ctrl = gridViewRows[i].Cells[startIndex];
        //            lst.Add(gridViewRows[i]);
        //        }
        //    }
        //    if (count > 1)
        //    {
        //        ctrl.RowSpan = count;
        //        ShowingGroupingDataInGridView(new GridViewRowCollection(lst), startIndex + 1, totalColumns - 1);
        //    }
        //    count = 1;
        //    lst.Clear();
        //}




        //protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        e.Row.Cells[0].HorizontalAlign = HorizontalAlign.Center;
        //        e.Row.Cells[1].HorizontalAlign = HorizontalAlign.Left;
        //    }
        //}

        //protected void btnExportExcel_Click(object sender, EventArgs e)
        //{
        //    //ExportGridToExcel();
        //}

        //private void ExportGridToExcel()
        //{
        //    //Response.Clear();
        //    //Response.Buffer = true;
        //    //Response.ClearContent();
        //    //Response.ClearHeaders();
        //    //Response.Charset = "";
        //    //string FileName = "CMSL" + DateTime.Now + ".xls";
        //    //StringWriter strwritter = new StringWriter();
        //    //HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        //    //Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    //Response.ContentType = "application/vnd.ms-excel";
        //    //Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        //    //GridView1.GridLines = GridLines.Both;
        //    //GridView1.HeaderStyle.Font.Bold = true;
        //    //GridView1.RenderControl(htmltextwrtter);
        //    //Response.Write(strwritter.ToString());
        //    //Response.End();
        //}
        #endregion
    }
}