CREATE TABLE [dbo].[Property]
(
	[PropertyId] [int] IDENTITY(1,1) NOT NULL,
	[MainStepId] [int] NOT NULL,
	[AcquisitionTypeId] [int] NULL,
	[ContractAreaId] [int] NULL,
	[PropertyStatusId] [int] NOT NULL,
	[PropertyTypeId] [int] NOT NULL,
	[HocId] [int] NULL,
	[NspTypeId] [int] NULL,
	[CaseNumber] [nvarchar](60) NOT NULL,[Address] [nvarchar](250) NOT NULL,
	[Address2] [nvarchar](80) NULL,
	[UnitNo] [NVARCHAR](36) NULL,
	[City] [nvarchar](60) NULL,
	[County] [nvarchar](60) NULL,
	[State] [nvarchar](60) NULL,
	[ZipCode] [nvarchar](60) NOT NULL,
	[StepOn] [datetime] NULL,
	[StatusOn] [datetime] NULL,
	[ReceivedOn] [datetime] NULL,
	[AcquisitionOn] [datetime] NULL,
	[EstimatedCloseOn] [datetime] NULL,
	[IsActive] [nchar](1) NULL,
	[IsOccupied] [nchar](1) NULL,
	[HomCode] [nvarchar](60) NULL,
	[FeeStatusCode] [nvarchar](60) NULL,
	[ContractType] [nvarchar](60) NULL,
	[HasVandalism] [nchar](1) NULL,
	[YearBuilt] [nvarchar](12) NULL,
	[IsMobileHome] [nchar](1) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Bedrooms] [int] NULL,
	[Bathrooms] [float] NULL,
	[Stories] [int] NULL,
	[LotLength] [int] NULL,
	[LotWidth] [int] NULL,	
	[ParcelNumber] [nvarchar](60) NULL,
	[IsRevitalizationArea] [nchar](1) NULL,
	[IsAssetControlArea] [nchar](1) NULL,
	[AssetControlAreaType] [nvarchar](60) NULL,
	[IsIndianLand] [nchar](1) NULL,
	-- Starting Here, these fields are part of the application's Change Review
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedOn] [datetime] NULL,
CONSTRAINT [UQ_Property__CaseNumber] UNIQUE NONCLUSTERED
(
	[CaseNumber] ASC,
	[DeactivatedOn]
),
CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC
)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY], 
    CONSTRAINT [FK_Property_MainStep] FOREIGN KEY ([MainStepId]) REFERENCES [MainStep]([MainStepId]), 
    CONSTRAINT [FK_Property_AcquisitionType] FOREIGN KEY ([AcquisitionTypeId]) REFERENCES [AcquisitionType]([AcquisitionTypeId]), 
    CONSTRAINT [FK_Property_ContractArea] FOREIGN KEY ([ContractAreaId]) REFERENCES [ContractArea]([ContractAreaId]), 
    CONSTRAINT [FK_Property_PropertyStatus] FOREIGN KEY ([PropertyStatusId]) REFERENCES [PropertyStatus]([PropertyStatusId]), 
    CONSTRAINT [FK_Property_PropertyType] FOREIGN KEY ([PropertyTypeId]) REFERENCES [PropertyType]([PropertyTypeId]), 
    CONSTRAINT [FK_Property_Hoc] FOREIGN KEY ([HocId]) REFERENCES [Hoc]([HocId]), 
    CONSTRAINT [FK_Property_NspType] FOREIGN KEY ([NspTypeId]) REFERENCES [NspType]([NspTypeId]), 
) ON [PRIMARY]
GO

CREATE INDEX [IX_Property_MainStepId] ON [dbo].[Property] ([MainStepId])

GO

CREATE INDEX [IX_Property_AcquistionTypeId] ON [dbo].[Property] ([AcquisitionTypeId])

GO

CREATE INDEX [IX_Property_ContractAreaId] ON [dbo].[Property] ([ContractAreaId])

GO

CREATE INDEX [IX_Property_PropertyStatusId] ON [dbo].[Property] ([PropertyStatusId])

GO

CREATE INDEX [IX_Property_PropertyTypeId] ON [dbo].[Property] ([PropertyTypeId])

GO

CREATE INDEX [IX_Property_HocId] ON [dbo].[Property] ([HocId])

GO

CREATE INDEX [IX_Property_NspTypeId] ON [dbo].[Property] ([NspTypeId])

GO

CREATE INDEX [IX_Property__Address_City_State_ZipCode] ON [dbo].[Property] ([Address], [City], [State], [ZipCode])

GO

CREATE INDEX [IX_Property__State_County_City] ON [dbo].[Property] ([State], [County], [City])

GO

CREATE INDEX [IX_Property_StepOn] ON [dbo].[Property] ([StepOn])

GO

CREATE INDEX [IX_Property_StatusOn] ON [dbo].[Property] ([StatusOn])

GO

CREATE INDEX [IX_Property_AcquisitionOn] ON [dbo].[Property] ([AcquisitionOn])

GO

CREATE INDEX [IX_Property_DeactivatedOn] ON [dbo].[Property] ([DeactivatedOn])
