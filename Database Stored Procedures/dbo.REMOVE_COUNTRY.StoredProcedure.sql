USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_COUNTRY]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REMOVE_COUNTRY]
	@ID INT
AS
	DELETE FROM Countries WHERE ID = @ID
GO
