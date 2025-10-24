CREATE TABLE [Inventory].[FlightRoute]
(
[RouteID] [int] NOT NULL IDENTITY(1, 1),
[DepartureCity] [nvarchar] (50) NOT NULL,
[ArrivalCity] [nvarchar] (50) NOT NULL,
[Distance] [int] NOT NULL
)
GO
ALTER TABLE [Inventory].[FlightRoute] ADD CONSTRAINT [PK__FlightRo__80979AAD303E2C84] PRIMARY KEY CLUSTERED ([RouteID])
GO
