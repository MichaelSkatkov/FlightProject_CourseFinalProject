USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[GET_FLIGHTS_BY_AIRLINE]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_FLIGHTS_BY_AIRLINE]
	@AIRLINE INT
AS
	SELECT ID AS 'ID', AIRLINECOMPANY_ID AS 'AIRLINE', ORIGIN_COUNTRY_CODE AS 'ORIGIN', DESTINATION_COUNTRY_CODE AS 'DESTINATION', DEPARTURE_TIME AS 'DEPARTURE', LANDING_TIME AS 'LANDING', FLIGHT_STATUS AS 'STATUS', TOTAL_TICKETS AS 'TOTAL', REMAINING_TICKETS AS 'REMAINING'
	FROM Flights WHERE AIRLINECOMPANY_ID = @AIRLINE
GO
