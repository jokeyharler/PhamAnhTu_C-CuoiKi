USE [PhamPhongHaoDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2021 11:03:58 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/20/2021 11:03:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 6/20/2021 11:03:59 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'1', N'Cafe', N'Đây là thước')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'2', N'Nước Ngọt', N'Nước ngọt giải khát')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'3', N'Sinh tố', N'Sinh tố tổng hợp')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'1', N'Cafe Sữa', 15000, 1, N'https://media-cdn.tripadvisor.com/media/photo-s/0d/e0/7d/7d/cafe-s-a-da.jpg', N'Cafe sữa đậm đà', N'Còn hàng', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'2', N'Sting', 200000, 30, N'http://centremall.vn/Data/Sites/1/Product/733/sting-d%C3%A2u-pet-330ml.png', N'Nước giải khát cực ngon', N'Còn hàng', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'3', N'Sinh Tố Dâu', 100000, 10, N'https://i.vietgiaitri.com/2014/4/3/diem-hen-ly-tuong-ngay-he-tai-cuc-nuoc-da-ac45b2.jpg', N'Sinh tố thơm ngon, giải khát', N'Còn hàng', N'3')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'4', N'Trà Chanh', 50000, 5, N'https://img.lovepik.com/photo/50095/2743.jpg_wh860.jpg', N'Nước giải khát thơm ngon vị chanh', N'Còn hàng', N'2')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'5', N'Cafe Đen', 15000, 2, N'https://anhdepfree.com/wp-content/uploads/2019/07/hinh-anh-ly-cafe-dep-9.jpg', N'Nước giải khát thơm ngon vị chanh', N'Còn hàng', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'6', N'Capuccino', 130000, 50, N'https://chuphinhmonan.com/wp-content/uploads/2017/03/binggo-2.jpg', N'Thơm ngon, độc lạ', N'Còn hàng', N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'7', N'Sinh Tố Dừa', 40000, 2, NULL, NULL, NULL, N'3')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'0', N'hao123', N'hao123', N'Active')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'1', N'admin', N'admin', N'Active')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'6', N'tuan74', N'tuan74', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'8', N'hoang196', N'hoang196', N'Blocked')
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Product_Category]
GO
