CREATE TABLE [dbo].[ContractArea](
	[ContractAreaId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](40) NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Abbr] [nvarchar](8) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedOn] [datetime] NULL,
CONSTRAINT [UQ_ContractArea__Code_Name] UNIQUE NONCLUSTERED
(
	[Code] ASC,
	[Name] ASC,
	[DeactivatedOn]
),
CONSTRAINT [PK_ContractArea] PRIMARY KEY CLUSTERED 
(
	[ContractAreaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO