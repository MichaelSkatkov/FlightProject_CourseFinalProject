USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_FLIGHT]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REMOVE_FLIGHT]
	@ID INT
AS
	INSERT INTO FlightsArchive 
	SELECT * FROM Flights 
	where ID = @ID

	UPDATE FlightsArchive
	SET FLIGHT_STATUS = 'CANCELLED'
	WHERE ID = @ID

	DELETE FROM Flights
	WHERE ID = @ID
GO
