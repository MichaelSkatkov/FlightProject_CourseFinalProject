USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[START_TESTING]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[START_TESTING]
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
	
	INSERT INTO Countries (COUNTRY_NAME)
	VALUES ('USA'), ('Israel'), ('Germany'), ('England'), ('Russia'), ('Ukraine'), ('Mexico')
	
	INSERT INTO AirlineCompanies (AIRLINE_NAME,COUNTRY_CODE)
	VALUES ('fub',1),('tub',5),('kub',4),('gub',1)

	INSERT INTO Customers (FIRST_NAME,LAST_NAME,ADDRESS,PHONE_NO,CREDIT_CARD_NUMBER)
	VALUES ('tok','reg','ard',66668,6546131),('bok','teg','wrd',65464,654611),('zok','ceg','rrd',64646,8646313)

	INSERT INTO Users(USERNAME,PASSWORD, USERTYPE,FK_ID_AIRLINE,FK_ID_CUSTOMER)
	VALUES ('Admin', '9999', 1,null,null), ('foo','8898',2,1,null), ('fuo', '8898',1,null,null), ('boo','1111',1,null,null), ('coo','6542',3,null,1), ('doo','68421',3,null, 2), ('goo','684321',3,null , 3), ('roo','6546',2, 2, null), ('buu','32163',2,3,null), ('too','36846',2,4,null)
	
	INSERT INTO Flights (AIRLINECOMPANY_ID,ORIGIN_COUNTRY_CODE,DESTINATION_COUNTRY_CODE,DEPARTURE_TIME,LANDING_TIME,FLIGHT_STATUS,TOTAL_TICKETS,REMAINING_TICKETS)
	VALUES (1,2,1,'20200118 12:45:54 PM', '20200118 18:45:54 PM','PLANNED', 100, 95), (1,2,3,'20200130 12:45:54 PM', '20200131 18:45:54 PM','PLANNED',90,45),(4,1,5,'20201020 12:45:54 PM', '20201021 18:45:54 PM','PLANNED',120,65), (3,5,7,'20201010 12:45:54 PM', '20201011 18:45:54 PM','PLANNED',70,70), (4,6,1,'20201020 17:45:54 PM', '20201021 18:45:54 PM','PLANNED',300,0)

	INSERT INTO Tickets (FLIGHT_ID, CUSTOMER_ID)
	VALUES (2,2),(4,2),(4,3),(1,2)
GO
