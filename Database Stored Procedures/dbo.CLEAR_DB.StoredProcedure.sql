USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[CLEAR_DB]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CLEAR_DB]
AS
	DELETE FROM Tickets
	DELETE FROM Flights
	DELETE FROM	FlightsArchive
	DELETE FROM Users
	DELETE FROM TicketsArchive
	DELETE FROM Customers
	DELETE FROM AirlineCompanies 
	DELETE FROM Countries

	DBCC CHECKIDENT ('AirlineCompanies', RESEED, 0)
	DBCC CHECKIDENT ('Countries', RESEED, 0)
	DBCC CHECKIDENT ('Customers', RESEED, 0)
	DBCC CHECKIDENT ('Flights', RESEED, 0)
	DBCC CHECKIDENT ('Tickets', RESEED, 0)
	DBCC CHECKIDENT ('Users', RESEED, 0)

	INSERT INTO Users(USERNAME,PASSWORD, USERTYPE)
	VALUES ('Admin', '9999', 1)
GO
