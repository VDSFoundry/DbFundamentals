CREATE TABLE [dbo].[PropertyAssignment]
(
	[PropertyAssignmentId] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [int] NOT NULL,
	[PropertyContractorId] [INT] NOT NULL,
	[AssignmentTypeId] [int] NOT NULL,
	[AssignedOn] DATETIME2(7) NULL,
	-- Starting Here, these fields are part of the application's Change Review
	[CreatedBy] [uniqueidentifier] not null,
	[CreatedOn] [datetime] not null,
	[UpdatedBy] [uniqueidentifier] null,
	[UpdatedOn] [datetime] null,
	[DeactivatedBy] [uniqueidentifier] null,
	[DeactivatedOn] [datetime] null, 
CONSTRAINT [UQ_PropertyAssignment__PropertyId__AssignmentTypeId] UNIQUE NONCLUSTERED
(
	[PropertyId] ASC,
	[AssignmentTypeId] ASC,
	[DeactivatedOn]
),
CONSTRAINT [PK_PropertyAssignment] PRIMARY KEY CLUSTERED 
(
	[PropertyAssignmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY], 
    CONSTRAINT [FK_PropertyAssignment_Property] FOREIGN KEY ([PropertyId]) REFERENCES [Property]([PropertyId]), 
    CONSTRAINT [FK_PropertyAssignment_AssignmentType] FOREIGN KEY ([AssignmentTypeId]) REFERENCES [AssignmentType]([AssignmentTypeId]), 
    CONSTRAINT [FK_PropertyAssignment_PropertyContractor] FOREIGN KEY ([PropertyContractorId]) REFERENCES [PropertyContractor]([PropertyContractorId])
) ON [PRIMARY]

GO