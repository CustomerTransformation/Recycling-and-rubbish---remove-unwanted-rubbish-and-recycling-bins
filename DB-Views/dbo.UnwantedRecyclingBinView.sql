USE [ProdRubbishRecycling]
GO

/****** Object:  View [dbo].[UnwantedRecyclingBinView]    Script Date: 27/09/2019 11:31:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



















CREATE VIEW [dbo].[UnwantedRecyclingBinView]
AS
SELECT Convert(varchar, RequestDate,103) as RequestDate, Reference, CustomerName, Address, Email,Telephone,Postcode, TypeBin, NumberBin, DescribeLocation, BinCollected, CommentsBiffa, Convert(varchar, CompletedDate,103) as CompletedDate
              
FROM         dbo.UnwantedRecyclingBin















GO

