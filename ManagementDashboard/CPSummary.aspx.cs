using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManagementDashboard
{
    public partial class CPSummary : System.Web.UI.Page
    {
        GridViewQueries gridViewQueries = new GridViewQueries();
        Common common = new Common();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                lblCMSLTime.Text = DateTime.Now.ToString("dd-MMM-yyyy hh:mm");
                
                DataSet dsCMCD = new DataSet();
                dsCMCD = common.ReturnDataSet(gridViewQueries.CPCMCDSummary);
                if (dsCMCD.Tables[0].Rows.Count > 0)
                {
                    btnCMCDBunAbsenteesm.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(8).ToString();
                    btnCMCDBunDowntime.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(9).ToString();
                    btnCMCDBunEfficiency.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                    btnCMCDBunHC.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(7).ToString();
                    btnCMCDBunINQ.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(12).ToString();
                    btnCMCDBunOutput.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                    btnCMCDBunOutQ.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(14).ToString();
                    btnCMCDBunSAH.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(3).ToString();
                    btnCMCDBunWIP.Text = dsCMCD.Tables[0].Rows[0].ItemArray.GetValue(13).ToString();

                    btnCMCDSewAbsent.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(8).ToString();
                    BtnCMCDSewAQL.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(11).ToString();
                    btnCMCDSewDowntime.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(9).ToString();
                    btnCMCDSewEff.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(1).ToString();
                    btnCMCDSewHC.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(7).ToString();
                    BtnCMCDSewILQ.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(10).ToString();
                    btnCMCDSEWLOut.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(5).ToString();
                    btnCMCDSewLoutEff.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(4).ToString();
                    btnCMCDSewLOutSAH.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(6).ToString();
                    btnCMCDSewOut.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(2).ToString();
                    btnCMCDSewSAH.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(3).ToString();
                    btnCMCDSewWIP.Text = dsCMCD.Tables[0].Rows[1].ItemArray.GetValue(13).ToString();

                    btnCMCDFinAbsenteesm.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(8).ToString();
                    btnCMCDFinDowntime.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(9).ToString();
                    btnCMCDFinEfficiency.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(1).ToString();
                    btnCMCDFinHC.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(7).ToString();
                    btnCMCDFinINQ.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(12).ToString();
                    btnCMCDFinOutput.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(2).ToString();
                    btnCMCDFinOutQ.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(14).ToString();
                    btnCMCDFinSAH.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(3).ToString();
                    btnCMCDFinWIP.Text = dsCMCD.Tables[0].Rows[2].ItemArray.GetValue(13).ToString();
                }

                DataSet dsCMCG = new DataSet();
                dsCMCG = common.ReturnDataSet(gridViewQueries.CPCMCGSummary);
                if (dsCMCG.Tables[0].Rows.Count > 0)
                {
                    btnCMCGBunAbsenteesm.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(8).ToString();
                    btnCMCGBunDowntime.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(9).ToString();
                    btnCMCGBunEfficiency.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                    btnCMCGBunHC.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(7).ToString();
                    btnCMCGBunINQ.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(12).ToString();
                    btnCMCGBunOutput.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                    btnCMCGBunOutQ.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(14).ToString();
                    btnCMCGBunSAH.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(3).ToString();
                    btnCMCGBunWIP.Text = dsCMCG.Tables[0].Rows[0].ItemArray.GetValue(13).ToString();

                    btnCMCGSewAbsent.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(8).ToString();
                    BtnCMCGSewAQL.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(11).ToString();
                    btnCMCGSewDowntime.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(9).ToString();
                    btnCMCGSewEff.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(1).ToString();
                    btnCMCGSewHC.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(7).ToString();
                    BtnCMCGSewILQ.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(10).ToString();
                    btnCMCGSEWLOut.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(5).ToString();
                    btnCMCGSewLoutEff.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(4).ToString();
                    btnCMCGSewLOutSAH.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(6).ToString();
                    btnCMCGSewOut.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(2).ToString();
                    btnCMCGSewSAH.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(3).ToString();
                    btnCMCGSewWIP.Text = dsCMCG.Tables[0].Rows[1].ItemArray.GetValue(13).ToString();

                    btnCMCGFinAbsenteesm.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(8).ToString();
                    btnCMCGFinDowntime.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(9).ToString();
                    btnCMCGFinEfficiency.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(1).ToString();
                    btnCMCGFinHC.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(7).ToString();
                    btnCMCGFinINQ.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(12).ToString();
                    btnCMCGFinOutput.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(2).ToString();
                    btnCMCGFinOutQ.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(14).ToString();
                    btnCMCGFinSAH.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(3).ToString();
                    btnCMCGFinWIP.Text = dsCMCG.Tables[0].Rows[2].ItemArray.GetValue(13).ToString();
                }

                DataSet dsCMPK = new DataSet();
                dsCMPK = common.ReturnDataSet(gridViewQueries.CPCMPKSummary);
                if (dsCMPK.Tables[0].Rows.Count > 0)
                {
                    btnCMPKBunAbsenteesm.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(8).ToString();
                    btnCMPKBunDowntime.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(9).ToString();
                    btnCMPKBunEfficiency.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(1).ToString();
                    btnCMPKBunHC.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(7).ToString();
                    btnCMPKBunINQ.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(12).ToString();
                    btnCMPKBunOutput.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(2).ToString();
                    btnCMPKBunOutQ.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(14).ToString();
                    btnCMPKBunSAH.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(3).ToString();
                    btnCMPKBunWIP.Text = dsCMPK.Tables[0].Rows[0].ItemArray.GetValue(13).ToString();

                    btnCMPKSewAbsent.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(8).ToString();
                    BtnCMPKSewAQL.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(11).ToString();
                    btnCMPKSewDowntime.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(9).ToString();
                    btnCMPKSewEff.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(1).ToString();
                    btnCMPKSewHC.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(7).ToString();
                    BtnCMPKSewILQ.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(10).ToString();
                    btnCMPKSEWLOut.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(5).ToString();
                    btnCMPKSewLoutEff.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(4).ToString();
                    btnCMPKSewLOutSAH.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(6).ToString();
                    btnCMPKSewOut.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(2).ToString();
                    btnCMPKSewSAH.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(3).ToString();
                    btnCMPKSewWIP.Text = dsCMPK.Tables[0].Rows[1].ItemArray.GetValue(13).ToString();

                    btnCMPKFinAbsenteesm.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(8).ToString();
                    btnCMPKFinDowntime.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(9).ToString();
                    btnCMPKFinEfficiency.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(1).ToString();
                    btnCMPKFinHC.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(7).ToString();
                    btnCMPKFinINQ.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(12).ToString();
                    btnCMPKFinOutput.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(2).ToString();
                    btnCMPKFinOutQ.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(14).ToString();
                    btnCMPKFinSAH.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(3).ToString();
                    btnCMPKFinWIP.Text = dsCMPK.Tables[0].Rows[2].ItemArray.GetValue(13).ToString();
                }
            }
        }
    }
}