/*
Missing Index Details from SQLQuery23.sql - SKPFISDSSDB01.P.FDOTC.General (universal_admin (60))
The Query Processor estimates that implementing the following index could improve the query cost by 92.6819%.
*/

USE [General]
GO
CREATE NONCLUSTERED INDEX [testIndex]
ON [dbo].[CoRoundC] ([EntityID])

GO

