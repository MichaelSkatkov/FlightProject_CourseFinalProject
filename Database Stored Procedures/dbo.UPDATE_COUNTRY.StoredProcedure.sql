USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_COUNTRY]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDATE_COUNTRY]
	@ID INT,
	@NAME VARCHAR(50)
AS
	UPDATE Countries
	SET COUNTRY_NAME = @NAME
	WHERE ID = @ID
GO
