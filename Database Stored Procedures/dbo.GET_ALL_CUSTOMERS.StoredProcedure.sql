USE [FlightProject]
GO
/****** Object:  StoredProcedure [dbo].[GET_ALL_CUSTOMERS]    Script Date: 23-Feb-20 5:56:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_ALL_CUSTOMERS]
AS
	SELECT Customers.FIRST_NAME AS 'FIRST', Customers.LAST_NAME AS 'LAST', Customers.ADDRESS AS 'ADDRESS', Customers.PHONE_NO AS 'PHONE', Customers.CREDIT_CARD_NUMBER AS 'CARD', Customers.ID AS 'ID', Users.USERNAME AS 'USER', Users.PASSWORD AS 'PASS'
	FROM Users
	RIGHT JOIN Customers
	ON Users.FK_ID_CUSTOMER = Customers.ID
GO
