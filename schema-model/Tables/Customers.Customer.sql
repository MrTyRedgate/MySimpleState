CREATE TABLE [Customers].[Customer]
(
[CustomerID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (50) NOT NULL,
[LastName] [nvarchar] (50) NOT NULL,
[Email] [nvarchar] (100) NOT NULL,
[DateOfBirth] [date] NULL,
[Phone] [nvarchar] (20) NULL,
[Address] [nvarchar] (200) NULL,
[Facebook] [nchar] (10) NULL,
[X] [nchar] (10) NULL,
[Whatsapp] [nchar] (10) NULL
)
GO
ALTER TABLE [Customers].[Customer] ADD CONSTRAINT [PK__Customer__A4AE64B8FBABCCF1] PRIMARY KEY CLUSTERED ([CustomerID])
GO
ALTER TABLE [Customers].[Customer] ADD CONSTRAINT [UQ__Customer__A9D1053415D187B9] UNIQUE NONCLUSTERED ([Email])
GO
