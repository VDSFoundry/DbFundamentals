CREATE TABLE [dbo].[ContractorType]
(
	[ContractorTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Abbr] [nvarchar](8) NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedOn] [datetime] NULL,
CONSTRAINT [UQ_ContractorType__Name] UNIQUE NONCLUSTERED
(
	[Name] ASC,
	[DeactivatedOn]
),
CONSTRAINT [PK_ContractorType] PRIMARY KEY CLUSTERED 
(
	[ContractorTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO