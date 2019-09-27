USE [ProdRubbishRecycling]
GO

/****** Object:  Table [dbo].[UnwantedRecyclingBin]    Script Date: 27/09/2019 11:30:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UnwantedRecyclingBin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RequestDate] [date] NOT NULL,
	[Reference] [varchar](20) NOT NULL,
	[CustomerName] [varchar](100) NOT NULL,
	[Address] [varchar](120) NOT NULL,
	[Postcode] [varchar](10) NOT NULL,
	[Email] [varchar](100) NULL,
	[Telephone] [varchar](25) NULL,
	[TypeBin] [varchar](100) NOT NULL,
	[NumberBin] [int] NOT NULL,
	[DescribeLocation] [varchar](max) NOT NULL,
	[BinCollected] [varchar](15) NULL,
	[CommentsBiffa] [varchar](max) NULL,
	[CallOutcome] [varchar](50) NULL,
	[CommentsWaste] [varchar](max) NULL,
	[CompletedDate] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

