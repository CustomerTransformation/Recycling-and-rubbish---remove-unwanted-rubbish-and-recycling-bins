USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[UnwantedRecyclingBinProc]    Script Date: 27/09/2019 11:32:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 08/03/2019
-- Description:	Writes values to the table UnwantedRecyclingBin
-- =============================================
CREATE PROCEDURE [dbo].[UnwantedRecyclingBinProc]
	-- Add the parameters for the stored procedure here
	  
      @Reference varchar(20),
	  @CustomerName varchar(100),
      @Address varchar(120),
      @Postcode varchar(10),
      @Email varchar(100),
      @Telephone varchar(25),
      @TypeBin varchar(100),
      @NumberBin int,
      @DescribeLocation varchar(max),
      @BinCollected varchar(15),
      @CommentsBiffa varchar(max),
      @CallOutcome varchar(50),
      @CommentsWaste varchar(max),
	  @CompletedDate date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	DECLARE @RequestDate date
	SET @RequestDate = GETDATE()
	IF exists (SELECT Reference FROM UnwantedRecyclingBin WHERE Reference = @Reference)
	BEGIN

		IF isnull(@BinCollected,'') != ''
		BEGIN
		UPDATE UnwantedRecyclingBin
		SET  BinCollected = (isnull(BinCollected,'') + ' ' + @BinCollected),
			 CommentsBiffa = (isnull(CommentsBiffa,'') + ' ' + @CommentsBiffa),
			 CompletedDate = NULLIF(@CompletedDate, '')
		WHERE Reference = @Reference
		END

		IF isnull(@CallOutcome,'') != ''
		BEGIN
		UPDATE UnwantedRecyclingBin
		  SET CallOutcome = (isnull(CallOutcome,'') + ' ' + @CallOutcome),
			  CommentsWaste = (isnull(CommentsWaste,'') + ' ' + @CommentsWaste)
		WHERE Reference = @Reference
		END
		END
	ELSE
	BEGIN
	INSERT INTO UnwantedRecyclingBin (
	   [RequestDate]
      ,[Reference]
	  ,[CustomerName]
      ,[Address]
      ,[Postcode]
      ,[Email]
      ,[Telephone]
      ,[TypeBin]
      ,[NumberBin]
      ,[DescribeLocation])

	  VALUES (
	  @RequestDate,
      @Reference,
	  @CustomerName,
      @Address,
      @Postcode,
      @Email,
      @Telephone,
      @TypeBin,
      @NumberBin,
      @DescribeLocation
     )
	
	END
END
GO

