CREATE TABLE [dbo].[AssignmentType](
	[AssignmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Abbr] [nvarchar](8) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	-- Starting Here, these fields are part of the application's Change Review
	[CreatedBy] [uniqueidentifier] not null,
	[CreatedOn] [datetime] not null,
	[UpdatedBy] [uniqueidentifier] null,
	[UpdatedOn] [datetime] null,
	[DeactivatedBy] [uniqueidentifier] null,
	[DeactivatedOn] [datetime] null,
CONSTRAINT [UQ_AssignmentType__AcAppId_Name] UNIQUE NONCLUSTERED
(
	[Name] ASC,
	[DeactivatedOn]
),
CONSTRAINT [PK_AssignmentType] PRIMARY KEY CLUSTERED 
(
	[AssignmentTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO