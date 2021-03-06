/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5103)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Items]') AND type in (N'U'))
ALTER TABLE [dbo].[Items] DROP CONSTRAINT IF EXISTS [FK_Items_Statuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Items]') AND type in (N'U'))
ALTER TABLE [dbo].[Items] DROP CONSTRAINT IF EXISTS [FK_Items_Categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Positions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Employees]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Departments]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[Statuses]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[Positions]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[Items]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/18/2022 1:54:15 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Items]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Items]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Positions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Positions](
	[PostitionID] [int] IDENTITY(1,1) NOT NULL,
	[PositionName] [nvarchar](75) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[PostitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 2/18/2022 1:54:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Statuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Statuses](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202201111926206_InitialCreate', N'StoreFrontLab.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC5DA44ED206CD0DEB64D1B7052DD18EB012A54A549AA0E897F5A19FD45FE850A26EBCE8622BB6531428D6E2F0CC7038430E87C3FCFBF73FE30F4FBE673CE228760332310F46FBA681891D382E594ECC842EBE7F677E78FFF557E333C77F323EE574478C0E7A9278623E501A1E5B566C3F601FC523DFB5A3200E16746407BE859CC03ADCDFFFD13A38B0304098806518E38F09A1AE8FD31FF0731A101B873441DE55E0602FE6DFA16596A21AD7C8C771886C3C31673488F07914107A89E6A3FB8BD1D5A7E928EB661A279E8B40A419F616A681080928A220F0F17D8C6714FA2C67217C40DEDD7388816E81BC18F3811C97E45DC7B47FC8C664951D73283B8969E0F7043C38E24AB2C4EE2BA9DA2C94086A3C0375D36736EA549513F3C2C1E9A78F81070A10191E4FBD88114FCCAB82C5491C5E633ACA3B8E32C8F308E0FE08A22FA32AE29ED1B9DF5E615487A37DF6DF9E314D3C9A447842704223E4ED19B7C9DC73ED5FF1F35DF00593C9D1C17C71F4EECD5BE41CBDFD011FBDA98E14C60A74B50FF0E9360A421C816C78518CDF34AC7A3F4BEC5874ABF4C9B402B604FE611A57E8E91293257D00CF397C671AE7EE1376F22FDCB8EE890BEE049D6894C0CFEBC4F3D0DCC345BBD5C893FDBF81EBE19BB78370BD468FEE329D7A813F384E047EF5117B696BFCE086997BD5E6FB332703B7F4D9EFBA7D65AD9F674112D96C308196E40E454B4CEBD28DADD2783B9934831ADEAC73D4DD376D26A96CDE4A5236A0553C2167B1696FC8E57D59BE9D2DEE240C61F252D3621A6932B8865D6B24C0EC192AE2D2980EBA1A138141FE9FD7C6331FB9DE008B63072E10A02CDCC8C7C5287F0AC01411E92DF32D8A63581B9C5F50FCD0203AFC7300D167D84E2230D919457EF8E2DC6E1F0282AF137FCE3C6173BC069B9ABB3F82736483EB9D11D66B6DBCCBC0FE1224F48C38A788E27B6AE780ECE79DEB770718449C13DBC6717C0EC68C9D6900F1770E7841E8D1616F38B6526D3B38997AC8F5D5D189B0A67ECE49CB08454D2145291A3255A4D224EA65B0744937517352BDA81945ABA89CACAFA80CAC9BA49C522F684AD02A67463558EC97CED0F0C15F0ABBFBD1DF7A9BB76E2DA8A8310D4E7EC60447B08C39B788521C917206BAAC1BDB0816D2E9634C5F7C6F4A397D425E3234AB95BC215D0486F7861476F7BD2115133E3FBA0E8B4A3A1C89726280EF44AF3E6DB5FB9C20D9A6DDA136CC4D33DFCC1AA0739793380E6C37F50245328CA732EAF2430C67B4E735B2D188B911181818BACBB63CF802633345A3BA21A7D8C3141B2776962C9CA2D8468EAC461890D343B07C47550856E648EAC27D27F1044BC711EB84D82128064F750995DDC225B61B22AF554B42CF8E5B181B7BC1436C39C521268C61AB26BA3057A7449800051F6152DA3434B62A16D76C889AA85537E76D216C39EF52A6622336D9123B6BEC92C76F2F6298CD1ADB807136ABA48B00DAF4DE360C949F55BA1A807870D93503154E4C1A03E521D5460CB4AEB12D18685D25AFCE40B3236AD7F917CEABBB669EF583F2E6B7F546756DC1366BFAD831D3CC624FE843A1078E64F33C9DB346FC4415873390939FCF621EEA8A26C2C06798D6533665BCAB8C43AD6610D1889A004B436B01E517831290E4503D84CB73798DD2F128A2076C9E776B84E56BBF005BB10119BB7A415A21D45FA38AC6D9E9F4518CACB006C9C83B1D162A380A831017AFFAC03B284597979515D32516EE130D5706C627A341412D91AB4649F96006D7526E9AED5A5205647D42B2B5B424844F1A2DE583195C4BDC46DB95A4080A7A84056BA9A8BE850FE46C79A6A3D86D8AB6B1951550F10F634B536935BE4261E89265A5F28A7F316659D9D5F4FB59FF32243FC3B0EC58518D54485B70A2418496586805D620E9B91BC5F4145134472CCF33757C894CB9B76A96FF9C6575FB942731DF07726AF66F7EB3DA709D5FDB74E5A884839DC3507D16DAA4500A4350773758491CF250A448E14F032FF1893ED2D2F7CE2EF2AAFDB32F32C2D812E4972229496D52BC5B9F834E33247BC7D0B3554434ABCF981E42A7F73C1EAD6A5E17A3EA51F29455154597C6DADA0CEA429BD5664D0C1FFB4F5A2BC2CB781AAF59A902F04F3D312A650F1258A5AD3B6ABD32A58A596FE98E28949F542185A61E52568B4C6A42561B56C2D368544DD19D835C565245975BBB232B0A4CAAD08AE615B015328B6DDD511535285560457377ECB220455C4D77782FD31E6AD6DFCCB203F07ABB9906E36596C66136C3CA3D7F15A8F2B92716BFC997C0F8F79D342BED29707DB3CA1220EB99950643BF16D5AECAEB4B51E3FDBE1EB376FF5D5BEE9BEEFFF578FD8CF7454D443A0D8A2405F7E254289CFEC6FC24D6FE18473A9A6524A691AB110CEB39A6D81F3182D1EC776FEAB9982DEC39C11522EE02C734ABF9300FF70F0E85673CBBF3A4C68A63C7539C6475EF6AEA73B681F22DF28822FB01457231C51ACF4E4A50294F7D411CFC3431FF4C7B1DA7290FF6AFF4F39E7111DF13F7F7041AEEA2041B7FC9C5A1C394E1379FBF76F4D14477AD5EFCF639EBBA67DC44E031C7C6BEA0CB5566B8FE94A2973459D735A459F981C5EB75A8DA5B0525AAE010AB3F4D98BB74906709B994DFF8E8E9DBBEA2299F1EAC85A8785E3014DE202AD43D1F58054BFB74C0819F347D3AD06FB0EAA704AB88A67D46E092FE60E22382EECB50DE738B5B8DE270B4892529D5736B11F65A1599DBDE9BA45AEDB51C5DAEC7EE01B746CDF50A96F1CACA9507DB1D15D5C883616FD3B45FBC047957AA8ECB7A90ED161B6FB2BEB8E1C6E87F5556BC0385708AC29EED170F6FDAD67409DD1DAFC0EC5722BC63C6C6CBBDB65F08BC6963D3A57977DCD87A95FBEE98AD6D6BFFDCB2A575DE42B75EBC2BD721692E6654B9E0B6E2DC2C710E27FC790046904594D99B4A75355853256B0BC39244CF545F862632961C47E22B5134B3ED3756BEE1370E96D334B3D5146F36F1E6EB7F236F4ED3CC5B5312B98DB2626551A2AAD4BB651D6BAA8F7A4D65C4B591B454ADB7C5AC8DB7ECAFA96A7810A5D4BC477347FC7A8A840751C990AED3A32858BEEE85BDB3F2171A61FF8EDD6509C1FE5E23C1766DD72C682EC822C8376F41A29C44C8D05C618A1CD8524F22EA2E904DA199E598D347E169DE8EDD74CCB173416E121A2614868CFDB9574B78B120A0897F5AF95C97797C13A67FDF64882180982ECBCDDF909F12D7730AB9CF1539210D048B2E784697CD256599DDE57381741D908E405C7D45507487FDD003B0F886CCD0235E453630BF4BBC44F6739901D481B44F445DEDE353172D23E4C71CA3EC0F3FC1861DFFE9FD7FDE41B616A8540000, N'6.1.0-30225')
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

INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (2, N'Harry Potter and The Philosophers Stone', 12.9900, 1, N'J.K.Rowling', 1, N'f9745f7e-0c99-46a6-9ca3-69a6d1544b60.jpg', N'Rescued from the outrageous neglect of his aunt and uncle, a young boy with a great destiny proves his worth while attending Hogwarts School for Witchcraft and Wizardry')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (5, N'Harry Potter and the Chamber of Secrets', 12.9900, 1, N'J.K.Rowling', 1, N'45cfd99a-f165-414f-8ffc-c7f290cc1655.jpg', N'About to enter his second year at Hogwarts School of Witchcraft and Wizardry, Harry Potter is visited by a house-elf named Dobby and warned not to return. Harry ignores his warning and returns to Hogwarts, where strange things begin to happen, as people are becoming petrified, Harry hears a voice which seems to be coming from within the walls, and Harry''s newly-discovered and unsettling ability to communicate with snakes turns even his friends against him.')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (16, N'Harry Potter and the Prizoner of Azkaban', 12.9900, 2, N'J.K.Rowling', 1, N'1dfb106a-9006-490b-97a1-a9d0920b7827.jpg', N'During his third year at Hogwarts School for Witchcraft and Wizardry, Harry Potter must confront the devious and dangerous wizard responsible for his parents'' deaths.')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (17, N'Harry Potter and the Goblet of Fire', 12.9900, 1, N'J.K.Rowling', 1, N'19b69ff6-6b36-42e8-a641-a8ab3d0705d8.jpg', N'Harry''s fourth year at Hogwarts is marked by the Quidditch World Cup and the Triwizard Tournament, in which student representatives from three different wizarding schools compete in a series of increasingly challenging contests. However, Voldemort''s Death Eaters are gaining strength and create the Dark Mark - giving evidence that the Dark Lord is ready to rise again. In the unsuspecting lives of the students at Hogwarts, the competitors are selected by the goblet of fire, which this year makes a very surprising announcement: Hogwarts will have two representatives in the tournament, including Harry. Now Harry has to rise to the challenge for the Triwizard Tournament while keeping up with school.')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (18, N'Harry Potter and the Order of the Pheonix', 12.9900, 1, N'J.K.Rowling', 1, N'8f18200a-ed97-43ff-b306-dfd8aa7e9509.jpg', N'There is a door at the end of a silent corridor. And it is haunting Harry Potter''s dreams. Why else would he be waking in the middle of the night, screaming in terror? Here are just a few things on Harry''s mind: A Defense Against The Dark Arts teacher with a personality like poisoned honey. A venomous, disgruntled house-elf. Ron as keeper of The Gryffindor Quidditch team. The looming terror of the end-of-term Ordinary Wizarding Level exams. And of course, the growing threat of He-Who-Must-Not-Be-Named. In the richest installment yet of J.K. Rowling''s seven-part story, Harry Potter is faced with the unreliability of the very government of the magical world and the impotence of the authorities at Hogwarts. Despite this (or perhaps because of it), he finds depth and strength in his friends, beyond what even he knew; boundless loyalty; and unbearable sacrifice. -- Container.')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (19, N'Harry Potter and the Half Blood Prince', 12.9900, 1, N'J.K.Rowling', 1, N'914008c4-6fce-400f-bc1b-5c6f193c9687.jpg', N'Sixth-year Hogwarts student Harry Potter gains valuable insights into the boy Voldemort once was, even as his own world is transformed by maturing friendships, schoolwork assistance from an unexpected source, and devastating losses.')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (20, N'Harry Potter and the Deathly Hallows', 12.9900, 1, N'J.K.Rowling', 1, N'f8ea0b3b-090f-46ce-953a-96825f313f3e.jpg', N'Burdened with the dark, dangerous, and seemingly impossible task of locating and destroying Voldemort''s remaining Horcruxes, Harry, feeling alone and uncertain about his future, struggles to find the inner strength he needs to follow the path set out before him.')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (21, N'Scarf', 19.9900, 1, NULL, 2, N'635b0d47-a847-473f-a069-107d9da6189e.jpg', N'Scarf with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (22, N'Sock Hat', 19.9900, 2, NULL, 2, N'409ac5d2-aa83-463a-a946-82ad4aef3b83.jpg', N'Sock hat with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (23, N'Shirt', 19.9900, 1, NULL, 2, N'b59c7cf0-fbd5-4bc4-82e3-42738014a427.jpg', N'T-shirt with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (24, N'School Cloak', 29.9900, 1, NULL, 2, N'22154ac6-5fa0-4ceb-80f1-b60de63c2511.jpeg', N'School cloak with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (25, N'Coffee Mug', 12.9900, 1, NULL, 3, N'5442b5cd-29c3-42e6-8552-8c827f7e65a8.jpg', N'Coffee mug with the Hogwarts School of Witchcraft and Wizardry House Crest')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (26, N'Wand', 19.9900, 1, NULL, 3, N'185812ba-cb8c-4272-97ba-49774f55307b.jpg', N'Witch/Wizard Wand')
INSERT [dbo].[Items] ([ItemID], [ItemName], [Price], [StatusID], [Author], [CategoryID], [ItemImage], [Description]) VALUES (27, N'Tapestry', 29.9900, 2, NULL, 3, N'78dcfc20-0e0f-4a1e-800b-05b80572a2fc.jpg', N'Tapestry with the Hogwarts School of Witchcraft and Wizardry House Crest')
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([PostitionID], [PositionName]) VALUES (1, N'Owner')
INSERT [dbo].[Positions] ([PostitionID], [PositionName]) VALUES (2, N'ProductManager')
INSERT [dbo].[Positions] ([PostitionID], [PositionName]) VALUES (3, N'Sales')
SET IDENTITY_INSERT [dbo].[Positions] OFF
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (1, N'InStock')
INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (2, N'OutOfStock')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Departments]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Departments]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Employees]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([DirectReportID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Employees]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Positions]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Positions] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Positions] ([PostitionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Positions]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Positions]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Items_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Items_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Items_Statuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Statuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Statuses] ([StatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Items_Statuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Statuses]
GO
