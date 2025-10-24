CREATE TABLE [Sales].[OrderAuditLog]
(
[AuditID] [int] NOT NULL IDENTITY(1, 1),
[OrderID] [int] NULL,
[ChangeDate] [datetime] NULL CONSTRAINT [DF__OrderAudi__Chang__5441852A] DEFAULT (getdate()),
[ChangeDescription] [nvarchar] (500) NULL
)
GO
ALTER TABLE [Sales].[OrderAuditLog] ADD CONSTRAINT [PK__OrderAud__A17F23B86BF5324D] PRIMARY KEY CLUSTERED ([AuditID])
GO
ALTER TABLE [Sales].[OrderAuditLog] ADD CONSTRAINT [FK__OrderAudi__Order__534D60F1] FOREIGN KEY ([OrderID]) REFERENCES [Sales].[Orders] ([OrderID])
GO
