CREATE TABLE [dbo].[Hoc](
	[HocId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](40) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Abbr] [nvarchar](8) NULL,
	[DisplayOrder] [int] NOT NULL,
	-- Starting Here, these fields are part of the application's Change Review
	[CreatedBy] [uniqueidentifier] not null,
	[CreatedOn] [datetime] not null,
	[UpdatedBy] [uniqueidentifier] null,
	[UpdatedOn] [datetime] null,
	[DeactivatedBy] [uniqueidentifier] null,
	[DeactivatedOn] [datetime] null,
CONSTRAINT [UQ_Hoc__HocCode] UNIQUE NONCLUSTERED
(
	[Code] ASC
),
CONSTRAINT [PK_Hoc] PRIMARY KEY CLUSTERED 
(
	[HocId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO