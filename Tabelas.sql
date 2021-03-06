USE [Talentos]
GO
/****** Object:  Table [dbo].[Campos]    Script Date: 09/04/2017 17:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Campos](
	[id_Campo] [tinyint] IDENTITY(1,1) NOT NULL,
	[Campo] [varchar](250) NULL,
	[classe] [varchar](20) NULL,
	[Obrigatorio] [bit] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id_Campo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidato_Campos]    Script Date: 09/04/2017 17:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidato_Campos](
	[id_Candidato_Campos] [int] IDENTITY(1,1) NOT NULL,
	[id_Candidato] [int] NOT NULL,
	[id_Campo] [tinyint] NOT NULL,
	[Resposta] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Candidato_Campos] PRIMARY KEY CLUSTERED 
(
	[id_Candidato_Campos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidatos]    Script Date: 09/04/2017 17:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidatos](
	[id_Candidato] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [char](14) NULL,
	[Nome] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Candidatos] PRIMARY KEY CLUSTERED 
(
	[id_Candidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidatos_Respostas]    Script Date: 09/04/2017 17:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidatos_Respostas](
	[id_Candidato_Resposta] [int] IDENTITY(1,1) NOT NULL,
	[id_Candidato] [int] NOT NULL,
	[id_Reposta] [smallint] NULL,
	[Checked] [bit] NULL,
 CONSTRAINT [PK_Candidatos_Respostas] PRIMARY KEY CLUSTERED 
(
	[id_Candidato_Resposta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 09/04/2017 17:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formularios](
	[id_Formulario] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](30) NULL,
 CONSTRAINT [PK_Formularios] PRIMARY KEY CLUSTERED 
(
	[id_Formulario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formularios_Campos_Perguntas]    Script Date: 09/04/2017 17:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formularios_Campos_Perguntas](
	[id_Formulario_Campo_Resposta] [int] IDENTITY(1,1) NOT NULL,
	[id_Formulario] [tinyint] NOT NULL,
	[id_Campo] [tinyint] NULL,
	[id_Pergunta] [tinyint] NULL,
	[Ordem] [tinyint] NOT NULL,
 CONSTRAINT [PK_Formularios_Campos_Perguntas] PRIMARY KEY CLUSTERED 
(
	[id_Formulario_Campo_Resposta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Perguntas]    Script Date: 09/04/2017 17:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perguntas](
	[id_Pergunta] [tinyint] IDENTITY(1,1) NOT NULL,
	[Pergunta] [varchar](200) NULL,
	[Tipo] [tinyint] NULL,
	[Exibicao] [tinyint] NULL,
	[Obrigatorio] [bit] NULL,
 CONSTRAINT [PK_Perguntas] PRIMARY KEY CLUSTERED 
(
	[id_Pergunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Respostas]    Script Date: 09/04/2017 17:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Respostas](
	[id_Resposta] [smallint] IDENTITY(1,1) NOT NULL,
	[Resposta] [varchar](200) NULL,
	[id_Pergunta] [tinyint] NULL,
 CONSTRAINT [PK_Respostas] PRIMARY KEY CLUSTERED 
(
	[id_Resposta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Candidato_Campos]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Campos_Campos] FOREIGN KEY([id_Campo])
REFERENCES [dbo].[Campos] ([id_Campo])
GO
ALTER TABLE [dbo].[Candidato_Campos] CHECK CONSTRAINT [FK_Candidato_Campos_Campos]
GO
ALTER TABLE [dbo].[Candidato_Campos]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Campos_Candidatos] FOREIGN KEY([id_Candidato])
REFERENCES [dbo].[Candidatos] ([id_Candidato])
GO
ALTER TABLE [dbo].[Candidato_Campos] CHECK CONSTRAINT [FK_Candidato_Campos_Candidatos]
GO
ALTER TABLE [dbo].[Candidatos_Respostas]  WITH CHECK ADD  CONSTRAINT [FK_Candidatos_Respostas_Candidatos] FOREIGN KEY([id_Candidato])
REFERENCES [dbo].[Candidatos] ([id_Candidato])
GO
ALTER TABLE [dbo].[Candidatos_Respostas] CHECK CONSTRAINT [FK_Candidatos_Respostas_Candidatos]
GO
ALTER TABLE [dbo].[Candidatos_Respostas]  WITH CHECK ADD  CONSTRAINT [FK_Candidatos_Respostas_Respostas] FOREIGN KEY([id_Reposta])
REFERENCES [dbo].[Respostas] ([id_Resposta])
GO
ALTER TABLE [dbo].[Candidatos_Respostas] CHECK CONSTRAINT [FK_Candidatos_Respostas_Respostas]
GO
ALTER TABLE [dbo].[Formularios_Campos_Perguntas]  WITH CHECK ADD  CONSTRAINT [FK_Formularios_Campos_Perguntas_Campos] FOREIGN KEY([id_Campo])
REFERENCES [dbo].[Campos] ([id_Campo])
GO
ALTER TABLE [dbo].[Formularios_Campos_Perguntas] CHECK CONSTRAINT [FK_Formularios_Campos_Perguntas_Campos]
GO
ALTER TABLE [dbo].[Formularios_Campos_Perguntas]  WITH CHECK ADD  CONSTRAINT [FK_Formularios_Campos_Perguntas_Formularios] FOREIGN KEY([id_Formulario])
REFERENCES [dbo].[Formularios] ([id_Formulario])
GO
ALTER TABLE [dbo].[Formularios_Campos_Perguntas] CHECK CONSTRAINT [FK_Formularios_Campos_Perguntas_Formularios]
GO
ALTER TABLE [dbo].[Formularios_Campos_Perguntas]  WITH CHECK ADD  CONSTRAINT [FK_Formularios_Campos_Perguntas_Perguntas] FOREIGN KEY([id_Pergunta])
REFERENCES [dbo].[Perguntas] ([id_Pergunta])
GO
ALTER TABLE [dbo].[Formularios_Campos_Perguntas] CHECK CONSTRAINT [FK_Formularios_Campos_Perguntas_Perguntas]
GO
ALTER TABLE [dbo].[Respostas]  WITH CHECK ADD  CONSTRAINT [FK_Respostas_Perguntas] FOREIGN KEY([id_Pergunta])
REFERENCES [dbo].[Perguntas] ([id_Pergunta])
GO
ALTER TABLE [dbo].[Respostas] CHECK CONSTRAINT [FK_Respostas_Perguntas]
GO
