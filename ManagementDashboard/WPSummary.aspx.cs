using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManagementDashboard
{
    public partial class WPSummary : System.Web.UI.Page
    {
        GridViewQueries gridViewQueries = new GridViewQueries();
        Common common = new Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                lblCMSLTime.Text = DateTime.Now.ToString("dd-MMM-yyyy hh:mm");

                DataSet dsCME = new DataSet();
                dsCME = common.ReturnDataSet(gridViewQueries.WPCMESummary);
                if (dsCME.Tables[0].Rows.Count > 0)
                {
                    btnCMEBunAbsenteesm.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(8).ToString();
                    btnCMEBunDowntime.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(9).ToString();
                    btnCMEBunEfficiency.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                    btnCMEBunHC.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(7).ToString();
                    btnCMEBunINQ.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(12).ToString();
                    btnCMEBunOutput.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                    btnCMEBunOutQ.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(14).ToString();
                    btnCMEBunSAH.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(3).ToString();
                    btnCMEBunWIP.Text = dsCME.Tables[0].Rows[0].ItemArray.GetValue(13).ToString();

                    btnCMESewAbsent.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(8).ToString();
                    btnCMESewAQL.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(11).ToString();
                    btnCMESewDowntime.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(9).ToString();
                    btnCMESewEff.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(1).ToString();
                    btnCMESewHC.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(7).ToString();
                    btnCMESewILQ.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(10).ToString();
                    btnCMESewLOut.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(5).ToString();
                    btnCMESewLoutEff.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(4).ToString();
                    btnCMESewLOutSAH.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(6).ToString();
                    btnCMESewOut.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(2).ToString();
                    btnCMESewSAH.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(3).ToString();
                    btnCMESewWIP.Text = dsCME.Tables[0].Rows[1].ItemArray.GetValue(13).ToString();

                    btnCMEFinAbsent.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(8).ToString();
                    btnCMEFinDowntime.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(9).ToString();
                    btnCMEFinEff.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(1).ToString();
                    btnCMEFinHC.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(7).ToString();
                    btnCMEFinINQ.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(12).ToString();
                    btnCMEFinOutput.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(2).ToString();
                    btnCMEFinOutQ.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(14).ToString();
                    btnCMEFinSAH.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(3).ToString();
                    btnCMEFinWIP.Text = dsCME.Tables[0].Rows[2].ItemArray.GetValue(13).ToString();
                }

                DataSet dsCMGM = new DataSet();
                dsCMGM = common.ReturnDataSet(gridViewQueries.WPCMGMSummary);
                if (dsCMGM.Tables[0].Rows.Count > 0)
                {
                    btnCMGMBunAbsenteesm.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(8).ToString();
                    btnCMGMBunDowntime.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(9).ToString();
                    btnCMGMBunEfficiency.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                    btnCMGMBunHC.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(7).ToString();
                    btnCMGMBunINQ.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(12).ToString();
                    btnCMGMBunOutput.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                    btnCMGMBunOutQ.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(14).ToString();
                    btnCMGMBunSAH.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(3).ToString();
                    btnCMGMBunWIP.Text = dsCMGM.Tables[0].Rows[0].ItemArray.GetValue(13).ToString();

                    btnCMGMSewAbsent.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(8).ToString();
                    btnCMGMSewAQL.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(11).ToString();
                    btnCMGMSewDowntime.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(9).ToString();
                    btnCMGMSewEff.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(1).ToString();
                    btnCMGMSewHC.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(7).ToString();
                    btnCMGMSewILQ.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(10).ToString();
                    btnCMGMSewLOut.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(5).ToString();
                    btnCMGMSewLoutEff.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(4).ToString();
                    btnCMGMSewLOutSAH.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(6).ToString();
                    btnCMGMSewOut.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(2).ToString();
                    btnCMGMSewSAH.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(3).ToString();
                    btnCMGMSewWIP.Text = dsCMGM.Tables[0].Rows[1].ItemArray.GetValue(13).ToString();

                    btnCMGMFinAbsent.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(8).ToString();
                    btnCMGMFinDowntime.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(9).ToString();
                    btnCMGMFinEff.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(1).ToString();
                    btnCMGMFinHC.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(7).ToString();
                    btnCMGMFinINQ.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(12).ToString();
                    btnCMGMFinOutput.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(2).ToString();
                    btnCMGMFinOutQ.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(14).ToString();
                    btnCMGMFinSAH.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(3).ToString();
                    btnCMGMFinWIP.Text = dsCMGM.Tables[0].Rows[2].ItemArray.GetValue(13).ToString();
                }

                DataSet dsCMW = new DataSet();
                dsCMW = common.ReturnDataSet(gridViewQueries.WPCMWSummary);
                if (dsCMW.Tables[0].Rows.Count > 0)
                {
                    btnCMWBunAbsenteesm.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(8).ToString();
                    btnCMWBunDowntime.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(9).ToString();
                    btnCMWBunEfficiency.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                    btnCMWBunHC.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(7).ToString();
                    btnCMWBunINQ.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(12).ToString();
                    btnCMWBunOutput.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                    btnCMWBunOutQ.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(14).ToString();
                    btnCMWBunSAH.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(3).ToString();
                    btnCMWBunWIP.Text = dsCMW.Tables[0].Rows[0].ItemArray.GetValue(13).ToString();

                    btnCMWSewAbsent.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(8).ToString();
                    btnCMWSewAQL.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(11).ToString();
                    btnCMWSewDowntime.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(9).ToString();
                    btnCMWSewEff.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(1).ToString();
                    btnCMWSewHC.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(7).ToString();
                    btnCMWSewILQ.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(10).ToString();
                    btnCMWSewLOut.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(5).ToString();
                    btnCMWSewLoutEff.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(4).ToString();
                    btnCMWSewLOutSAH.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(6).ToString();
                    btnCMWSewOut.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(2).ToString();
                    btnCMWSewSAH.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(3).ToString();
                    btnCMWSewWIP.Text = dsCMW.Tables[0].Rows[1].ItemArray.GetValue(13).ToString();

                    btnCMWFinAbsent.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(8).ToString();
                    btnCMWFinDowntime.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(9).ToString();
                    btnCMWFinEff.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(1).ToString();
                    btnCMWFinHC.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(7).ToString();
                    btnCMWFinINQ.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(12).ToString();
                    btnCMWFinOutput.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(2).ToString();
                    btnCMWFinOutQ.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(14).ToString();
                    btnCMWFinSAH.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(3).ToString();
                    btnCMWFinWIP.Text = dsCMW.Tables[0].Rows[2].ItemArray.GetValue(13).ToString();
                }
            }
        }
    }
}