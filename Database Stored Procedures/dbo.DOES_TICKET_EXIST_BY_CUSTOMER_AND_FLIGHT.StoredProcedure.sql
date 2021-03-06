USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[DOES_TICKET_EXIST_BY_CUSTOMER_AND_FLIGHT]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DOES_TICKET_EXIST_BY_CUSTOMER_AND_FLIGHT]
@CUSTOMER INT,
@FLIGHT INT,
@VALUE INT OUTPUT
AS
SELECT @VALUE = (SELECT COUNT(ID) FROM Tickets WHERE CUSTOMER_ID = @CUSTOMER AND FLIGHT_ID = @FLIGHT) 
RETURN @VALUE
GO
