USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[ADD_COUNTRY]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADD_COUNTRY]
	@NAME VARCHAR(50)
AS
	INSERT INTO Countries (COUNTRY_NAME)
	VALUES (@NAME)
GO
