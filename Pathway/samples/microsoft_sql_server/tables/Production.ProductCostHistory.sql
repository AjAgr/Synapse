SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Production].[ProductCostHistory](
	[ProductID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[StandardCost] [money] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductCostHistory_ProductID_StartDate] PRIMARY KEY CLUSTERED
(
	[ProductID] ASC,
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductCostHistory] ADD  CONSTRAINT [DF_ProductCostHistory_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO