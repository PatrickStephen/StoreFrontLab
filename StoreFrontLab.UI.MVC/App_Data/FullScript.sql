/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5103)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_Items_Statuses]
GO
ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_Items_Categories]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Positions]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[Statuses]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[Positions]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[Items]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/31/2022 4:23:10 PM ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[DirectReportID] [int] NULL,
	[FirstName] [varchar](15) NOT NULL,
	[LastName] [varchar](15) NOT NULL,
	[PositionID] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Price] [smallmoney] NOT NULL,
	[StatusID] [int] NOT NULL,
	[Author] [varchar](50) NULL,
	[CategoryID] [int] NOT NULL,
	[ItemImage] [nvarchar](max) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[PostitionID] [int] IDENTITY(1,1) NOT NULL,
	[PositionName] [nvarchar](75) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[PostitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 1/31/2022 4:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c7dc798d-164c-4362-ba1d-77ccd3778bbf', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'32995e4b-4d5c-4168-bc23-7c76555441c0', N'c7dc798d-164c-4362-ba1d-77ccd3778bbf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'753e1b35-01d3-4009-98e6-3033434db8a8', N'c7dc798d-164c-4362-ba1d-77ccd3778bbf')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'32995e4b-4d5c-4168-bc23-7c76555441c0', N'patrickstephenit@yahoo.com', 0, N'AEGPOQQ4nr3s+T4AiuBmI2uZuopG+aRqflV3o6LLTajSFgWVYsDA2QChAPTbIBeH9Q==', N'680277c7-3295-440b-82e7-05530379f6b6', NULL, 0, 0, NULL, 1, 0, N'patrickstephenit@yahoo.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'753e1b35-01d3-4009-98e6-3033434db8a8', N'email@test.com', 0, N'AJhKOSU/wgs1Z/dlWeOMjaNtq4YxSyQJIBxaTsddPsIWVZW5urGdBjnsUml3tttbrQ==', N'80d7b796-706f-4425-9077-c207bb7edca6', NULL, 0, 0, NULL, 1, 0, N'email@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'bc77194b-8752-47bd-9ee3-e6ea0944c8b1', N'admin@example.com', 0, N'AEe4rIcJSeUYPJQTWMy8O9O+Nr2YmMzsaH3dn1RtwNCz2dBtI4rKR/iJ6qLZPt+nOg==', N'c5c8d294-9a1e-4737-bd6d-bb053599c607', NULL, 0, 0, NULL, 1, 0, N'admin@example.com')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryType]) VALUES (1, N'Books')
INSERT [dbo].[Categories] ([CategoryID], [CategoryType]) VALUES (2, N'Clothes')
INSERT [dbo].[Categories] ([CategoryID], [CategoryType]) VALUES (3, N'Misc')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName]) VALUES (1, N'BookShelf')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName]) VALUES (2, N'ClothesRack')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName]) VALUES (3, N'Misc')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [DepartmentID], [DirectReportID], [FirstName], [LastName], [PositionID]) VALUES (1, 2, NULL, N'Harry', N'Potter', 1)
INSERT [dbo].[Employees] ([EmployeeID], [DepartmentID], [DirectReportID], [FirstName], [LastName], [PositionID]) VALUES (2, 1, 1, N'Hermione', N'Granger', 2)
INSERT [dbo].[Employees] ([EmployeeID], [DepartmentID], [DirectReportID], [FirstName], [LastName], [PositionID]) VALUES (3, 3, 2, N'Ron', N'Weasley', 3)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (2, N'Harry Potter and The Philosophers Stone', 12.9900, 1, N'J.K.Rowling', 1, NULL, N'')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (5, N'Harry Potter and the Chamber of Secrets', 12.9900, 1, N'J.K.Rowling', 1, NULL, NULL)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (16, N'Harry Potter and the Prizoner of Azkaban', 12.9900, 2, N'J.K.Rowling', 1, NULL, N'Null')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (17, N'Harry Potter and th Goblet of Fire', 12.9900, 1, N'J.K.Rowling', 1, NULL, NULL)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (18, N'Harry Potter and the Order of the Pheonix', 12.9900, 1, N'J.K.Rowling', 1, NULL, NULL)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (19, N'Harry Potter and the Half Blood Prince', 12.9900, 1, N'J.K.Rowling', 1, NULL, NULL)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (20, N'Harry Potter and the Deathly Hallows', 12.9900, 1, N'J.K.Rowling', 1, NULL, NULL)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (21, N'Scarf', 19.9900, 1, NULL, 2, NULL, N'Scarf with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (22, N'Sock Hat', 19.9900, 2, NULL, 2, NULL, N'Sock hat with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (23, N'Shirt', 19.9900, 1, NULL, 2, NULL, N'Long sleeve t-shirt with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (24, N'School Cloak', 29.9900, 1, NULL, 2, NULL, N'School cloak with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (25, N'Coffee Mug', 12.9900, 1, NULL, 3, NULL, N'Coffee mug with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (26, N'Wand', 19.9900, 1, NULL, 3, NULL, N'Witch/Wizard Wand')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (27, N'Tapestry', 29.9900, 2, NULL, 3, NULL, N'Tapestry with the Hogwarts School of Witchcraft and Wizardry House Crest')
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([PostitionID], [PositionName]) VALUES (1, N'Owner')
INSERT [dbo].[Positions] ([PostitionID], [PositionName]) VALUES (2, N'ProductManager')
INSERT [dbo].[Positions] ([PostitionID], [PositionName]) VALUES (3, N'Sales')
SET IDENTITY_INSERT [dbo].[Positions] OFF
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (1, N'InStock')
INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (2, N'OutToStock')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([DirectReportID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Positions] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Positions] ([PostitionID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Positions]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Statuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Statuses] ([StatusID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Statuses]
GO
