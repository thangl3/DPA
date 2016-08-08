USE [PetsAdoption]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] NOT NULL,
	[roleName] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (2, N'user')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (3, N'sale')
/****** Object:  Table [dbo].[Product]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] NOT NULL,
	[productName] [varchar](100) NULL,
	[quantity] [int] NULL,
	[productType] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PetType]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetType](
	[petTypeID] [int] NOT NULL,
	[typeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PetType] PRIMARY KEY CLUSTERED 
(
	[petTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[memberID] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
	[age] [int] NULL,
	[address] [nvarchar](200) NULL,
	[position] [nvarchar](50) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[memberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([memberID], [name], [age], [address], [position]) VALUES (1, N'Le The Thang', 20, N'Da Nang', N'PM')
INSERT [dbo].[Member] ([memberID], [name], [age], [address], [position]) VALUES (2, N'Tran Linh Quan', 20, N'Kon Tum', N'PM')
INSERT [dbo].[Member] ([memberID], [name], [age], [address], [position]) VALUES (3, N'Nguyen Thi Ban', 22, N'Nghe An', N'PM')
INSERT [dbo].[Member] ([memberID], [name], [age], [address], [position]) VALUES (4, N'Tran Le Vu', 21, N'Quang Ngai', N'PM')
/****** Object:  Table [dbo].[Health]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Health](
	[healthID] [int] NOT NULL,
	[healthName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Health] PRIMARY KEY CLUSTERED 
(
	[healthID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[billID] [int] NOT NULL,
	[productID] [int] NULL,
	[quantity] [int] NULL,
	[dateBuy] [datetime] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[billID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](250) NULL,
	[email] [varchar](250) NULL,
	[memberID] [int] NULL,
	[roleID] [int] NULL,
	[dateCreate] [datetime] NULL,
	[dateExpires] [datetime] NULL,
	[avatar] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([username], [password], [email], [memberID], [roleID], [dateCreate], [dateExpires], [avatar]) VALUES (N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin@gmail.com', 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Account] ([username], [password], [email], [memberID], [roleID], [dateCreate], [dateExpires], [avatar]) VALUES (N'user', N'21232f297a57a5a743894a0e4a801fc3', N'user@gmail.com', 1, 2, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Donate]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Donate](
	[donateID] [int] NOT NULL,
	[username] [varchar](150) NULL,
	[dayDonate] [int] NULL,
	[monthDonate] [int] NULL,
	[yearDonate] [int] NULL,
	[quantity] [int] NULL,
	[note] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Donate] PRIMARY KEY CLUSTERED 
(
	[donateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sale](
	[username] [varchar](150) NOT NULL,
	[billID] [int] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[billID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pet]    Script Date: 08/08/2016 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pet](
	[petID] [int] NOT NULL,
	[petName] [varchar](50) NULL,
	[age] [int] NULL,
	[petTypeID] [int] NULL,
	[nickname] [nvarchar](50) NULL,
	[healthID] [int] NULL,
	[status] [int] NULL,
	[donateID] [int] NULL,
	[username] [varchar](150) NULL,
	[dayReceived] [int] NULL,
	[monthReceived] [int] NULL,
	[yearReceived] [int] NULL,
	[avatar] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Pet] PRIMARY KEY CLUSTERED 
(
	[petID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Pet] ([petID], [petName], [age], [petTypeID], [nickname], [healthID], [status], [donateID], [username], [dayReceived], [monthReceived], [yearReceived], [avatar]) VALUES (1, N'Chó', 5, NULL, N'KiO', NULL, 1, NULL, NULL, 8, 8, 2016, N'content/images/pet/cho.PNG')
/****** Object:  ForeignKey [FK_Account_Member]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Member] FOREIGN KEY([memberID])
REFERENCES [dbo].[Member] ([memberID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Member]
GO
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_Bill_Product]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Product]
GO
/****** Object:  ForeignKey [FK_Donate_Account]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD  CONSTRAINT [FK_Donate_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Donate] CHECK CONSTRAINT [FK_Donate_Account]
GO
/****** Object:  ForeignKey [FK_Pet_Account]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_Account]
GO
/****** Object:  ForeignKey [FK_Pet_Donate]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_Donate] FOREIGN KEY([donateID])
REFERENCES [dbo].[Donate] ([donateID])
GO
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_Donate]
GO
/****** Object:  ForeignKey [FK_Pet_Health]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_Health] FOREIGN KEY([healthID])
REFERENCES [dbo].[Health] ([healthID])
GO
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_Health]
GO
/****** Object:  ForeignKey [FK_Pet_PetType]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_PetType] FOREIGN KEY([petTypeID])
REFERENCES [dbo].[PetType] ([petTypeID])
GO
ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_PetType]
GO
/****** Object:  ForeignKey [FK_Sale_Account]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Account]
GO
/****** Object:  ForeignKey [FK_Sale_Bill]    Script Date: 08/08/2016 17:21:42 ******/
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Bill] FOREIGN KEY([billID])
REFERENCES [dbo].[Bill] ([billID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Bill]
GO
