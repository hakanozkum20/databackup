USE [ReCapSQL]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarImages]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[ImagePath] [nchar](100) NOT NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NULL,
	[ColorId] [int] NULL,
	[ModelYear] [nvarchar](25) NULL,
	[DailyPrice] [decimal](18, 0) NULL,
	[CarName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rentals]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rentals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[RentDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26.03.2022 03:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PasswordHash] [varbinary](250) NOT NULL,
	[PasswordSalt] [varbinary](250) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name]) VALUES (1, NULL)
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (2, NULL)
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (3, NULL)
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (4, NULL)
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (5, NULL)
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (6, NULL)
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (1002, N'deneme2')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (2002, N'Bugatti')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[CarImages] ON 

INSERT [dbo].[CarImages] ([Id], [CarId], [ImagePath], [Date]) VALUES (7, 3, N'/images/b17cfa59-523c-4287-b238-4a89dcb61e63.jpg                                                    ', NULL)
INSERT [dbo].[CarImages] ([Id], [CarId], [ImagePath], [Date]) VALUES (1007, 2, N'/images/bd4ed35b-d2b9-41fa-ab89-8976571f67f7.jpg                                                    ', NULL)
SET IDENTITY_INSERT [dbo].[CarImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (1, 1, 1, N'2010', CAST(150 AS Decimal(18, 0)), N'Temiz arac')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (2, 1, 2, N'2021', CAST(1000 AS Decimal(18, 0)), N'Sahibinden ucak')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (3, 3, 3, N'2018', CAST(10 AS Decimal(18, 0)), N'Temiz alfaromeo')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (4, 4, 5, N'2021', CAST(110 AS Decimal(18, 0)), N'Uçan audi')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (5, 6, 1, N'2015', CAST(250 AS Decimal(18, 0)), N'Aileyegider Dacia')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (6, 5, 4, N'2013', CAST(550 AS Decimal(18, 0)), N'American boğası cadillac')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (1004, 1, 1, N'1992', CAST(0 AS Decimal(18, 0)), N'ZenginBMW')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (3002, 1, 1, N'2021', CAST(2000 AS Decimal(18, 0)), N'BMW yeni araç')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (4002, 1, 2, N'1992', CAST(100 AS Decimal(18, 0)), N'TokenlıBMW')
INSERT [dbo].[Cars] ([Id], [BrandId], [ColorId], [ModelYear], [DailyPrice], [CarName]) VALUES (5002, 1, 3, N'1992', CAST(8 AS Decimal(18, 0)), N'Token2')
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (1, N'KIRMIZI')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (2, N'SARI')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (3, N'YESIL')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (4, N'GRI')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (5, N'MAVI')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (21, 2, N'ESTA LTİ')
INSERT [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (22, 1, N'Arzum Fırın Unlu Mamüller')
INSERT [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (23, 2, N'Forest Garden')
INSERT [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (24, 2, N'Divan Otel')
INSERT [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (25, 1, N'Pendik Belediyesi')
INSERT [dbo].[Customers] ([Id], [UserId], [CompanyName]) VALUES (27, 2, N'Monster bilişim')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OperationClaims] ON 

INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (1, N'admin')
INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (2, N'moderator')
INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (3, N'user')
INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (4, N'car.add')
INSERT [dbo].[OperationClaims] ([Id], [Name]) VALUES (5, N'car.list')
SET IDENTITY_INSERT [dbo].[OperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[UserOperationClaims] ON 

INSERT [dbo].[UserOperationClaims] ([Id], [UserId], [OperationClaimId]) VALUES (1, 4, 4)
SET IDENTITY_INSERT [dbo].[UserOperationClaims] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [PasswordHash], [PasswordSalt], [Status]) VALUES (4, N'Hakan', N'Ozkum', N'hakanozkum20@gmail.com', 0xBD6D677F37628004151534CBA8FD13FF71B65AAC9382E0D6BC192C488CCFF2BD536CC5784AA58EC62891052B4B4116B741BFDC24F56D6FEB8EADE78D23D753FF, 0x4F63B6CB32A5DE0EEFA6E34C800707648BDE4E3D434FDE2EAECCCA87891CD6581EDB0C9E3DEE3DC78CC9732D43072F06CC30FCFF5B055B23979DAB4255EFCF296D27116A852687AEF03F8D926CE9B887A6ADAAF0EF49DE33A3A31696C14585BD45E7E8250AD560A6AACB054E204F3013B75292EDB9D6296C29E0D8EF9D2EBB3B, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[CarImages]  WITH CHECK ADD FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[Rentals]  WITH CHECK ADD FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
GO
ALTER TABLE [dbo].[Rentals]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
