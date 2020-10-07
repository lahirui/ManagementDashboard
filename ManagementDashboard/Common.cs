using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Win32;
using System.Configuration;

namespace ManagementDashboard
{
    public class Common
    {
        public static string strServerName;
        public SqlConnection conSQL = new SqlConnection();
        public SqlTransaction sqlTxn;
        //public string CMEconstr = ConfigurationManager.ConnectionStrings["CMEConString"].ConnectionString;
        //public string CMWconstr = ConfigurationManager.ConnectionStrings["CMWConString"].ConnectionString;
        //public string CMMconstr = ConfigurationManager.ConnectionStrings["CMMConString"].ConnectionString;
        //public string CMCGconstr = ConfigurationManager.ConnectionStrings["CMCGConString"].ConnectionString;
        //public string CMCDconstr = ConfigurationManager.ConnectionStrings["CMCDConString"].ConnectionString;
        //public string CMCKconstr = ConfigurationManager.ConnectionStrings["CMCKConString"].ConnectionString;
        public string PDCS_Reportsconstr = ConfigurationManager.ConnectionStrings["PDCS_ReportsConString"].ConnectionString;
        public static int MID = 0;
        //public static int UserId;

        #region Email Alert Configurations
        public static string _FromEmail = "virtualinfinitysolutions@gmail.com";
        public static string _FromEmailPassword = "Las@0777";
        public static string _Subject = "Help Grow Lanka";
        public static string _SMTPServer = "smtp.gmail.com";
        public static int _ServerPort = 587;
        #endregion


        public bool ConnectDB() //connect to Database
        {
            if (string.IsNullOrEmpty(conSQL.ConnectionString))
            {
                conSQL.ConnectionString = PDCS_Reportsconstr;
            }
            if (conSQL.State == ConnectionState.Closed)
            {
                conSQL.Open();
            }
            return true;
        }

        public bool DisconnetDB() //method to disconnect connection from database
        {
            if (conSQL.State == ConnectionState.Open)
            {
                if (sqlTxn == null)
                {
                    conSQL.Close();
                }
            }
            return true;
        }

        public bool BeginTrans() //Method to begin transactions to database
        {

            ConnectDB();
            sqlTxn = conSQL.BeginTransaction();
            return true;

        }

        public bool CommitTrans() //Method to commit transactions to databse
        {


            if ((sqlTxn.Connection != null))
            {
                sqlTxn.Commit();

            }

            sqlTxn = null;
            DisconnetDB();

            return true;

        }

        public bool RollbackTrans() //MEthod to rollbacke from database in a wrong entry or a failure
        {


            if ((sqlTxn.Connection != null))
            {
                sqlTxn.Rollback();

            }

            sqlTxn = null;
            DisconnetDB();

            return true;

        }

        public DataSet ReturnDataSet(string strSqlCommand) //method to return data from database to form
        {

            SqlCommand sqlCmd = default(SqlCommand);
            SqlDataAdapter daComman = new SqlDataAdapter();
            DataSet dsComman = new DataSet();

            ConnectDB();

            sqlCmd = new SqlCommand(strSqlCommand, conSQL);
            daComman.SelectCommand = sqlCmd;
            daComman.Fill(dsComman, "MySqlTable");


            DisconnetDB();

            return dsComman;

        }

        public int ExecuteProcedure(string CommandText, CommandType CommandType, SqlParameter[] Parameters) //method to execute stored procedures
        {

            SqlCommand sqlComm = default(SqlCommand);
            int res = 0;
            ConnectDB();
            //Open the connection before execute the procedure

            sqlComm = new SqlCommand(CommandText, conSQL);
            sqlComm.CommandType = CommandType;


            sqlComm.Transaction = sqlTxn;
            //Set the transaction property of the SQL Command

            if ((Parameters != null))
            {
                for (int i = 0; i <= Parameters.Length - 1; i++)
                {

                    if (Parameters[i].Value == null)
                    {
                        Parameters[i].Value = DBNull.Value;
                        sqlComm.Parameters.Add(Parameters[i]).Direction = ParameterDirection.Output;
                    }
                    else
                    {
                        sqlComm.Parameters.Add(Parameters[i]);

                    }

                }
            }

            res = sqlComm.ExecuteNonQuery();

            DisconnetDB();
            //Close the connection after executing the procedure
            return res;

        }

        public bool TestDbConnection(string ServerName) //method to test the conection of the database
        {

            strServerName = ServerName;
            return ConnectDB();

        }
    }
}