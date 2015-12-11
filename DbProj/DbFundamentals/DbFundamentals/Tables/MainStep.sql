CREATE TABLE [dbo].[MainStep](
	[MainStepId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](40) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Abbr] [nvarchar](8) NULL,
	[FullName] [nvarchar](100) NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedOn] [datetime] NULL,
CONSTRAINT [UQ_MainStep__Name] UNIQUE NONCLUSTERED
(
	[Name] ASC,
	[DeactivatedOn]
),
CONSTRAINT [PK_MainStepId] PRIMARY KEY CLUSTERED 
(
	[MainStepId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO