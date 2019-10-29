USE [ProdRubbishRecycling]
GO

/****** Object:  Table [dbo].[UnwantedRecyclingBin]    Script Date: 29/10/2019 08:33:28 ******/
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
	[BinCollected] [varchar](max) NULL,
	[CommentsBiffa] [varchar](max) NULL,
	[CallOutcome] [varchar](max) NULL,
	[CommentsWaste] [varchar](max) NULL,
	[CompletedDate] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

