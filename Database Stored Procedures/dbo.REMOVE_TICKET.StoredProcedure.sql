USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_TICKET]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REMOVE_TICKET]
	@ID INT
AS
	INSERT INTO TicketsArchive 
	SELECT * FROM Tickets 
	where ID = @ID

	DELETE FROM Tickets
	WHERE ID = @ID
GO
