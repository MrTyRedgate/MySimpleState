CREATE TABLE [Inventory].[MaintenanceLog]
(
[LogID] [int] NOT NULL IDENTITY(1, 1),
[FlightID] [int] NULL,
[MaintenanceDate] [datetime] NULL CONSTRAINT [DF__Maintenan__Maint__45F365D3] DEFAULT (getdate()),
[Description] [nvarchar] (500) NULL,
[MaintenanceStatus] [nvarchar] (20) NULL CONSTRAINT [DF__Maintenan__Maint__46E78A0C] DEFAULT ('Pending')
)
GO
ALTER TABLE [Inventory].[MaintenanceLog] ADD CONSTRAINT [PK__Maintena__5E5499A824192231] PRIMARY KEY CLUSTERED ([LogID])
GO
ALTER TABLE [Inventory].[MaintenanceLog] ADD CONSTRAINT [FK__Maintenan__Fligh__44FF419A] FOREIGN KEY ([FlightID]) REFERENCES [Inventory].[Flight] ([FlightID])
GO
