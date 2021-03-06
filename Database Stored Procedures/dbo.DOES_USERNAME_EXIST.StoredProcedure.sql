USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[DOES_USERNAME_EXIST]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOES_USERNAME_EXIST]
	@USER VARCHAR(50),
	@VALUE INT output
AS
	SELECT @VALUE = (SELECT COUNT(ID) FROM Users WHERE USERNAME = @USER)
	RETURN @VALUE
GO
