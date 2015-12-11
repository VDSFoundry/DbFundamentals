CREATE TABLE [dbo].[PropertyStatus](
	[PropertyStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Abbr] [nvarchar](8) NULL,
	[StatusCode] [nvarchar](24) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeactivatedBy] [uniqueidentifier] NULL,
	[DeactivatedOn] [datetime] NULL,
CONSTRAINT [UQ_PropertyStatus__Name] UNIQUE NONCLUSTERED
(
	[Name] ASC,
	[DeactivatedOn]
),
CONSTRAINT [PK_PropertyStatus] PRIMARY KEY CLUSTERED 
(
	[PropertyStatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO