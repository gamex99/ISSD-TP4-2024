crean la db TP4-2024 y ejecutan la siguiente query

USE [TP4-2024]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 16/4/2024 19:22:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([id], [username], [password]) VALUES (2, N'Facundo Nicolas', N'Paron')
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
