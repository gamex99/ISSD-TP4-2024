base de datos: TP4-2024
query:

USE [TP4-2024]
GO
/****** Object:  Table [dbo].[UsuariosClase4]    Script Date: 17/4/2024 19:48:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosClase4](
	[nombre] [varchar](50) NOT NULL,
	[clave] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_UsuariosClase4] PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO