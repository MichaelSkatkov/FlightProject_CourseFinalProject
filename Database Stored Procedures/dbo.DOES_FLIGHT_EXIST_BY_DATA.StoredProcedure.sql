USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[DOES_FLIGHT_EXIST_BY_DATA]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOES_FLIGHT_EXIST_BY_DATA]
	@DESTINATION INT,
	@ORIGIN INT,
	@DEPARTURE DATETIME,
	@LANDING DATETIME,
	@AIRLINE INT,
	@VALUE INT OUTPUT
AS
	SELECT @VALUE = (SELECT COUNT(ID) FROM Flights WHERE (DESTINATION_COUNTRY_CODE = @DESTINATION AND ORIGIN_COUNTRY_CODE = @ORIGIN AND DEPARTURE_TIME = @DEPARTURE AND LANDING_TIME = @LANDING AND AIRLINECOMPANY_ID = @AIRLINE)) 
RETURN @VALUE
GO
