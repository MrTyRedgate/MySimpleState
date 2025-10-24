CREATE TABLE [Inventory].[Flight]
(
[FlightID] [int] NOT NULL IDENTITY(1, 1),
[Airline] [nvarchar] (50) NOT NULL,
[DepartureCity] [nvarchar] (50) NOT NULL,
[ArrivalCity] [nvarchar] (50) NOT NULL,
[DepartureTime] [datetime] NOT NULL,
[ArrivalTime] [datetime] NOT NULL,
[Price] [decimal] (10, 2) NOT NULL,
[AvailableSeats] [int] NOT NULL
)
GO
ALTER TABLE [Inventory].[Flight] ADD CONSTRAINT [PK__Flight__8A9E148E4756BBD7] PRIMARY KEY CLUSTERED ([FlightID])
GO
