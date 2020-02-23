USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[DOES_ADMINISTRATOR_EXIST]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOES_ADMINISTRATOR_EXIST]
	@USER VARCHAR(25),
	@VALUE INT OUTPUT
AS
	SELECT @VALUE = (SELECT COUNT(ID) FROM Users WHERE (USERNAME = @USER AND USERTYPE = 1))
	RETURN @VALUE
GO
