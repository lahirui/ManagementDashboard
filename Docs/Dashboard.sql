SELECT  dbo.TeamTypes.Description AS Operation,  dbo.Teams.Name AS Team, 
       IIF(ISNULL( dbo.RptTeamDailySummary.Clocked_Minutes,0) > 0, (CONVERT(DECIMAL(10, 2),(ISNULL( dbo.RptTeamDailySummary.Achieved_Minutes,0)/ISNULL( dbo.RptTeamDailySummary.Clocked_Minutes,0))))*100,0) as 'C OUT Efficiency',
       ISNULL( dbo.RptTeamDailySummary.Output,0) as 'C-OUT',
          (CONVERT(DECIMAL(10, 2),ISNULL( dbo.RptTeamDailySummary.Achieved_Minutes,0)/60 ))as 'C-OUT SAH',
       IIF(ISNULL( dbo.RptTeamDailySummary.Clocked_Minutes,0) > 0, (CONVERT(DECIMAL(10, 2),(ISNULL( dbo.RptTeamDailySummary.LOUT_Achieved_Minutes,0)/ISNULL( dbo.RptTeamDailySummary.Clocked_Minutes,0))))*100,0) as 'L-OUT Efficiency',
       ISNULL( dbo.RptTeamDailySummary.LineOut,0) as 'L-OUT',
          (CONVERT(DECIMAL(10, 2),ISNULL( dbo.RptTeamDailySummary.LOUT_Achieved_Minutes,0)/60 ))as 'L-OUT SAH',
          ISNULL( dbo.RptTeamDailySummary.Present_Employees,0) as 'Present Employees',
       IIF(ISNULL( dbo.RptTeamDailySummary.Registered_Employees,0) > 0, (CONVERT(DECIMAL(10, 2),(ISNULL( dbo.RptTeamDailySummary.Absent_Employees,0)/ISNULL( dbo.RptTeamDailySummary.Registered_Employees,0))))*100,0) as 'Absenteesm',
          (CONVERT(DECIMAL(10, 2),ISNULL( dbo.RptTeamDailySummary.Downtime,0)/60)) as 'Downtime Hrs',
       IIF(ISNULL( dbo.RptTeamDailySummary.ILQPiecesChecked,0) > 0, ((CONVERT(DECIMAL(10, 3),(ISNULL( dbo.RptTeamDailySummary.ILQDefects,0)/ISNULL( dbo.RptTeamDailySummary.ILQPiecesChecked,0)))))*100,0) as 'ILQ',
       IIF(ISNULL( dbo.RptTeamDailySummary.AQLPiecesChecked,0) > 0, (CONVERT(DECIMAL(10, 2),((ISNULL( dbo.RptTeamDailySummary.AQLPiecesChecked,0)-ISNULL( dbo.RptTeamDailySummary.AQLPiecesFailed,0))/ISNULL( dbo.RptTeamDailySummary.AQLPiecesChecked,0))))*100,0) as 'AQL',
       ISNULL( dbo.RptTeamWIP.INQ,0) as 'INQ',
       ISNULL( dbo.RptTeamWIP.WIP,0) as 'WIP',
       ISNULL( dbo.RptTeamWIP.OUTQ,0) as 'OUTQ'
FROM    dbo.Teams INNER JOIN
              dbo.RptTeamDailySummary ON  dbo.Teams.Id =  dbo.RptTeamDailySummary.TeamId INNER JOIN
              dbo.RptTeamWIP ON  dbo.Teams.Id =  dbo.RptTeamWIP.TeamID INNER JOIN
              dbo.TeamTypes ON  dbo.Teams.TeamTypeId =  dbo.TeamTypes.Id INNER JOIN
              dbo.TeamType_Sorting ON  dbo.TeamTypes.Id =  dbo.TeamType_Sorting.TeamTypeID
WHERE (CAST( dbo.RptTeamDailySummary.EffectiveDate AS Date) = CAST(GETDATE() AS Date))
ORDER BY  dbo.TeamType_Sorting.SortOrder,  dbo.Teams.Name
