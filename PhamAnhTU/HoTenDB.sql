USE [HoTenDB]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 06/15/2021 08:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'0', N'0', N'0', N'Active')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'1', N'admin', N'admin', N'Active')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'4', N'4', N'4', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'5', N'5', N'5', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'6', N'6', N'6', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'7', N'7', N'7', N'Blocked')
/****** Object:  Table [dbo].[Product]    Script Date: 06/15/2021 08:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitCost] [int] NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[CategoryID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'1', N'2', 2, 2, N'https://product.hstatic.net/1000230347/product/but_bi_thien_long_tl-027_fd2ed94624164e949898577f64580185.jpg', N'Đây là Bút Bi Thiên Long', N'Còn hàng', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'2', N'Bút Máy', 10000, 99, N'https://www.ozeo.vn/wp-content/uploads/2019/06/but-may-Pilot-V.jpg', N'Đây là Bút Máy', N'Còn hàng', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'3', N'Bút Chì B12', 2000, 200, N'https://vn-test-11.slatic.net/p/8aabf70bce877c96c8a352843d46cf22.jpg_360x360q90.jpg_.webp', N'Đây là Bút Chì B12', N'Còn hàng', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'4', N'Bút Màu Siêu Vip', 2500, 200, N'https://salt.tikicdn.com/cache/w444/ts/product/25/92/47/7f6a3e14d58119b668121fdaf842b60b.jpg', N'Đây là Bút Màu Siêu Vip', N'Còn hàng', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'5', N'Thướng kẻ 20cm', 20000, 9999, N'https://product.hstatic.net/1000362139/product/thuoc_20cm_tq_86b51bffc0e24d858736e3ca03166279.jpg', N'Đây là Thướng kẻ 20cm', N'Còn hàng', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'6', N'Thướng kẻ dẻo', 29999, 99, N'https://cf.shopee.vn/file/c9daed5f72e11482b65887301471f79c', N'Thướng kẻ dẻo', N'Còn hàng', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'7', N'Bút lông', 7000, 788, N'https://product.hstatic.net/1000230347/product/but_long_dau_thien_long_pm-09__1_.jpg', N'Bút Lông', N'Còn hàng', N'2')
/****** Object:  Table [dbo].[Category]    Script Date: 06/15/2021 08:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'1', N'Thước', N'Đây là thước')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'2', N'Bút', N'Đây là bút')
