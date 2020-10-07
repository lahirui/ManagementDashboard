using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ManagementDashboard
{
    public class GridViewQueries
    {
        public string CMEQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, Team, "+
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                                       "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                                       "CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60)) as 'C-OUT SAH', " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                                       "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                                       "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                                       "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                                       "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                                       "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                                       "SUM(ISNULL(INQ,0)) as 'INQ', " +
                                       "SUM(ISNULL(WIP,0)) as 'WIP', " +
                                       "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                                "FROM ManagementDashboard " +
                                "WHERE Factory = 'CME' " +
                                "GROUP BY SortOrder, Code, Team " +
                                "ORDER BY SortOrder, Team";

        public string CMGMQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, Team, " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                                       "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                                       "CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60)) as 'C-OUT SAH', " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                                       "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                                       "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                                       "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                                       "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                                       "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                                       "SUM(ISNULL(INQ,0)) as 'INQ', " +
                                       "SUM(ISNULL(WIP,0)) as 'WIP', " +
                                       "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                                "FROM ManagementDashboard " +
                                "WHERE Factory = 'CMGM' " +
                                "GROUP BY SortOrder, Code, Team " +
                                "ORDER BY SortOrder, Team";

        public string CMWQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, Team, " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                                       "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                                       "CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60)) as 'C-OUT SAH', " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                                       "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                                       "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                                       "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                                       "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                                       "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                                       "SUM(ISNULL(INQ,0)) as 'INQ', " +
                                       "SUM(ISNULL(WIP,0)) as 'WIP', " +
                                       "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                                "FROM ManagementDashboard " +
                                "WHERE Factory = 'CMW' " +
                                "GROUP BY SortOrder, Code, Team " +
                                "ORDER BY SortOrder, Team";

        public string CMCDQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, Team, " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                                       "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                                       "CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60)) as 'C-OUT SAH', " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                                       "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                                       "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                                       "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                                       "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                                       "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                                       "SUM(ISNULL(INQ,0)) as 'INQ', " +
                                       "SUM(ISNULL(WIP,0)) as 'WIP', " +
                                       "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                                "FROM ManagementDashboard " +
                                "WHERE Factory = 'CMCD' " +
                                "GROUP BY SortOrder, Code, Team " +
                                "ORDER BY SortOrder, Team";

        public string CMCGQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, Team, " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                                       "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                                       "CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60)) as 'C-OUT SAH', " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                                       "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                                       "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                                       "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                                       "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                                       "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                                       "SUM(ISNULL(INQ,0)) as 'INQ', " +
                                       "SUM(ISNULL(WIP,0)) as 'WIP', " +
                                       "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                                "FROM ManagementDashboard " +
                                "WHERE Factory = 'CMCG' " +
                                "GROUP BY SortOrder, Code, Team " +
                                "ORDER BY SortOrder, Team";

        public string CMPKQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, Team, " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                                       "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                                       "CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60)) as 'C-OUT SAH', " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                                       "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                                       "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                                       "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                                       "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                                       "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                                       "SUM(ISNULL(INQ,0)) as 'INQ', " +
                                       "SUM(ISNULL(WIP,0)) as 'WIP', " +
                                       "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                                "FROM ManagementDashboard " +
                                "WHERE Factory = 'CMPK' " +
                                "GROUP BY SortOrder, Code, Team " +
                                "ORDER BY SortOrder, Team";

        public string CPQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                                       "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60))) as 'C-OUT SAH', " +
                                       "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                                       "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                                       "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                                       "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                                       "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                                       "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                                       "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                                       "SUM(ISNULL(INQ,0)) as 'INQ', " +
                                       "SUM(ISNULL(WIP,0)) as 'WIP', " +
                                       "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                                "FROM ManagementDashboard " +
                                "WHERE Province = 'CP' " +
                                "GROUP BY SortOrder, Code " +
                                "ORDER BY SortOrder";

        public string WPQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, " +
                               "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                               "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                               "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60))) as 'C-OUT SAH', " +
                               "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                               "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                               "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                               "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                               "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                               "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                               "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                               "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                               "SUM(ISNULL(INQ,0)) as 'INQ', " +
                               "SUM(ISNULL(WIP,0)) as 'WIP', " +
                               "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                        "FROM ManagementDashboard " +
                        "WHERE Province = 'WP' " +
                        "GROUP BY SortOrder, Code " +
                        "ORDER BY SortOrder";

        public string CountryQuery = "SELECT (CASE WHEN Code='BUN' THEN 'BUNDLING'  WHEN Code='SEW' THEN 'SEWING' WHEN Code='FIN' THEN 'FINISHING' END) AS Area, " +
                                           "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(C_Out_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'C-OUT Efficiency', " +
                                           "SUM(ISNULL(C_OUT,0)) as 'C-OUT', " +
                                           "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(C_OUT_Achieved_Minutes,0))/60))) as 'C-OUT SAH', " +
                                           "IIF(SUM(ISNULL(Clocked_Minutes,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(L_OUT_Achieved_Minutes,0))/SUM(ISNULL(Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency', " +
                                           "SUM(ISNULL(L_OUT,0)) as 'L-OUT', " +
                                           "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(L_OUT_Achieved_Minutes,0))/60))) as 'L-OUT SAH', " +
                                           "SUM(ISNULL(Present_Employees,0)) as 'Present Employees', " +
                                           "IIF(SUM(ISNULL(Registered_Employees,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(Absent_Employees,0))/SUM(ISNULL(Registered_Employees,0))))*100,0) as 'Absenteesm', " +
                                           "(CONVERT(DECIMAL(10, 2),(SUM(ISNULL(Downtime,0))/60))) as 'Downtime Hrs', " +
                                           "IIF(SUM(ISNULL(ILQPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),SUM(ISNULL(ILQDefects,0))/SUM(ISNULL(ILQPiecesChecked,0))))*100,0) as 'ILQ', " +
                                           "IIF(SUM(ISNULL(AQLPiecesChecked,0)) > 0, (CONVERT(DECIMAL(10, 2),(SUM(ISNULL(AQLPiecesChecked,0))-SUM(ISNULL(AQLPiecesFailed,0)))/SUM(ISNULL(AQLPiecesChecked,0))))*100,0) as 'AQL', " +
                                           "SUM(ISNULL(INQ,0)) as 'INQ', " +
                                           "SUM(ISNULL(WIP,0)) as 'WIP', " +
                                           "SUM(ISNULL(OUTQ,0)) as 'OUTQ' " +
                                    "FROM ManagementDashboard " +
                                    "GROUP BY SortOrder, Code " +
                                    "ORDER BY SortOrder";
    }
}