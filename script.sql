
use tyu
go
/****** Object:  Table [dbo].[Posetit]    Script Date: 13.04.23 10:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posetit](
	[Id_pos] [int] NOT NULL,
	[FIO] [nvarchar](50) NULL,
	[Login] [nvarchar](10) NULL,
	[Pass] [nchar](10) NULL,
	[Telephone] [nvarchar](20) NULL,
 CONSTRAINT [PK_Posetit] PRIMARY KEY CLUSTERED 
(
	[Id_pos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 13.04.23 10:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudnik](
	[ID_sotr] [int] NOT NULL,
	[Name_sotr] [nvarchar](50) NULL,
	[Dolzn] [nvarchar](50) NULL,
	[Login] [nvarchar](10) NULL,
	[Pass] [nvarchar](10) NULL,
 CONSTRAINT [PK_Sotrudnik] PRIMARY KEY CLUSTERED 
(
	[ID_sotr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zapisi]    Script Date: 13.04.23 10:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zapisi](
	[Id_zapis] [int] NOT NULL,
	[FIO] [nvarchar](50) NULL,
	[Name_usl] [nvarchar](50) NULL,
	[Data_z] [date] NULL,
	[Id_sotr] [int] NULL,
 CONSTRAINT [PK_Zapisi] PRIMARY KEY CLUSTERED 
(
	[Id_zapis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zayavky]    Script Date: 13.04.23 10:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zayavky](
	[Id_z] [int] NOT NULL,
	[Name_usl] [nvarchar](50) NULL,
	[Data_z] [date] NULL,
	[Vremya] [time](5) NULL,
	[Id_pos] [int] NULL,
	[ID_sotr] [int] NULL,
 CONSTRAINT [PK_Zayavky] PRIMARY KEY CLUSTERED 
(
	[Id_z] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Posetit] ([Id_pos], [FIO], [Login], [Pass], [Telephone]) VALUES (1, N'Непалова А.П.', N'Nep', N'Nep       ', N'799993')
INSERT [dbo].[Posetit] ([Id_pos], [FIO], [Login], [Pass], [Telephone]) VALUES (2, N'Валюев П.П.', N'VAl', N'VavAL     ', N'666655')
INSERT [dbo].[Posetit] ([Id_pos], [FIO], [Login], [Pass], [Telephone]) VALUES (3, N'Петрова А.А.', N'Petr', N'Petrew    ', N'987676')
INSERT [dbo].[Posetit] ([Id_pos], [FIO], [Login], [Pass], [Telephone]) VALUES (4, N'Минаева Р.Л.', N'MinA', N'Mifd      ', N'790990')
INSERT [dbo].[Posetit] ([Id_pos], [FIO], [Login], [Pass], [Telephone]) VALUES (5, N'Прохорова П.О.', N'Prox', N'Prox12    ', N'986565')
GO
INSERT [dbo].[Sotrudnik] ([ID_sotr], [Name_sotr], [Dolzn], [Login], [Pass]) VALUES (1, N'Бородина Н.Л.', N'Парикмахер', N'Borod2', N'Qwerty')
INSERT [dbo].[Sotrudnik] ([ID_sotr], [Name_sotr], [Dolzn], [Login], [Pass]) VALUES (2, N'Борзова П.Р.', N'Мастер по маникюру', N'Borz1', N'Qwerty')
INSERT [dbo].[Sotrudnik] ([ID_sotr], [Name_sotr], [Dolzn], [Login], [Pass]) VALUES (3, N'Алексеева Л.Д.', N'Бровист', N'Alexs12', N'Qwerty')
GO
INSERT [dbo].[Zapisi] ([Id_zapis], [FIO], [Name_usl], [Data_z], [Id_sotr]) VALUES (1, N'Непалова А.П.', N'Маникюр', CAST(N'2023-04-11' AS Date), 2)
INSERT [dbo].[Zapisi] ([Id_zapis], [FIO], [Name_usl], [Data_z], [Id_sotr]) VALUES (2, N'Валюев П.П.', N'Стрижка', CAST(N'2023-04-10' AS Date), 1)
INSERT [dbo].[Zapisi] ([Id_zapis], [FIO], [Name_usl], [Data_z], [Id_sotr]) VALUES (3, N'Петрова А.А.', N'Стрижка', CAST(N'2023-04-11' AS Date), 1)
INSERT [dbo].[Zapisi] ([Id_zapis], [FIO], [Name_usl], [Data_z], [Id_sotr]) VALUES (4, N'Минаева Р.Л.', N'Коррекция бровей', CAST(N'2023-04-12' AS Date), 3)
INSERT [dbo].[Zapisi] ([Id_zapis], [FIO], [Name_usl], [Data_z], [Id_sotr]) VALUES (5, N'Прохорова П.О.', N'Коррекция бровей', CAST(N'2023-04-12' AS Date), 3)
GO
INSERT [dbo].[Zayavky] ([Id_z], [Name_usl], [Data_z], [Vremya], [Id_pos], [ID_sotr]) VALUES (1, N'Стрижка', CAST(N'2023-04-10' AS Date), CAST(N'10:20:00' AS Time), 2, 1)
INSERT [dbo].[Zayavky] ([Id_z], [Name_usl], [Data_z], [Vremya], [Id_pos], [ID_sotr]) VALUES (2, N'Стрижка', CAST(N'2023-04-10' AS Date), CAST(N'10:40:00' AS Time), 3, 1)
INSERT [dbo].[Zayavky] ([Id_z], [Name_usl], [Data_z], [Vremya], [Id_pos], [ID_sotr]) VALUES (3, N'Коррекция бровей', CAST(N'2023-04-11' AS Date), CAST(N'12:00:00' AS Time), 5, 3)
INSERT [dbo].[Zayavky] ([Id_z], [Name_usl], [Data_z], [Vremya], [Id_pos], [ID_sotr]) VALUES (4, N'Коррекция бровей', CAST(N'2023-04-11' AS Date), CAST(N'12:30:00' AS Time), 4, 3)
INSERT [dbo].[Zayavky] ([Id_z], [Name_usl], [Data_z], [Vremya], [Id_pos], [ID_sotr]) VALUES (5, N'Маникюр', CAST(N'2023-04-12' AS Date), CAST(N'16:00:00' AS Time), 1, 2)
GO
ALTER TABLE [dbo].[Zapisi]  WITH CHECK ADD  CONSTRAINT [FK_Zapisi_Sotrudnik] FOREIGN KEY([Id_sotr])
REFERENCES [dbo].[Sotrudnik] ([ID_sotr])
GO
ALTER TABLE [dbo].[Zapisi] CHECK CONSTRAINT [FK_Zapisi_Sotrudnik]
GO
ALTER TABLE [dbo].[Zayavky]  WITH CHECK ADD  CONSTRAINT [FK_Zayavky_Posetit] FOREIGN KEY([Id_pos])
REFERENCES [dbo].[Posetit] ([Id_pos])
GO
ALTER TABLE [dbo].[Zayavky] CHECK CONSTRAINT [FK_Zayavky_Posetit]
GO
ALTER TABLE [dbo].[Zayavky]  WITH CHECK ADD  CONSTRAINT [FK_Zayavky_Sotrudnik] FOREIGN KEY([ID_sotr])
REFERENCES [dbo].[Sotrudnik] ([ID_sotr])
GO
ALTER TABLE [dbo].[Zayavky] CHECK CONSTRAINT [FK_Zayavky_Sotrudnik]
GO
