USE [master]
GO
/****** Object:  Database [MusicasDB]    Script Date: 16/11/2026 15:11:58 ******/
CREATE DATABASE [MusicasDB]
GO
USE [MusicasDB]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 16/11/2026 15:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[idAlbum] [uniqueidentifier] NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[duracaoTotal] [int] NOT NULL,
	[dataLancamento] [date] NULL,
	[imagemCapa] [varchar](max) NULL,
	[idArtista] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[idAlbum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artista]    Script Date: 16/11/2026 15:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artista](
	[idArtista] [uniqueidentifier] NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[biografia] [varchar](max) NULL,
	[imagemPerfil] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idArtista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Avaliacao]    Script Date: 16/11/2026 15:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avaliacao](
	[idAvaliacao] [uniqueidentifier] NOT NULL,
	[idUsuario] [uniqueidentifier] NOT NULL,
	[idMusica] [uniqueidentifier] NOT NULL,
	[nota] [float] NOT NULL,
	[comentario] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAvaliacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 16/11/2026 15:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[idGenero] [uniqueidentifier] NOT NULL,
	[nome] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musica]    Script Date: 16/11/2026 15:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musica](
	[idMusica] [uniqueidentifier] NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[duracao] [int] NOT NULL,
	[letra] [varchar](max) NULL,
	[imagemCapa] [varchar](max) NULL,
	[dataLancamento] [date] NULL,
	[idAlbum] [uniqueidentifier] NULL,
	[idArtista] [uniqueidentifier] NOT NULL,
	[idGenero] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMusica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 16/11/2026 15:11:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [uniqueidentifier] NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[senha] [varchar](255) NOT NULL,
	[tipoUsuario] [varchar](20) NOT NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Album] ([idAlbum], [nome], [duracaoTotal], [dataLancamento], [imagemCapa], [idArtista]) VALUES (N'109d8448-4c3d-4ec7-a1a6-4eecbfef766f', N'Até que o Céu Inunde a Terra', 60, CAST(N'2024-09-15' AS Date), N'capa_getworship.jpg', N'd56d89cc-d971-4e98-90e1-ffe330ae2c9a')
GO
INSERT [dbo].[Album] ([idAlbum], [nome], [duracaoTotal], [dataLancamento], [imagemCapa], [idArtista]) VALUES (N'0818736e-43ee-4dc2-bd1a-9db72c434657', N'Guloso Hits ??', 6767, CAST(N'6767-06-07' AS Date), NULL, N'eaf2c41c-734b-4fe6-ba41-d505a99d7b2c')
GO
INSERT [dbo].[Album] ([idAlbum], [nome], [duracaoTotal], [dataLancamento], [imagemCapa], [idArtista]) VALUES (N'11059cea-aa2d-4045-82c0-e36c4e4ceaea', N'Piseiro Bruto', 45, CAST(N'2025-05-10' AS Date), N'capa_piseiro.jpg', N'eaf2c41c-734b-4fe6-ba41-d505a99d7b2c')
GO
INSERT [dbo].[Album] ([idAlbum], [nome], [duracaoTotal], [dataLancamento], [imagemCapa], [idArtista]) VALUES (N'78df0de4-0cd3-4bfa-acca-f25b78b6dfb1', N'Portas', 40, CAST(N'2021-07-01' AS Date), N'capa_portas.jpg', N'211fee25-1df3-4d90-b24b-115f1384a8f3')
GO
INSERT [dbo].[Artista] ([idArtista], [nome], [biografia], [imagemPerfil]) VALUES (N'211fee25-1df3-4d90-b24b-115f1384a8f3', N'Marisa Monte', N'Marisa Monte (Marisa de Azevedo Monte) é uma cantora, compositora...', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj1fkE8L5HBukFXgkANAPl-yxNBYPH9GYvHhq2xy8LZw&s=10')
GO
INSERT [dbo].[Artista] ([idArtista], [nome], [biografia], [imagemPerfil]) VALUES (N'eaf2c41c-734b-4fe6-ba41-d505a99d7b2c', N'Filho do Piseiro', N'Everton da Silva de Souza, amplamente conhecido como Filho do Piseiro...', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC9R17w5388jIG8zU7LJMyiNlQI6Ipe6ND5JaZ_jeOQB9VgGqTHDGLzHw&s=10')
GO
INSERT [dbo].[Artista] ([idArtista], [nome], [biografia], [imagemPerfil]) VALUES (N'd56d89cc-d971-4e98-90e1-ffe330ae2c9a', N'Get Worship', N'O Get Worship é o ministério oficial de louvor da igreja Get Church Global...', N'https://media.hugogloss.uol.com.br/uploads/2026/04/Captura-de-Tela-2026-04-18-as-18.37.41.png')
GO
INSERT [dbo].[Avaliacao] ([idAvaliacao], [idUsuario], [idMusica], [nota], [comentario]) VALUES (N'c43c66d3-6bf1-434e-8fc6-8c7e75ee99a4', N'e2126271-47bb-4fa9-86fb-a6732282625c', N'5661de22-daf9-488a-a650-b830c1dd180d', 5, N'Simplesmente maravilhosa, a voz da Marisa é perfeita!')
GO
INSERT [dbo].[Avaliacao] ([idAvaliacao], [idUsuario], [idMusica], [nota], [comentario]) VALUES (N'deaf7b9f-bfe1-4476-ad1f-b4e4e452c0f7', N'20e13326-8f84-43db-a901-a74b7ea37899', N'df5f5c9a-fc05-48da-902c-29ba1d99b7b2', 4.5, N'Ritmo contagiante, muito bom para curtir!')
GO
INSERT [dbo].[Genero] ([idGenero], [nome]) VALUES (N'8074e0c8-20f2-46f0-b25d-a5a40da0f014', N'Forró')
GO
INSERT [dbo].[Genero] ([idGenero], [nome]) VALUES (N'f043c5f8-9e84-4863-a755-8cd408bc4818', N'Gospel')
GO
INSERT [dbo].[Genero] ([idGenero], [nome]) VALUES (N'3ae0c6f4-d1ae-4b42-8107-547e501b2c94', N'MPB')
GO
INSERT [dbo].[Genero] ([idGenero], [nome]) VALUES (N'51f57161-44dc-4bfb-b442-26992aa51c04', N'Rock')
GO
INSERT [dbo].[Genero] ([idGenero], [nome]) VALUES (N'34d5967d-7565-4d81-967e-fd561783cd10', N'Sertanejo')
GO
INSERT [dbo].[Musica] ([idMusica], [nome], [duracao], [letra], [imagemCapa], [dataLancamento], [idAlbum], [idArtista], [idGenero]) VALUES (N'df5f5c9a-fc05-48da-902c-29ba1d99b7b2', N'Boca de Médio Grave', 210, N'Letra da música do Piseiro...', N'capa_musica1.jpg', CAST(N'2025-05-10' AS Date), N'11059cea-aa2d-4045-82c0-e36c4e4ceaea', N'eaf2c41c-734b-4fe6-ba41-d505a99d7b2c', N'8074e0c8-20f2-46f0-b25d-a5a40da0f014')
GO
INSERT [dbo].[Musica] ([idMusica], [nome], [duracao], [letra], [imagemCapa], [dataLancamento], [idAlbum], [idArtista], [idGenero]) VALUES (N'e55b8640-76ab-4d15-9dfc-76c5470806c5', N'Tudo a Ver', 300, N'Letra da música de louvor...', N'capa_musica2.jpg', CAST(N'2024-09-15' AS Date), N'109d8448-4c3d-4ec7-a1a6-4eecbfef766f', N'd56d89cc-d971-4e98-90e1-ffe330ae2c9a', N'f043c5f8-9e84-4863-a755-8cd408bc4818')
GO
INSERT [dbo].[Musica] ([idMusica], [nome], [duracao], [letra], [imagemCapa], [dataLancamento], [idAlbum], [idArtista], [idGenero]) VALUES (N'5661de22-daf9-488a-a650-b830c1dd180d', N'Calma', 245, N'Você não tem que ser perfeita o tempo todo...', N'capa_musica3.jpg', CAST(N'2021-07-01' AS Date), N'78df0de4-0cd3-4bfa-acca-f25b78b6dfb1', N'211fee25-1df3-4d90-b24b-115f1384a8f3', N'3ae0c6f4-d1ae-4b42-8107-547e501b2c94')
GO
INSERT [dbo].[Usuario] ([idUsuario], [nome], [email], [senha], [tipoUsuario], [ativo]) VALUES (N'00bad77d-be49-4292-b41d-3fc67605fd1c', N'Bruno', N'Bruno@gmail.com', N'12345678', N'admin', 1)
GO
INSERT [dbo].[Usuario] ([idUsuario], [nome], [email], [senha], [tipoUsuario], [ativo]) VALUES (N'84d133cf-c8fb-4500-8870-48612c35cb33', N'teste', N'teste@gmail.com', N'$2a$11$aAi9yjQcakaF8mWw2dFS9eGBz2ohdCO/0.U7TnLTzWJeC0hcDa2Ya', N'admin', 1)
GO
INSERT [dbo].[Usuario] ([idUsuario], [nome], [email], [senha], [tipoUsuario], [ativo]) VALUES (N'e2126271-47bb-4fa9-86fb-a6732282625c', N'Laura', N'laura@email.com', N'DE34E933164963374C10B554833E4AB1BC844F337B63ED9028EDAAD92DD79F87', N'admin', 1)
GO
INSERT [dbo].[Usuario] ([idUsuario], [nome], [email], [senha], [tipoUsuario], [ativo]) VALUES (N'20e13326-8f84-43db-a901-a74b7ea37899', N'Luccas', N'luccas@email.com', N'D3D0F3265B849004314EDC7B23FD0957D044DC3BA75D58E9202F4555C9291F9D', N'usuario', 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Genero__6F71C0DC723D3D6C]    Script Date: 16/11/2026 15:11:58 ******/
ALTER TABLE [dbo].[Genero] ADD UNIQUE NONCLUSTERED 
(
	[nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuario__AB6E616405F9ECD6]    Script Date: 16/11/2026 15:11:58 ******/
ALTER TABLE [dbo].[Usuario] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Album] ADD  DEFAULT (newid()) FOR [idAlbum]
GO
ALTER TABLE [dbo].[Artista] ADD  DEFAULT (newid()) FOR [idArtista]
GO
ALTER TABLE [dbo].[Avaliacao] ADD  DEFAULT (newid()) FOR [idAvaliacao]
GO
ALTER TABLE [dbo].[Genero] ADD  DEFAULT (newid()) FOR [idGenero]
GO
ALTER TABLE [dbo].[Musica] ADD  DEFAULT (newid()) FOR [idMusica]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT (newid()) FOR [idUsuario]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD FOREIGN KEY([idArtista])
REFERENCES [dbo].[Artista] ([idArtista])
GO
ALTER TABLE [dbo].[Avaliacao]  WITH CHECK ADD FOREIGN KEY([idMusica])
REFERENCES [dbo].[Musica] ([idMusica])
GO
ALTER TABLE [dbo].[Avaliacao]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Musica]  WITH CHECK ADD FOREIGN KEY([idAlbum])
REFERENCES [dbo].[Album] ([idAlbum])
GO
ALTER TABLE [dbo].[Musica]  WITH CHECK ADD FOREIGN KEY([idArtista])
REFERENCES [dbo].[Artista] ([idArtista])
GO
ALTER TABLE [dbo].[Musica]  WITH CHECK ADD FOREIGN KEY([idGenero])
REFERENCES [dbo].[Genero] ([idGenero])
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD CHECK  (([duracaoTotal]>(0)))
GO
ALTER TABLE [dbo].[Avaliacao]  WITH CHECK ADD CHECK  (([nota]>=(0) AND [nota]<=(5)))
GO
ALTER TABLE [dbo].[Musica]  WITH CHECK ADD CHECK  (([duracao]>(0)))
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD CHECK  (([tipoUsuario]='usuario' OR [tipoUsuario]='admin'))
GO
USE [master]
GO
ALTER DATABASE [MusicasDB] SET  READ_WRITE 
GO
