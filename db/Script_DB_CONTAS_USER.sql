USE [CONTA_USERS]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14/03/2021 11:22:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLog]    Script Date: 14/03/2021 11:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](max) NOT NULL,
	[DateTime] [datetime2](7) NOT NULL,
	[KeyValues] [nvarchar](max) NOT NULL,
	[OldValues] [nvarchar](max) NULL,
	[NewValues] [nvarchar](max) NOT NULL,
	[UsuarioId] [bigint] NOT NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enderecos]    Script Date: 14/03/2021 11:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enderecos](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idUsuario] [bigint] NOT NULL,
	[logradouro] [nvarchar](80) NOT NULL,
	[bairro] [nvarchar](80) NOT NULL,
	[localidade] [nvarchar](50) NOT NULL,
	[uf] [nvarchar](2) NOT NULL,
	[tipo] [nvarchar](20) NOT NULL,
	[numero] [nvarchar](5) NOT NULL,
	[complemento] [nvarchar](50) NULL,
	[cep] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Enderecos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 14/03/2021 11:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[senha] [nvarchar](50) NOT NULL,
	[dataCadastro] [datetime2](7) NOT NULL,
	[deletado] [nvarchar](1) NULL,
	[cpf] [nvarchar](13) NULL,
	[dataNascimento] [datetime2](7) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210312200915_Add-Usuarios', N'3.1.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210313172338_Alter-Usuario-Add-Endereco', N'3.1.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210313172920_Alter-Usuario', N'3.1.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210313173417_Alter-Endereco', N'3.1.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210313175621_Alter-Endereco_Cep', N'3.1.12')
GO
SET IDENTITY_INSERT [dbo].[Enderecos] ON 

INSERT [dbo].[Enderecos] ([id], [idUsuario], [logradouro], [bairro], [localidade], [uf], [tipo], [numero], [complemento], [cep]) VALUES (10, 4, N'Rua Aluísio Brasil', N'Petrópolis', N'Manaus', N'AM', N'RESIDENCIAL', N'08', N'', N'69063-480')
INSERT [dbo].[Enderecos] ([id], [idUsuario], [logradouro], [bairro], [localidade], [uf], [tipo], [numero], [complemento], [cep]) VALUES (11, 4, N'Rua Coronel Ferreira de Araújo', N'Petrópolis', N'Manaus', N'AM', N'COMERCIAL', N'09', N'Teste', N'69063-000')
INSERT [dbo].[Enderecos] ([id], [idUsuario], [logradouro], [bairro], [localidade], [uf], [tipo], [numero], [complemento], [cep]) VALUES (12, 5, N'Rua Danilo Corrêa', N'Petrópolis', N'Manaus', N'AM', N'COMERCIAL', N'96', N'', N'69063-400')
INSERT [dbo].[Enderecos] ([id], [idUsuario], [logradouro], [bairro], [localidade], [uf], [tipo], [numero], [complemento], [cep]) VALUES (13, 6, N'Rua Aluísio Brasil', N'Petrópolis', N'Manaus', N'AM', N'COMERCIAL', N'08', N'', N'69063-480')
SET IDENTITY_INSERT [dbo].[Enderecos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [nome], [email], [senha], [dataCadastro], [deletado], [cpf], [dataNascimento]) VALUES (4, N'Monique Myrria', N'moniquermyrria@gmail.com', N'123456', CAST(N'2021-03-13T17:57:56.4830000' AS DateTime2), N'N', N'', CAST(N'1985-10-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Usuarios] ([id], [nome], [email], [senha], [dataCadastro], [deletado], [cpf], [dataNascimento]) VALUES (5, N'Gabrille Maciel', N'gabrielle@gabrielle', N'789', CAST(N'2021-03-13T19:43:37.9560000' AS DateTime2), N'N', N'', CAST(N'1994-02-22T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Usuarios] ([id], [nome], [email], [senha], [dataCadastro], [deletado], [cpf], [dataNascimento]) VALUES (6, N'Christian Junior', N'christianmyrria@gmail.com', N'789', CAST(N'2021-03-13T22:01:29.8190000' AS DateTime2), N'N', N'', CAST(N'1995-08-22T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Enderecos] ADD  DEFAULT (N'') FOR [cep]
GO
ALTER TABLE [dbo].[Enderecos]  WITH CHECK ADD  CONSTRAINT [FK_Enderecos_Usuarios_idUsuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Enderecos] CHECK CONSTRAINT [FK_Enderecos_Usuarios_idUsuario]
GO
