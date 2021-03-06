USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[CLEAN_FLIGHTS_LIST]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CLEAN_FLIGHTS_LIST]

AS

	INSERT INTO TicketsArchive (ID,FLIGHT_ID,CUSTOMER_ID)
	SELECT ID,FLIGHT_ID,CUSTOMER_ID FROM Tickets
	WHERE FLIGHT_ID =(SELECT ID FROM Flights WHERE LANDING_TIME < DATEADD(HOUR,-3,GETDATE()))
 
	DELETE FROM Tickets 
	WHERE FLIGHT_ID =(SELECT ID FROM Flights WHERE LANDING_TIME < DATEADD(HOUR,-3,GETDATE()))

	UPDATE Flights
	SET FLIGHT_STATUS = 'LANDED'
	WHERE LANDING_TIME < DATEADD(HOUR,-3,GETDATE())

	INSERT INTO FlightsArchive (ID, AIRLINECOMPANY_ID, ORIGIN_COUNTRY_CODE, DESTINATION_COUNTRY_CODE, DEPARTURE_TIME, LANDING_TIME, FLIGHT_STATUS,TOTAL_TICKETS,REMAINING_TICKETS)
	SELECT ID, AIRLINECOMPANY_ID, ORIGIN_COUNTRY_CODE, DESTINATION_COUNTRY_CODE, DEPARTURE_TIME, LANDING_TIME, FLIGHT_STATUS, TOTAL_TICKETS, REMAINING_TICKETS FROM Flights
	WHERE LANDING_TIME < DATEADD(HOUR,-3,GETDATE())

	DELETE FROM Flights 
	WHERE LANDING_TIME < DATEADD(HOUR,-3,GETDATE())
GO
