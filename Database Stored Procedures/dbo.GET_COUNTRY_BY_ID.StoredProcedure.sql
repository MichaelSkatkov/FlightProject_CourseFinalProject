USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[GET_COUNTRY_BY_ID]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_COUNTRY_BY_ID]
	@ID	INT
AS
	SELECT COUNTRY_NAME AS 'NAME'
	FROM Countries
	WHERE ID = @ID
GO
