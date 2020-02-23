USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[GET_AIRLINE_COMPANY_BY_ID]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_AIRLINE_COMPANY_BY_ID]
	@ID	INT
AS
	SELECT USERS.USERNAME AS 'USER', USERS.PASSWORD AS 'PASS',AirlineCompanies.AIRLINE_NAME AS 'NAME', AirlineCompanies.COUNTRY_CODE AS 'COUNTRY', AirlineCompanies.ID as 'ID'
	FROM Users
	RIGHT JOIN AirlineCompanies
	ON Users.FK_ID_AIRLINE = AirlineCompanies.ID
	WHERE AirlineCompanies.ID = @ID
GO
