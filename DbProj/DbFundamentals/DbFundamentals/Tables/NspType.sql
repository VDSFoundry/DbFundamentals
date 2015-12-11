CREATE TABLE [dbo].[NspType](
	[NspTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Abbr] [nvarchar](8) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	-- Starting Here, these fields are part of the application's Change Review
	[CreatedBy] [uniqueidentifier] not null,
	[CreatedOn] [datetime] not null,
	[UpdatedBy] [uniqueidentifier] null,
	[UpdatedOn] [datetime] null,
	[DeactivatedBy] [uniqueidentifier] null,
	[DeactivatedOn] [datetime] null,
CONSTRAINT [UQ_NspType__Name] UNIQUE NONCLUSTERED
(
	[Name] ASC
),
CONSTRAINT [PK_NspTypeId] PRIMARY KEY CLUSTERED 
(
	[NspTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO