USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[GET_ALL_COUNTRIES]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_ALL_COUNTRIES]
AS
	SELECT COUNTRY_NAME AS 'NAME', ID AS 'ID'
	FROM Countries
GO
