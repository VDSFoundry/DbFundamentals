CREATE TABLE [dbo].[PropertyContractor](
	[PropertyContractorId] [int] IDENTITY(1,1) NOT NULL,
	[ContractorTypeId] [int] NOT NULL,
	[NaId] [nvarchar](40) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](60) NULL,
	[County] [nvarchar](60) NULL,
	[State] [nvarchar](60) NULL,
	[ZipCode] [nvarchar](60) NULL,
	[OfficePhone] [nvarchar](24) NULL,
	[OfficeExtension] [nvarchar](12) NULL,
	[Fax] [nvarchar](24) NULL,
	[OfficeEmail] [nvarchar](100) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedOn] [datetime] NULL,
CONSTRAINT [UQ_PropertyContractor__NaId_Name] UNIQUE NONCLUSTERED
(
	[NaId] ASC,
	[Name] ASC,
	[DeactivatedOn]
),
CONSTRAINT [PK_PropertyContractor] PRIMARY KEY CLUSTERED 
(
	[PropertyContractorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY], 
    CONSTRAINT [FK_PropertyContractor_ContractorTypeId] FOREIGN KEY ([ContractorTypeId]) REFERENCES [ContractorType]([ContractorTypeId])
) ON [PRIMARY]
GO

CREATE INDEX [IX_PropertyContractor_ContractorTypeId] ON [dbo].[PropertyContractor] ([ContractorTypeId])
