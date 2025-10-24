CREATE TABLE [Customers].[LoyaltyProgram]
(
[ProgramID] [int] NOT NULL IDENTITY(1, 1),
[ProgramName] [nvarchar] (50) NOT NULL,
[PointsMultiplier] [decimal] (3, 2) NULL CONSTRAINT [DF__LoyaltyPr__Point__398D8EEE] DEFAULT ((1.0))
)
GO
ALTER TABLE [Customers].[LoyaltyProgram] ADD CONSTRAINT [PK__LoyaltyP__7525603805F1EA52] PRIMARY KEY CLUSTERED ([ProgramID])
GO
