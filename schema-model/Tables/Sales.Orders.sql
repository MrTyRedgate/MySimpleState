CREATE TABLE [Sales].[Orders]
(
[OrderID] [int] NOT NULL IDENTITY(1, 1),
[CustomerID] [int] NULL,
[FlightID] [int] NULL,
[OrderDate] [datetime] NULL CONSTRAINT [DF__Orders__OrderDat__4BAC3F29] DEFAULT (getdate()),
[Status] [nvarchar] (20) NULL CONSTRAINT [DF__Orders__Status__4CA06362] DEFAULT ('Pending'),
[TotalAmount] [decimal] (10, 2) NULL,
[TicketQuantity] [int] NULL
)
GO
ALTER TABLE [Sales].[Orders] ADD CONSTRAINT [PK__Orders__C3905BAF82584765] PRIMARY KEY CLUSTERED ([OrderID])
GO
ALTER TABLE [Sales].[Orders] ADD CONSTRAINT [FK__Orders__Customer__49C3F6B7] FOREIGN KEY ([CustomerID]) REFERENCES [Customers].[Customer] ([CustomerID])
GO
ALTER TABLE [Sales].[Orders] ADD CONSTRAINT [FK__Orders__FlightID__4AB81AF0] FOREIGN KEY ([FlightID]) REFERENCES [Inventory].[Flight] ([FlightID])
GO
