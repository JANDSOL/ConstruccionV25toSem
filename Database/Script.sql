USE [SISTEMAEMPRESA]
go
/****** Object:  Table [dbo].[AUDCNTBCABC]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[AUDCNTBCABC](
	[IdAudCntbCabC] [int] IDENTITY(1,1) NOT NULL,
	[IdCntbRegCabeceraCont] [int] NULL,
	[UsuarioIngreso] [varchar](15) NULL,
	[FechaIngreso] [date] NULL,
	[AudUsuarioModificacion] [varchar](15) NULL,
	[AudFechaModificacion] [date] NULL,
	[AudNombreServidor] [varchar](80) NULL,
	[AudFecha] [date] NULL,
	[AudAccion] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAudCntbCabC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[AUDCNTBDETC]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[AUDCNTBDETC](
	[IdAudCntbDetC] [int] IDENTITY(1,1) NOT NULL,
	[IdCntbRegDetalleCont] [int] NULL,
	[UsuarioIngreso] [varchar](15) NULL,
	[FechaIngreso] [date] NULL,
	[AudUsuarioModificacion] [varchar](15) NULL,
	[AudFechaModificacion] [date] NULL,
	[AudNombreServidor] [varchar](80) NULL,
	[AudFecha] [date] NULL,
	[AudAccion] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAudCntbDetC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[AUDSEGOPERACION]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[AUDSEGOPERACION](
	[IdSegOperacion] [int] NULL,
	[IdSegModulo] [int] NULL,
	[detalle] [varchar](100) NULL,
	[estado] [varchar](1) NULL,
	[UsuarioIngreso] [varchar](100) NULL,
	[FechaIngreso] [date] NOT NULL,
	[AudUsuarioModificacion] [varchar](10) NULL,
	[AudFechaModificacion] [date] NOT NULL,
	[AudNombreServidor] [varchar](80) NULL,
	[AudFecha] [datetime] NOT NULL,
	[AudAccion] [varchar](20) NULL
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[AUDSEGUSUARIOSISTEMA]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[AUDSEGUSUARIOSISTEMA](
	[IdSegUsuarioSistema] [int] NULL,
	[IdSegDepartamento] [int] NULL,
	[IdSegRol] [int] NULL,
	[nombre] [varchar](100) NOT NULL,
	[apellido] [varchar](100) NOT NULL,
	[UsuarioSistema] [varchar](50) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[UsuarioIngreso] [varchar](10) NULL,
	[FechaIngreso] [date] NOT NULL,
	[AudUsuarioModificacion] [varchar](10) NULL,
	[AudFechaModificacion] [date] NOT NULL,
	[AudNombreServidor] [varchar](80) NULL,
	[AudFecha] [datetime] NOT NULL,
	[AudAccion] [varchar](20) NULL
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[CNTBPLANDECUENTA]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[CNTBPLANDECUENTA](
	[IdCntbPlanDeCuenta] [int] NOT NULL,
	[periodo] [smallint] NOT NULL,
	[detalle] [varchar](80) NOT NULL,
	[naturaleza] [varchar](10) NOT NULL,
	[estado] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCntbPlanDeCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[CNTBREGCABECERACONT]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[CNTBREGCABECERACONT](
	[IdCntbRegCabeceraCont] [int] NOT NULL,
	[periodo] [smallint] NOT NULL,
	[NombreLote] [varchar](100) NOT NULL,
	[TotalDebe] [decimal](7, 2) NULL,
	[TotalHaber] [decimal](7, 2) NULL,
	[EstadoContable] [varchar](1) NULL,
	[observacion] [varchar](200) NULL,
	[estado] [varchar](1) NULL,
	[UsuarioSistema] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCntbRegCabeceraCont] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[CNTBREGDETALLECONT]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[CNTBREGDETALLECONT](
	[IdCntbRegDetalleCont] [int] IDENTITY(1,1) NOT NULL,
	[periodo] [smallint] NOT NULL,
	[IdCntbRegCabeceraCont] [int] NULL,
	[SecuenciaDetalle] [int] NOT NULL,
	[IdCntbPlanDeCuenta] [int] NULL,
	[GlosaContable] [varchar](100) NOT NULL,
	[FechaContable] [date] NOT NULL,
	[afectacion] [varchar](1) NOT NULL,
	[monto] [decimal](7, 2) NOT NULL,
	[estado] [varchar](1) NULL,
	[UsuarioSistema] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCntbRegDetalleCont] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[CNTBSALDOCONTABLE]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[CNTBSALDOCONTABLE](
	[IdCntbSaldoContable] [int] IDENTITY(1,1) NOT NULL,
	[IdCntbRegDetalleCont] [int] NULL,
	[periodo] [smallint] NOT NULL,
	[NumeroLote] [int] NOT NULL,
	[CuentaContable] [int] NOT NULL,
	[SaldoContableDebe] [decimal](7, 2) NULL,
	[SaldoContableHaber] [decimal](7, 2) NULL,
	[estado] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCntbSaldoContable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[SEGDEPARTAMENTO]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[SEGDEPARTAMENTO](
	[IdSegDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[UsuarioIngreso] [varchar](10) NULL,
	[FechaIngreso] [date] NOT NULL,
	[UsuarioModificacion] [varchar](10) NULL,
	[FechaModificacion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSegDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[SEGMODULO]    Script Date: 10/03/2022 06:20:30 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[SEGMODULO](
	[IdSegModulo] [int] IDENTITY(1,1) NOT NULL,
	[detalle] [varchar](100) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[UsuarioIngreso] [varchar](10) NULL,
	[FechaIngreso] [date] NOT NULL,
	[UsuarioModificacion] [varchar](10) NULL,
	[FechaModificacion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSegModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[SEGOPERACION]    Script Date: 10/03/2022 06:20:31 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[SEGOPERACION](
	[IdSegOperacion] [int] IDENTITY(1,1) NOT NULL,
	[IdSegModulo] [int] NULL,
	[detalle] [varchar](100) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[UsuarioIngreso] [varchar](100) NULL,
	[FechaIngreso] [date] NOT NULL,
	[UsuarioModificacion] [varchar](100) NULL,
	[FechaModificacion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSegOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[SEGROL]    Script Date: 10/03/2022 06:20:31 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[SEGROL](
	[IdSegRol] [int] IDENTITY(1,1) NOT NULL,
	[detalle] [varchar](100) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[UsuarioIngreso] [varchar](10) NULL,
	[FechaIngreso] [date] NOT NULL,
	[UsuarioModificacion] [varchar](10) NULL,
	[FechaModificacion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSegRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[SEGROLOPERACION]    Script Date: 10/03/2022 06:20:31 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[SEGROLOPERACION](
	[IdSegRolOperacion] [int] IDENTITY(1,1) NOT NULL,
	[IdSegModulo] [int] NULL,
	[IdSegRol] [int] NULL,
	[IdSegOperacion] [int] NULL,
	[UsuarioIngreso] [varchar](10) NULL,
	[FechaIngreso] [date] NOT NULL,
	[UsuarioModificacion] [varchar](10) NULL,
	[FechaModificacion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSegRolOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
/****** Object:  Table [dbo].[SEGUSUARIOSISTEMA]    Script Date: 10/03/2022 06:20:31 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TABLE [dbo].[SEGUSUARIOSISTEMA](
	[IdSegUsuarioSistema] [int] IDENTITY(1,1) NOT NULL,
	[IdSegDepartamento] [int] NULL,
	[IdSegRol] [int] NULL,
	[nombre] [varchar](100) NOT NULL,
	[apellido] [varchar](100) NOT NULL,
	[UsuarioSistema] [varchar](50) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[UsuarioIngreso] [varchar](10) NULL,
	[FechaIngreso] [date] NOT NULL,
	[UsuarioModificacion] [varchar](10) NULL,
	[FechaModificacion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSegUsuarioSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
SET IDENTITY_INSERT [dbo].[AUDCNTBCABC] ON 
go
INSERT [dbo].[AUDCNTBCABC] ([IdAudCntbCabC], [IdCntbRegCabeceraCont], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (1, 20220001, N'jandrades', CAST(N'2022-03-10' AS Date), N'jandrades', CAST(N'2022-03-10' AS Date), N'JUAN-IS-COMPUTE', CAST(N'2022-03-10' AS Date), N'MODIFICADO')
go
SET IDENTITY_INSERT [dbo].[AUDCNTBCABC] OFF
go
SET IDENTITY_INSERT [dbo].[AUDCNTBDETC] ON 
go
INSERT [dbo].[AUDCNTBDETC] ([IdAudCntbDetC], [IdCntbRegDetalleCont], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (1, 1, N'jandrades', CAST(N'2022-03-10' AS Date), N'jandrades', CAST(N'2022-03-10' AS Date), N'JUAN-IS-COMPUTE', CAST(N'2022-03-10' AS Date), N'MODIFICADO')
go
INSERT [dbo].[AUDCNTBDETC] ([IdAudCntbDetC], [IdCntbRegDetalleCont], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (2, 2, N'lsoriag', CAST(N'2022-03-10' AS Date), N'NINGUNO', CAST(N'1959-09-19' AS Date), N'JUAN-IS-COMPUTE', CAST(N'2022-03-10' AS Date), N'INSERTADO')
go
INSERT [dbo].[AUDCNTBDETC] ([IdAudCntbDetC], [IdCntbRegDetalleCont], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (3, 3, N'msolorzano', CAST(N'2022-03-10' AS Date), N'NINGUNO', CAST(N'1959-09-19' AS Date), N'JUAN-IS-COMPUTE', CAST(N'2022-03-10' AS Date), N'INSERTADO')
go
INSERT [dbo].[AUDCNTBDETC] ([IdAudCntbDetC], [IdCntbRegDetalleCont], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (4, 4, N'nbritod', CAST(N'2022-03-10' AS Date), N'NINGUNO', CAST(N'1959-09-19' AS Date), N'JUAN-IS-COMPUTE', CAST(N'2022-03-10' AS Date), N'INSERTADO')
go
SET IDENTITY_INSERT [dbo].[AUDCNTBDETC] OFF
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (1, 1, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (2, 1, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (3, 1, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (4, 1, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (5, 1, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (6, 2, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (7, 2, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (8, 2, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (9, 2, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (10, 2, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (11, 3, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (12, 3, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (13, 3, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (14, 3, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (15, 3, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (16, 4, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (17, 4, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (18, 4, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (19, 4, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (20, 4, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (21, 5, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (22, 5, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (23, 5, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (24, 5, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (25, 5, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (26, 6, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (27, 6, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (28, 6, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (29, 6, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (30, 6, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (31, 7, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (32, 7, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (33, 7, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (34, 7, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (35, 7, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (1, 1, 1, N'VICTOR HUGO', N'CRUZ RUIZ', N'vcruzr', N'victor99', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (2, 1, 2, N'JUAN PABLO', N'ANDRADE SOLIS', N'jandrades', N'juan03', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (3, 1, 5, N'LUIS FERMANDO', N'SORIA GUARANGA', N'lsoriag', N'luis33', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (4, 1, 8, N'MARIA BELEN', N'SOLORZANO RIVAS', N'msolorzanor3', N'maria32', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (5, 1, 3, N'NOHELIA MISHELLE', N'BRITO DIAZ', N'nbritod', N'nohelia05', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (6, 1, 4, N'STALIN MANUEL', N'ESPINOZA CALLE', N'sespinozac', N'stalin08', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (7, 2, 2, N'JONNATHAN JOSE', N'REYES SALAZAR', N'jreyess', N'jonnathan2', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (8, 2, 5, N'JOSUE NICOLAS', N'COZZARELLI JIMENEZ', N'jcozzarellij', N'josue06', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (9, 2, 8, N'LUIS ALEXANDER', N'QUINTANILLA VERA', N'lquintanillav', N'luis24', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (10, 2, 3, N'LUIS DAVID', N'BONILLA REYES', N'lbonillar', N'luis04', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (11, 2, 6, N'RONNY JAVIER', N'PEÑARANDA BAJAÑA', N'rpenarandab', N'ronny19', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (12, 3, 2, N'ASHLEY BELEN', N'LOPEZ MUÑOZ', N'alopezm5', N'ashley15', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (13, 3, 5, N'KEVIN ALEXANDER', N' PAGUAY INLASACA', N'kpaguayi', N'kevin18', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (14, 3, 8, N'MILENA VALERIA', N'VALAREZO ARRIAGA', N'mvalarezoa', N'milena35', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (15, 3, 3, N'NAJARY AMARILIS', N'POSLIGUA GONZALEZ', N'nposliguag', N'najary22', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (16, 3, 4, N'VICTOR MANUEL', N'PONCE FLORES', N'vponcef2', N'victor21', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (17, 4, 2, N'KEVIN ADRIAN', N'ALLAUCA TACURI', N'kallaucat', N'kevin02', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (18, 4, 5, N'EVELYN GISSELE', N'PIZA PILOZO', N'epizap', N'evelyn20', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (19, 4, 8, N'SANDY BELEN', N'DIAZ OCAÑA', N'sdiazo', N'sandy07', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (20, 4, 3, N'SERGIO JAVIER', N'TORRES FRIAS', N'storresf3', N'sergio34', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (21, 4, 7, N'DALTON AMADO', N'QUITUI LUNA', N'dquitiul', N'dalton25', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (22, 4, 4, N'STEEVEN ALFONSO', N'OCEJO SANCHEZ', N'socejos', N'steeven17', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (23, 5, 2, N'ANGIE LORELY', N'SEPA CARDENAS', N'asepac', N'angie31', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (24, 5, 5, N'EDWIN IVAN', N'ROCHA LEON', N'erochal', N'edwin28', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (25, 5, 8, N'HELEN DEL ROCIO', N'SANTILLAN FRUTUOSO', N'hsantillanf', N'helen30', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (26, 5, 3, N'MARIA DEL CARMEN', N'RIZZO ESCOBAR', N'mrizzoe', N'maria27', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (27, 5, 6, N'RONNY ERICK', N'VARGAS ALEJANDRO', N'rvargasa2', N'ronny36', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (28, 6, 2, N'EVELYN ADAMARIS', N'GARCIA VELEZ', N'egarciav3', N'evelyn10', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (29, 6, 5, N'HEYMI LISETH', N'GONZALEZ MAYORGA', N'hgonzalezm', N'heymi11', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (30, 6, 8, N'JONATHAN STEVEN', N'LAVAYEN ROMERO', N'jlavayenr2', N'jonathan13', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (31, 6, 3, N'JOSE ENRIQUE', N'POVEDA LOPEZ', N'jpovedal', N'jose23', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (32, 6, 4, N'MARIA EUGENIA', N'LEON VERA', N'mleonv6', N'maria14', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (33, 7, 2, N'DANIELA MILENA', N'MORAN RAMIREZ', N'dmoranr2', N'daniela16', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (34, 7, 5, N'HOMAR GABRIEL', N'AGUIRRE IÑIGUEZ', N'haguirrei', N'homar01', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (35, 7, 8, N'JOSUE STEVEN', N'GALLEGOS SILVA', N'jgallegoss', N'josue09', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (36, 7, 3, N'KEVIN LUIS', N'RUIZ FAGUINZON', N'kruizf', N'kevin29', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[AUDSEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [AudUsuarioModificacion], [AudFechaModificacion], [AudNombreServidor], [AudFecha], [AudAccion]) VALUES (37, 7, 7, N'WALTER JAVIER', N'JARA MORAN', N'wjaram', N'walter12', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date), N'DESKTOP-79P0C5G', CAST(N'2022-02-24T00:00:00.000' AS DateTime), N'INSERTADO')
go
INSERT [dbo].[CNTBPLANDECUENTA] ([IdCntbPlanDeCuenta], [periodo], [detalle], [naturaleza], [estado]) VALUES (100, 2022, N'ACTIVO', N'DEUDORA', N'A')
go
INSERT [dbo].[CNTBPLANDECUENTA] ([IdCntbPlanDeCuenta], [periodo], [detalle], [naturaleza], [estado]) VALUES (200, 2022, N'PASIVO', N'ACREEDORA', N'A')
go
INSERT [dbo].[CNTBPLANDECUENTA] ([IdCntbPlanDeCuenta], [periodo], [detalle], [naturaleza], [estado]) VALUES (300, 2022, N'GASTOS', N'DEUDORA', N'A')
go
INSERT [dbo].[CNTBPLANDECUENTA] ([IdCntbPlanDeCuenta], [periodo], [detalle], [naturaleza], [estado]) VALUES (400, 2022, N'INGRESOS', N'ACREEDORA', N'A')
go
INSERT [dbo].[CNTBREGCABECERACONT] ([IdCntbRegCabeceraCont], [periodo], [NombreLote], [TotalDebe], [TotalHaber], [EstadoContable], [observacion], [estado], [UsuarioSistema]) VALUES (20220001, 2022, N'Compra productos de hogar', CAST(0.00 AS Decimal(7, 2)), CAST(0.00 AS Decimal(7, 2)), N'A', N'Registro de 1 comoda para dormitorio y 1 repisa multiuso para ropa.', N'A', N'jandrades')
go
SET IDENTITY_INSERT [dbo].[CNTBREGDETALLECONT] ON 
go
INSERT [dbo].[CNTBREGDETALLECONT] ([IdCntbRegDetalleCont], [periodo], [IdCntbRegCabeceraCont], [SecuenciaDetalle], [IdCntbPlanDeCuenta], [GlosaContable], [FechaContable], [afectacion], [monto], [estado], [UsuarioSistema]) VALUES (1, 2022, 20220001, 1, 100, N'Compra de 1 comoda para dormitorio.', CAST(N'2022-02-25' AS Date), N'D', CAST(275.00 AS Decimal(7, 2)), N'A', N'jandrades')
go
INSERT [dbo].[CNTBREGDETALLECONT] ([IdCntbRegDetalleCont], [periodo], [IdCntbRegCabeceraCont], [SecuenciaDetalle], [IdCntbPlanDeCuenta], [GlosaContable], [FechaContable], [afectacion], [monto], [estado], [UsuarioSistema]) VALUES (2, 2022, 20220001, 2, 100, N'Compra de 1 comoda para dormitorio.', CAST(N'2022-02-25' AS Date), N'H', CAST(275.00 AS Decimal(7, 2)), N'A', N'lsoriag')
go
INSERT [dbo].[CNTBREGDETALLECONT] ([IdCntbRegDetalleCont], [periodo], [IdCntbRegCabeceraCont], [SecuenciaDetalle], [IdCntbPlanDeCuenta], [GlosaContable], [FechaContable], [afectacion], [monto], [estado], [UsuarioSistema]) VALUES (3, 2022, 20220001, 3, 100, N'Compra de 1 repisa multiuso para ropa', CAST(N'2022-02-25' AS Date), N'H', CAST(300.00 AS Decimal(7, 2)), N'A', N'msolorzano')
go
INSERT [dbo].[CNTBREGDETALLECONT] ([IdCntbRegDetalleCont], [periodo], [IdCntbRegCabeceraCont], [SecuenciaDetalle], [IdCntbPlanDeCuenta], [GlosaContable], [FechaContable], [afectacion], [monto], [estado], [UsuarioSistema]) VALUES (4, 2022, 20220001, 4, 100, N'Compra de 1 repisa multiuso para ropa', CAST(N'2022-02-25' AS Date), N'D', CAST(300.00 AS Decimal(7, 2)), N'A', N'nbritod')
go
SET IDENTITY_INSERT [dbo].[CNTBREGDETALLECONT] OFF
go
SET IDENTITY_INSERT [dbo].[SEGDEPARTAMENTO] ON 
go
INSERT [dbo].[SEGDEPARTAMENTO] ([IdSegDepartamento], [nombre], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (1, N'CONTABILIDAD', N'A', N'mleonv6', CAST(N'2022-02-22' AS Date), N'mleonv6', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGDEPARTAMENTO] ([IdSegDepartamento], [nombre], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (2, N'CRM', N'A', N'mleonv6', CAST(N'2022-02-22' AS Date), N'mleonv6', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGDEPARTAMENTO] ([IdSegDepartamento], [nombre], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (3, N'COMPRAS', N'A', N'mleonv6', CAST(N'2022-02-22' AS Date), N'mleonv6', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGDEPARTAMENTO] ([IdSegDepartamento], [nombre], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (4, N'INVENTARIO', N'A', N'mleonv6', CAST(N'2022-02-22' AS Date), N'mleonv6', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGDEPARTAMENTO] ([IdSegDepartamento], [nombre], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (5, N'VENTAS', N'A', N'mleonv6', CAST(N'2022-02-22' AS Date), N'mleonv6', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGDEPARTAMENTO] ([IdSegDepartamento], [nombre], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (6, N'SEGURIDAD', N'A', N'mleonv6', CAST(N'2022-02-22' AS Date), N'mleonv6', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGDEPARTAMENTO] ([IdSegDepartamento], [nombre], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (7, N'NOMINA', N'A', N'mleonv6', CAST(N'2022-02-22' AS Date), N'mleonv6', CAST(N'2022-02-23' AS Date))
go
SET IDENTITY_INSERT [dbo].[SEGDEPARTAMENTO] OFF
go
SET IDENTITY_INSERT [dbo].[SEGMODULO] ON 
go
INSERT [dbo].[SEGMODULO] ([IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (1, N'CONTABILIDAD', N'A', N'jlavayenr2', CAST(N'2022-02-22' AS Date), N'jlavayenr2', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGMODULO] ([IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (2, N'CRM', N'A', N'jlavayenr2', CAST(N'2022-02-22' AS Date), N'jlavayenr2', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGMODULO] ([IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (3, N'COMPRAS', N'A', N'jlavayenr2', CAST(N'2022-02-22' AS Date), N'jlavayenr2', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGMODULO] ([IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (4, N'INVENTARIO', N'A', N'jlavayenr2', CAST(N'2022-02-22' AS Date), N'jlavayenr2', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGMODULO] ([IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (5, N'VENTAS', N'A', N'jlavayenr2', CAST(N'2022-02-22' AS Date), N'jlavayenr2', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGMODULO] ([IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (6, N'SEGURIDAD', N'A', N'jlavayenr2', CAST(N'2022-02-22' AS Date), N'jlavayenr2', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGMODULO] ([IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (7, N'NOMINA', N'A', N'jlavayenr2', CAST(N'2022-02-22' AS Date), N'jlavayenr2', CAST(N'2022-02-23' AS Date))
go
SET IDENTITY_INSERT [dbo].[SEGMODULO] OFF
go
SET IDENTITY_INSERT [dbo].[SEGOPERACION] ON 
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (1, 1, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (2, 1, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (3, 1, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (4, 1, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (5, 1, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (6, 2, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (7, 2, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (8, 2, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (9, 2, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (10, 2, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (11, 3, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (12, 3, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (13, 3, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (14, 3, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (15, 3, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (16, 4, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (17, 4, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (18, 4, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (19, 4, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (20, 4, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (21, 5, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (22, 5, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (23, 5, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (24, 5, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (25, 5, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (26, 6, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (27, 6, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (28, 6, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (29, 6, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (30, 6, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (31, 7, N'INGRESAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (32, 7, N'EDITAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (33, 7, N'MODIFICAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (34, 7, N'CONSULTAR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGOPERACION] ([IdSegOperacion], [IdSegModulo], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (35, 7, N'IMPRIMIR', N'A', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
SET IDENTITY_INSERT [dbo].[SEGOPERACION] OFF
go
SET IDENTITY_INSERT [dbo].[SEGROL] ON 
go
INSERT [dbo].[SEGROL] ([IdSegRol], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (1, N'ADMINISTRADOR DE SISTEMA', N'A', N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROL] ([IdSegRol], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (2, N'ADMINISTRADOR DE MODULO', N'A', N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROL] ([IdSegRol], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (3, N'DIGITADOR', N'A', N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROL] ([IdSegRol], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (4, N'ANALISTA', N'A', N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROL] ([IdSegRol], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (5, N'PASANTE', N'A', N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROL] ([IdSegRol], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (6, N'DISEÑADOR', N'A', N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROL] ([IdSegRol], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (7, N'ARQUITECTO', N'A', N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROL] ([IdSegRol], [detalle], [estado], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (8, N'SENIOR', N'A', N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
SET IDENTITY_INSERT [dbo].[SEGROL] OFF
go
SET IDENTITY_INSERT [dbo].[SEGROLOPERACION] ON 
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (1, 1, 1, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (2, 1, 1, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (3, 1, 1, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (4, 1, 1, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (5, 1, 1, 5, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (6, 1, 2, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (7, 1, 2, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (8, 1, 2, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (9, 1, 2, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (10, 1, 2, 5, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (11, 1, 3, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (12, 1, 4, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (13, 1, 4, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (14, 1, 4, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (15, 1, 4, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (16, 1, 5, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (17, 1, 8, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (18, 2, 2, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (19, 2, 2, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (20, 2, 2, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (21, 2, 2, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (22, 2, 2, 5, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (23, 2, 5, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (24, 2, 8, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (25, 2, 3, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (26, 2, 6, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (27, 3, 2, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (28, 3, 2, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (29, 3, 2, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (30, 3, 2, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (31, 3, 2, 5, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (32, 3, 5, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (33, 3, 8, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (34, 3, 3, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (35, 3, 4, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (36, 3, 4, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (37, 3, 4, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (38, 4, 2, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (39, 4, 2, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (40, 4, 2, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (41, 4, 2, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (42, 4, 2, 5, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (43, 4, 5, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (44, 4, 8, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (45, 4, 3, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (46, 4, 7, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (47, 4, 7, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (48, 4, 7, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (49, 4, 7, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (50, 4, 4, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (51, 4, 4, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (52, 4, 4, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (53, 5, 2, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (54, 5, 2, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (55, 5, 2, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (56, 5, 2, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (57, 5, 2, 5, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (58, 5, 4, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (59, 5, 4, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (60, 5, 4, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (61, 5, 8, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (62, 5, 3, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (63, 5, 6, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (64, 6, 2, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (65, 6, 2, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (66, 6, 2, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (67, 6, 2, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (68, 6, 2, 5, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (69, 6, 5, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (70, 6, 8, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (71, 6, 3, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (72, 6, 4, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (73, 6, 4, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (74, 6, 4, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (75, 7, 2, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (76, 7, 2, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (77, 7, 2, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (78, 7, 2, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (79, 7, 2, 5, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (80, 7, 5, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (81, 7, 8, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (82, 7, 3, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (83, 7, 7, 1, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (84, 7, 7, 2, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (85, 7, 7, 3, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGROLOPERACION] ([IdSegRolOperacion], [IdSegModulo], [IdSegRol], [IdSegOperacion], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (86, 7, 7, 4, N'egarciav3', CAST(N'2022-02-22' AS Date), N'egarciav3', CAST(N'2022-02-23' AS Date))
go
SET IDENTITY_INSERT [dbo].[SEGROLOPERACION] OFF
go
SET IDENTITY_INSERT [dbo].[SEGUSUARIOSISTEMA] ON 
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (1, 1, 1, N'VICTOR HUGO', N'CRUZ RUIZ', N'vcruzr', N'victor99', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (2, 1, 2, N'JUAN PABLO', N'ANDRADE SOLIS', N'jandrades', N'juan03', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (3, 1, 5, N'LUIS FERMANDO', N'SORIA GUARANGA', N'lsoriag', N'luis33', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (4, 1, 8, N'MARIA BELEN', N'SOLORZANO RIVAS', N'msolorzanor3', N'maria32', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (5, 1, 3, N'NOHELIA MISHELLE', N'BRITO DIAZ', N'nbritod', N'nohelia05', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (6, 1, 4, N'STALIN MANUEL', N'ESPINOZA CALLE', N'sespinozac', N'stalin08', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (7, 2, 2, N'JONNATHAN JOSE', N'REYES SALAZAR', N'jreyess', N'jonnathan26', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (8, 2, 5, N'JOSUE NICOLAS', N'COZZARELLI JIMENEZ', N'jcozzarellij', N'josue06', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (9, 2, 8, N'LUIS ALEXANDER', N'QUINTANILLA VERA', N'lquintanillav', N'luis24', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (10, 2, 3, N'LUIS DAVID', N'BONILLA REYES', N'lbonillar', N'luis04', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (11, 2, 6, N'RONNY JAVIER', N'PEÑARANDA BAJAÑA', N'rpenarandab', N'ronny19', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (12, 3, 2, N'ASHLEY BELEN', N'LOPEZ MUÑOZ', N'alopezm5', N'ashley15', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (13, 3, 5, N'KEVIN ALEXANDER', N' PAGUAY INLASACA', N'kpaguayi', N'kevin18', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (14, 3, 8, N'MILENA VALERIA', N'VALAREZO ARRIAGA', N'mvalarezoa', N'milena35', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (15, 3, 3, N'NAJARY AMARILIS', N'POSLIGUA GONZALEZ', N'nposliguag', N'najary22', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (16, 3, 4, N'VICTOR MANUEL', N'PONCE FLORES', N'vponcef2', N'victor21', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (17, 4, 2, N'KEVIN ADRIAN', N'ALLAUCA TACURI', N'kallaucat', N'kevin02', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (18, 4, 5, N'EVELYN GISSELE', N'PIZA PILOZO', N'epizap', N'evelyn20', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (19, 4, 8, N'SANDY BELEN', N'DIAZ OCAÑA', N'sdiazo', N'sandy07', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (20, 4, 3, N'SERGIO JAVIER', N'TORRES FRIAS', N'storresf3', N'sergio34', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (21, 4, 7, N'DALTON AMADO', N'QUITUI LUNA', N'dquitiul', N'dalton25', N'hgonzalezm', CAST(N'2022-02-22' AS Date), N'hgonzalezm', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (22, 4, 4, N'STEEVEN ALFONSO', N'OCEJO SANCHEZ', N'socejos', N'steeven17', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (23, 5, 2, N'ANGIE LORELY', N'SEPA CARDENAS', N'asepac', N'angie31', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (24, 5, 5, N'EDWIN IVAN', N'ROCHA LEON', N'erochal', N'edwin28', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (25, 5, 8, N'HELEN DEL ROCIO', N'SANTILLAN FRUTUOSO', N'hsantillanf', N'helen30', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (26, 5, 3, N'MARIA DEL CARMEN', N'RIZZO ESCOBAR', N'mrizzoe', N'maria27', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (27, 5, 6, N'RONNY ERICK', N'VARGAS ALEJANDRO', N'rvargasa2', N'ronny36', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (28, 6, 2, N'EVELYN ADAMARIS', N'GARCIA VELEZ', N'egarciav3', N'evelyn10', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (29, 6, 5, N'HEYMI LISETH', N'GONZALEZ MAYORGA', N'hgonzalezm', N'heymi11', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (30, 6, 8, N'JONATHAN STEVEN', N'LAVAYEN ROMERO', N'jlavayenr2', N'jonathan13', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (31, 6, 3, N'JOSE ENRIQUE', N'POVEDA LOPEZ', N'jpovedal', N'jose23', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (32, 6, 4, N'MARIA EUGENIA', N'LEON VERA', N'mleonv6', N'maria14', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (33, 7, 2, N'DANIELA MILENA', N'MORAN RAMIREZ', N'dmoranr2', N'daniela16', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (34, 7, 5, N'HOMAR GABRIEL', N'AGUIRRE IÑIGUEZ', N'haguirrei', N'homar01', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (35, 7, 8, N'JOSUE STEVEN', N'GALLEGOS SILVA', N'jgallegoss', N'josue09', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (36, 7, 3, N'KEVIN LUIS', N'RUIZ FAGUINZON', N'kruizf', N'kevin29', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
INSERT [dbo].[SEGUSUARIOSISTEMA] ([IdSegUsuarioSistema], [IdSegDepartamento], [IdSegRol], [nombre], [apellido], [UsuarioSistema], [clave], [UsuarioIngreso], [FechaIngreso], [UsuarioModificacion], [FechaModificacion]) VALUES (37, 7, 7, N'WALTER JAVIER', N'JARA MORAN', N'wjaram', N'walter12', N'jpovedal', CAST(N'2022-02-22' AS Date), N'jpovedal', CAST(N'2022-02-23' AS Date))
go
SET IDENTITY_INSERT [dbo].[SEGUSUARIOSISTEMA] OFF
go
ALTER TABLE [dbo].[AUDCNTBCABC] ADD  DEFAULT (getdate()) FOR [FechaIngreso]
go
ALTER TABLE [dbo].[AUDCNTBCABC] ADD  DEFAULT ('NINGUNO') FOR [AudUsuarioModificacion]
go
ALTER TABLE [dbo].[AUDCNTBCABC] ADD  DEFAULT ('1959/09/19 00:00:00.000') FOR [AudFechaModificacion]
go
ALTER TABLE [dbo].[AUDCNTBCABC] ADD  DEFAULT (getdate()) FOR [AudFecha]
go
ALTER TABLE [dbo].[AUDCNTBDETC] ADD  DEFAULT (getdate()) FOR [FechaIngreso]
go
ALTER TABLE [dbo].[AUDCNTBDETC] ADD  DEFAULT ('NINGUNO') FOR [AudUsuarioModificacion]
go
ALTER TABLE [dbo].[AUDCNTBDETC] ADD  DEFAULT ('1959/09/19 00:00:00.000') FOR [AudFechaModificacion]
go
ALTER TABLE [dbo].[AUDCNTBDETC] ADD  DEFAULT (getdate()) FOR [AudFecha]
go
ALTER TABLE [dbo].[CNTBPLANDECUENTA] ADD  DEFAULT ('A') FOR [estado]
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT] ADD  DEFAULT ((0.00)) FOR [TotalDebe]
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT] ADD  DEFAULT ((0.00)) FOR [TotalHaber]
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT] ADD  DEFAULT ('D') FOR [EstadoContable]
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT] ADD  DEFAULT ('A') FOR [estado]
go
ALTER TABLE [dbo].[CNTBREGDETALLECONT] ADD  DEFAULT ('A') FOR [estado]
go
ALTER TABLE [dbo].[CNTBSALDOCONTABLE] ADD  DEFAULT ((0.00)) FOR [SaldoContableDebe]
go
ALTER TABLE [dbo].[CNTBSALDOCONTABLE] ADD  DEFAULT ((0.00)) FOR [SaldoContableHaber]
go
ALTER TABLE [dbo].[CNTBSALDOCONTABLE] ADD  DEFAULT ('A') FOR [estado]
go
ALTER TABLE [dbo].[AUDCNTBCABC]  WITH CHECK ADD FOREIGN KEY([IdCntbRegCabeceraCont])
REFERENCES [dbo].[CNTBREGCABECERACONT] ([IdCntbRegCabeceraCont])
go
ALTER TABLE [dbo].[AUDCNTBDETC]  WITH CHECK ADD FOREIGN KEY([IdCntbRegDetalleCont])
REFERENCES [dbo].[CNTBREGDETALLECONT] ([IdCntbRegDetalleCont])
go
ALTER TABLE [dbo].[CNTBREGDETALLECONT]  WITH CHECK ADD FOREIGN KEY([IdCntbRegCabeceraCont])
REFERENCES [dbo].[CNTBREGCABECERACONT] ([IdCntbRegCabeceraCont])
go
ALTER TABLE [dbo].[CNTBREGDETALLECONT]  WITH CHECK ADD FOREIGN KEY([IdCntbPlanDeCuenta])
REFERENCES [dbo].[CNTBPLANDECUENTA] ([IdCntbPlanDeCuenta])
go
ALTER TABLE [dbo].[CNTBSALDOCONTABLE]  WITH CHECK ADD FOREIGN KEY([IdCntbRegDetalleCont])
REFERENCES [dbo].[CNTBREGDETALLECONT] ([IdCntbRegDetalleCont])
go
ALTER TABLE [dbo].[SEGOPERACION]  WITH CHECK ADD FOREIGN KEY([IdSegModulo])
REFERENCES [dbo].[SEGMODULO] ([IdSegModulo])
go
ALTER TABLE [dbo].[SEGROLOPERACION]  WITH CHECK ADD FOREIGN KEY([IdSegModulo])
REFERENCES [dbo].[SEGMODULO] ([IdSegModulo])
go
ALTER TABLE [dbo].[SEGROLOPERACION]  WITH CHECK ADD FOREIGN KEY([IdSegRol])
REFERENCES [dbo].[SEGROL] ([IdSegRol])
go
ALTER TABLE [dbo].[SEGROLOPERACION]  WITH CHECK ADD FOREIGN KEY([IdSegOperacion])
REFERENCES [dbo].[SEGOPERACION] ([IdSegOperacion])
go
ALTER TABLE [dbo].[SEGUSUARIOSISTEMA]  WITH CHECK ADD FOREIGN KEY([IdSegDepartamento])
REFERENCES [dbo].[SEGDEPARTAMENTO] ([IdSegDepartamento])
go
ALTER TABLE [dbo].[SEGUSUARIOSISTEMA]  WITH CHECK ADD FOREIGN KEY([IdSegRol])
REFERENCES [dbo].[SEGROL] ([IdSegRol])
go
ALTER TABLE [dbo].[CNTBPLANDECUENTA]  WITH CHECK ADD  CONSTRAINT [CHK_PLANCUENTA] CHECK  (([Naturaleza]='DEUDORA' OR [Naturaleza]='ACREEDORA'))
go
ALTER TABLE [dbo].[CNTBPLANDECUENTA] CHECK CONSTRAINT [CHK_PLANCUENTA]
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT]  WITH CHECK ADD  CONSTRAINT [CHK_CABECERAESTADO] CHECK  (([EstadoContable]='D' OR [EstadoContable]='A'))
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT] CHECK CONSTRAINT [CHK_CABECERAESTADO]
go
ALTER TABLE [dbo].[CNTBREGDETALLECONT]  WITH CHECK ADD  CONSTRAINT [CHK_DETALLEAFECTACION] CHECK  (([Afectacion]='D' OR [Afectacion]='H'))
go
ALTER TABLE [dbo].[CNTBREGDETALLECONT] CHECK CONSTRAINT [CHK_DETALLEAFECTACION]
go
/****** Object:  StoredProcedure [dbo].[STPR_CABECERACONTABLEAPROBADO_UPD]    Script Date: 10/03/2022 06:20:45 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

-- PROCEDIMIENTO ALMACENADO CABECERA CONTABLE UPDATE, DIGITADO -> APROBADO
CREATE PROCEDURE [dbo].[STPR_CABECERACONTABLEAPROBADO_UPD] @IiIdCntbRegCabeceraCont INT, @IvcUsuarioSistema VARCHAR(15)
AS
BEGIN TRANSACTION
BEGIN TRY
	DECLARE @LvcEstadoContable VARCHAR(1)
	SET @LvcEstadoContable = (SELECT EstadoContable FROM CNTBREGCABECERACONT
								WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont)
	SET @LvcEstadoContable = LTRIM(RTRIM(@LvcEstadoContable))
	-- COMPROBAR QUE LA CABECERA EXISTA
	IF NOT EXISTS (SELECT IdCntbRegCabeceraCont FROM CNTBREGCABECERACONT WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont)
	BEGIN
		PRINT 'La cabecera no existe!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	IF @LvcEstadoContable = 'D'
	BEGIN
		-- COMPROBAR SI EL USUARIO EXISTE
		IF NOT EXISTS (SELECT US.UsuarioSistema FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US WHERE US.UsuarioSistema = @IvcUsuarioSistema)
		BEGIN
			PRINT 'El usuario ingresado no existe!'
			RAISERROR ('Cortar Operacion.', 16, 1)
		END
		-- COMPROBAR SI EL USUARIO TIENE PERMISOS
		DECLARE @LiIdSegDepartamento INT, @LiIdSegRol INT
		SET @LiIdSegDepartamento = (SELECT US.IdSegDepartamento FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US
									WHERE US.UsuarioSistema = @IvcUsuarioSistema)
		SET @LiIdSegRol = (SELECT US.IdSegRol FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US
							WHERE US.UsuarioSistema = @IvcUsuarioSistema)
		IF NOT EXISTS (SELECT RO.IdSegOperacion FROM SISTEMAEMPRESA.dbo.SEGROLOPERACION RO
						WHERE @LiIdSegDepartamento = 1 AND RO.IdSegRol = @LiIdSegRol AND RO.IdSegOperacion = 3
						GROUP BY RO.IdSegOperacion)
		BEGIN
			PRINT 'El usuario ingresado no tiene permisos!'
			RAISERROR ('Cortar Operacion.', 16, 1)
		END
		UPDATE CNTBREGCABECERACONT
		SET EstadoContable = 'A', UsuarioSistema = @IvcUsuarioSistema
		WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont
	END
	ELSE
	BEGIN
		PRINT 'La cabecera ya se aprobo, no se puede modificar!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	PRINT 'Error al actualizar el estado contable de la cabecera!'
END CATCH
go
/****** Object:  StoredProcedure [dbo].[STPR_CABECERADEBHAB_UPD]    Script Date: 10/03/2022 06:20:45 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

-- PROCEDIMIENTO ALMACENADO CABECERA CONTABLE SUMA DEBE Y HABER UPDATE
CREATE PROCEDURE [dbo].[STPR_CABECERADEBHAB_UPD] @IiIdCntbRegCabeceraCont INT, @IvcUsuarioSistema VARCHAR(15)
AS
BEGIN TRANSACTION
BEGIN TRY
	DECLARE @LdcTotalDebe DECIMAL(7, 2), @LdcTotalHaber DECIMAL(7, 2)
	SET @LdcTotalDebe = (SELECT SUM(monto) FROM CNTBREGDETALLECONT
							WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont AND
							afectacion = 'D')
	SET @LdcTotalHaber = (SELECT SUM(monto) FROM CNTBREGDETALLECONT
							WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont AND
							afectacion = 'H')
	-- VALIDAR QUE EXISTA LA CABECERA
	IF @LdcTotalDebe IS NULL AND @LdcTotalHaber IS NULL
	BEGIN
		PRINT 'La cabecera no existe!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	-- VALIDAR QUE TENGAN VALORES <> 0
	IF @LdcTotalDebe = 0 AND @LdcTotalHaber = 0
	BEGIN
		PRINT 'Necesitas ingresar registros en el detalle contable para sumarlos!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	-- VALIDAR QUE SEAN IGUALES
	IF @LdcTotalDebe = @LdcTotalHaber
	BEGIN
		-- COMPROBAR SI EL USUARIO EXISTE
		IF NOT EXISTS (SELECT US.UsuarioSistema FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US WHERE US.UsuarioSistema = @IvcUsuarioSistema)
		BEGIN
			PRINT 'El usuario ingresado no existe!'
			RAISERROR ('Cortar Operacion.', 16, 1)
		END
		-- COMPROBAR SI EL USUARIO TIENE PERMISOS
		DECLARE @LiIdSegDepartamento INT, @LiIdSegRol INT
		SET @LiIdSegDepartamento = (SELECT US.IdSegDepartamento FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US
									WHERE US.UsuarioSistema = @IvcUsuarioSistema)
		SET @LiIdSegRol = (SELECT US.IdSegRol FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US
							WHERE US.UsuarioSistema = @IvcUsuarioSistema)
		IF NOT EXISTS (SELECT RO.IdSegOperacion FROM SISTEMAEMPRESA.dbo.SEGROLOPERACION RO
						WHERE @LiIdSegDepartamento = 1 GROUP BY RO.IdSegOperacion)
		BEGIN
			PRINT 'El usuario ingresado no tiene permisos!'
			RAISERROR ('Cortar Operacion.', 16, 1)
		END
		UPDATE CNTBREGCABECERACONT
		SET TotalDebe = @LdcTotalDebe, TotalHaber = @LdcTotalHaber, UsuarioSistema = @IvcUsuarioSistema
		WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont
	END
	ELSE
	BEGIN
		PRINT 'El total debe y el total haber no son iguales!'
		PRINT 'Total Debe: ' + CAST(@LdcTotalDebe AS VARCHAR(20))
		PRINT 'Total Haber: ' + CAST(@LdcTotalHaber AS VARCHAR(20))
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	PRINT 'Error al actualizar el total debe y el total haber de la cabecera contable!'
END CATCH
go
/****** Object:  StoredProcedure [dbo].[STPR_PLANDECUENTA_INS]    Script Date: 10/03/2022 06:20:45 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go


-- PROCEDIMIENTOS ALMACENADOS PLAN DE CUENTA INSERT
CREATE PROCEDURE [dbo].[STPR_PLANDECUENTA_INS] @IiIdCntbPlanDeCuenta INT, @IvcDetalle VARCHAR(80), @IvcNaturaleza VARCHAR(50)
AS
DECLARE @LsiPeriodo SMALLINT
SET @LsiPeriodo = (SELECT YEAR(GETDATE()))
SET @IvcNaturaleza = LTRIM(RTRIM(@IvcNaturaleza))
SET @IvcNaturaleza = UPPER(@IvcNaturaleza)
BEGIN TRANSACTION
BEGIN TRY
	IF EXISTS (SELECT IdCntbPlanDeCuenta FROM CNTBPLANDECUENTA WHERE IdCntbPlanDeCuenta = @IiIdCntbPlanDeCuenta)
	BEGIN
		PRINT 'Cuenta repetida!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	IF @IvcNaturaleza <> 'DEUDORA' AND @IvcNaturaleza <> 'ACREEDORA'
	BEGIN
		PRINT 'La naturaleza de la cuenta solo podra ser:'
		PRINT '    DEUDORA o ACREEDORA.'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	INSERT INTO CNTBPLANDECUENTA (IdCntbPlanDeCuenta, periodo, detalle, naturaleza)
	VALUES (@IiIdCntbPlanDeCuenta, @LsiPeriodo, @IvcDetalle, @IvcNaturaleza)
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	PRINT 'Error al insertar el plan de cuenta!'
END CATCH
go
/****** Object:  StoredProcedure [dbo].[STPR_REGCABECERACONT_INS]    Script Date: 10/03/2022 06:20:45 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

-- PROCEDIMIENTOS ALMACENADOS REGISTRO CABECERA CONTABLE INSERT
CREATE PROCEDURE [dbo].[STPR_REGCABECERACONT_INS] @IvcNombreLote VARCHAR(100), @IvcObservacion VARCHAR(200), @IvcUsuarioSistema VARCHAR(15)
AS
-- IdCntbRegCabeceraCont AUTOMATICO
DECLARE @LiAutoLote INT, @LiIdCntbRegCabeceraCont INT, @LsiPeriodo SMALLINT, @LiIdSegDepartamento INT, @LiIdSegRol INT
SET @LiIdCntbRegCabeceraCont = (SELECT MAX(IdCntbRegCabeceraCont) FROM CNTBREGCABECERACONT)
SET @LsiPeriodo = (SELECT YEAR(GETDATE()))
SET @IvcUsuarioSistema = LTRIM(RTRIM(@IvcUsuarioSistema))
IF @LiIdCntbRegCabeceraCont IS NOT NULL
BEGIN
	SET @LiAutoLote = (SELECT MAX(IdCntbRegCabeceraCont) FROM CNTBREGCABECERACONT) + 1
END
ELSE
BEGIN
	SET @LiAutoLote = CAST((SELECT CAST(YEAR(GETDATE()) AS VARCHAR(12))+'0001') AS INT)
END
BEGIN TRANSACTION
BEGIN TRY
	-- COMPROBAR SI EL USUARIO EXISTE
	IF NOT EXISTS (SELECT US.UsuarioSistema FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US WHERE US.UsuarioSistema = @IvcUsuarioSistema)
	BEGIN
		PRINT 'El usuario ingresado no existe!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	-- COMPROBAR SI EL USUARIO TIENE PERMISOS
	SET @LiIdSegDepartamento = (SELECT US.IdSegDepartamento FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US
								WHERE US.UsuarioSistema = @IvcUsuarioSistema)
	SET @LiIdSegRol = (SELECT US.IdSegRol FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US
						WHERE US.UsuarioSistema = @IvcUsuarioSistema)
	IF NOT EXISTS (SELECT RO.IdSegOperacion FROM SISTEMAEMPRESA.dbo.SEGROLOPERACION RO
					WHERE (@LiIdSegDepartamento = 1 OR @LiIdSegDepartamento = 3 OR @LiIdSegDepartamento = 5) AND
					RO.IdSegRol = @LiIdSegRol AND RO.IdSegOperacion = 1
					GROUP BY RO.IdSegOperacion)
	BEGIN
		PRINT 'El usuario ingresado no tiene permisos!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	-- INSERT TABLE
	INSERT INTO CNTBREGCABECERACONT (IdCntbRegCabeceraCont, periodo, NombreLote, observacion, UsuarioSistema)
	VALUES (@LiAutoLote, @LsiPeriodo, @IvcNombreLote, @IvcObservacion, @IvcUsuarioSistema)
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	PRINT 'Error al insertar el registro a la cabecera contable!'
END CATCH
go
/****** Object:  StoredProcedure [dbo].[STPR_REGDETALLECONT_INS]    Script Date: 10/03/2022 06:20:45 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

-- PROCEDIMIENTO ALMACENADO REGISTRO DETALLE CONTABLE INSERT
CREATE PROCEDURE [dbo].[STPR_REGDETALLECONT_INS] @IiIdCntbRegCabeceraCont INT, @IiIdCntbPlanDeCuenta INT,
											@IvcGlosaContable VARCHAR(100), @IdtFechaContable DATE,
											@IvcAfectacion VARCHAR(1), @IdcMonto DECIMAL(7, 2),
											@IvcUsuarioSistema VARCHAR(15)
AS
DECLARE @LsiPeriodo SMALLINT, @LvcEstadoContable VARCHAR(1)
SET @LsiPeriodo = (SELECT YEAR(GETDATE()))
SET @LvcEstadoContable = (SELECT EstadoContable FROM CNTBREGCABECERACONT
							WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont)
BEGIN TRANSACTION
BEGIN TRY
	-- AUTO SECUENCIA DETALLE
	DECLARE @LiAutoSecuencia INT, @LiSecuenciaDetalle INT
	SET @LiSecuenciaDetalle = (SELECT MAX(SecuenciaDetalle) FROM CNTBREGDETALLECONT
								WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont)
	IF @LiSecuenciaDetalle IS NOT NULL
	BEGIN
		SET @LiAutoSecuencia = (SELECT MAX(SecuenciaDetalle) FROM CNTBREGDETALLECONT
								WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont) + 1
	END
	ELSE
	BEGIN
		SET @LiAutoSecuencia = 1
	END
	-- CABECERA CONTABLE
	IF NOT EXISTS (SELECT IdCntbRegCabeceraCont FROM CNTBREGCABECERACONT WHERE IdCntbRegCabeceraCont = @IiIdCntbRegCabeceraCont)
	BEGIN
		PRINT 'La cabecera contable no existe!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	-- PLAN DE CUENTA
	IF NOT EXISTS (SELECT PC.IdCntbPlanDeCuenta FROM CNTBPLANDECUENTA PC
					WHERE PC.IdCntbPlanDeCuenta = @IiIdCntbPlanDeCuenta)
	BEGIN
		PRINT 'La cuenta contable no existe!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	-- AFECTACION
	SET @IvcAfectacion = LTRIM(RTRIM(@IvcAfectacion))
	SET @IvcAfectacion = UPPER(@IvcAfectacion)
	IF @IvcAfectacion <> 'D' AND @IvcAfectacion <> 'H'
	BEGIN
		PRINT 'La afectacion solo puede ser [D]Debe o [H]Haber!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	-- COMPROBAR SI EL USUARIO EXISTE
	IF NOT EXISTS (SELECT US.UsuarioSistema FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US WHERE US.UsuarioSistema = @IvcUsuarioSistema)
	BEGIN
		PRINT 'El usuario ingresado no existe!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	-- COMPROBAR SI EL USUARIO TIENE PERMISOS
	DECLARE @LiIdSegDepartamento INT, @LiIdSegRol INT
	SET @LiIdSegDepartamento = (SELECT US.IdSegDepartamento FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US
								WHERE US.UsuarioSistema = @IvcUsuarioSistema)
	SET @LiIdSegRol = (SELECT US.IdSegRol FROM SISTEMAEMPRESA.dbo.SEGUSUARIOSISTEMA US
						WHERE US.UsuarioSistema = @IvcUsuarioSistema)
	IF NOT EXISTS (SELECT RO.IdSegOperacion FROM SISTEMAEMPRESA.dbo.SEGROLOPERACION RO
					WHERE @LiIdSegDepartamento = 1 AND RO.IdSegRol = @LiIdSegRol AND RO.IdSegOperacion = 1
					GROUP BY RO.IdSegOperacion)
	BEGIN
		PRINT 'El usuario ingresado no tiene permisos!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	IF @LvcEstadoContable = 'D'
	BEGIN
		INSERT INTO CNTBREGDETALLECONT (periodo, IdCntbRegCabeceraCont, SecuenciaDetalle, IdCntbPlanDeCuenta,
										GlosaContable, FechaContable, afectacion, monto, UsuarioSistema)
		VALUES (@LsiPeriodo, @IiIdCntbRegCabeceraCont, @LiAutoSecuencia, @IiIdCntbPlanDeCuenta, @IvcGlosaContable,
				@IdtFechaContable, @IvcAfectacion, @IdcMonto, @IvcUsuarioSistema)
	END
	ELSE
	BEGIN
		PRINT 'La cabecera ya se aprobo, no se puede modificar!'
		RAISERROR ('Cortar Operacion.', 16, 1)
	END
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	PRINT 'Error al insertar el registro al detalle contable!'
END CATCH
go
/****** Object:  Trigger [dbo].[TRG_AUDCNTBCABC_INS]    Script Date: 10/03/2022 06:20:45 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go


-- TRIGGER AUDITORIA CABECERA
CREATE TRIGGER [dbo].[TRG_AUDCNTBCABC_INS]
ON [dbo].[CNTBREGCABECERACONT]
AFTER INSERT
AS
BEGIN
	DECLARE @LiIdCntbRegCabeceraCont INT, @LvcUsuarioIngreso VARCHAR(15), @LvcAudNombreServidor VARCHAR(80)
	SET @LiIdCntbRegCabeceraCont = (SELECT CC.IdCntbRegCabeceraCont FROM INSERTED CC)
	SET @LvcUsuarioIngreso = (SELECT CC.UsuarioSistema FROM INSERTED CC)
	SET @LvcAudNombreServidor = (SELECT CAST(SERVERPROPERTY('MachineName') AS VARCHAR(30)))
	INSERT INTO AUDCNTBCABC (IdCntbRegCabeceraCont, UsuarioIngreso, AudNombreServidor, AudAccion)
	VALUES (@LiIdCntbRegCabeceraCont, @LvcUsuarioIngreso, @LvcAudNombreServidor, 'INSERTADO')
END
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT] ENABLE TRIGGER [TRG_AUDCNTBCABC_INS]
go
/****** Object:  Trigger [dbo].[TRG_AUDCNTBCABC_UPD]    Script Date: 10/03/2022 06:21:33 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TRIGGER [dbo].[TRG_AUDCNTBCABC_UPD]
ON [dbo].[CNTBREGCABECERACONT]
AFTER UPDATE
AS
BEGIN
	DECLARE @LvcAudUsuarioModificacion VARCHAR(15), @LdtAudFechaModificacion DATE, @LvcAudNombreServidor VARCHAR(80),
			@LvcEstado VARCHAR(1), @LiIdCntbRegCabeceraCont INT
	SET @LvcAudUsuarioModificacion = (SELECT CC.UsuarioSistema FROM INSERTED CC)
	SET @LdtAudFechaModificacion = GETDATE()
	SET @LvcAudNombreServidor = (SELECT CAST(SERVERPROPERTY('MachineName') AS VARCHAR(30)))
	SET @LvcEstado = (SELECT CC.estado FROM INSERTED CC)
	SET @LvcEstado = LTRIM(RTRIM(@LvcEstado))
	SET @LiIdCntbRegCabeceraCont = (SELECT cc.IdCntbRegCabeceraCont FROM INSERTED cc)
	IF @LvcEstado = 'A'
	BEGIN
		UPDATE AUDCNTBCABC
		SET AudUsuarioModificacion = @LvcAudUsuarioModificacion, AudFechaModificacion = @LdtAudFechaModificacion,
		AudNombreServidor = @LvcAudNombreServidor, AudAccion = 'MODIFICADO'
		WHERE IdCntbRegCabeceraCont = @LiIdCntbRegCabeceraCont
	END
	ELSE
	BEGIN
		UPDATE AUDCNTBCABC
		SET AudUsuarioModificacion = @LvcAudUsuarioModificacion, AudFechaModificacion = @LdtAudFechaModificacion,
		AudNombreServidor = @LvcAudNombreServidor, AudAccion = 'ELIMINADO'
		WHERE IdCntbRegCabeceraCont = @LiIdCntbRegCabeceraCont
	END
END
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT] ENABLE TRIGGER [TRG_AUDCNTBCABC_UPD]
go
/****** Object:  Trigger [dbo].[TRG_SALDOCONTABLE_INS]    Script Date: 10/03/2022 06:22:14 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go

-- TRIGGER INSERT SALDO CONTABLE
CREATE TRIGGER [dbo].[TRG_SALDOCONTABLE_INS]
ON [dbo].[CNTBREGCABECERACONT]
AFTER UPDATE
AS
BEGIN
	DECLARE @LiIdCntbRegDetalleCont INT, @LsiPeriodo SMALLINT, @LiIdCntbRegCabeceraCont INT,
			@LiIdCntbPlanDeCuenta INT, @LdcMonto DECIMAL(7, 2), @LvcAfectacion VARCHAR(1),
			@LvcEstadoContable VARCHAR(1)

	SET @LvcEstadoContable = (SELECT CC.EstadoContable FROM INSERTED CC)
	SET @LvcEstadoContable = LTRIM(RTRIM(@LvcEstadoContable))
	IF @LvcEstadoContable = 'A' AND NOT EXISTS (SELECT * FROM CNTBSALDOCONTABLE
												WHERE NumeroLote = (SELECT CC.IdCntbRegCabeceraCont FROM INSERTED CC))
	BEGIN
		SET @LiIdCntbRegCabeceraCont = (SELECT CC.IdCntbRegCabeceraCont FROM INSERTED CC)
		DECLARE CRS_SALDOCONTABLE_INS CURSOR FOR
		SELECT IdCntbRegDetalleCont, periodo, IdCntbRegCabeceraCont,
			IdCntbPlanDeCuenta, afectacion, monto FROM CNTBREGDETALLECONT
		WHERE IdCntbRegCabeceraCont = @LiIdCntbRegCabeceraCont
		OPEN CRS_SALDOCONTABLE_INS
			FETCH NEXT FROM CRS_SALDOCONTABLE_INS INTO @LiIdCntbRegDetalleCont, @LsiPeriodo, @LiIdCntbRegCabeceraCont,
														@LiIdCntbPlanDeCuenta, @LvcAfectacion, @LdcMonto
			WHILE @@FETCH_STATUS = 0
			BEGIN
				IF @LvcAfectacion = 'D'
				BEGIN
					INSERT INTO CNTBSALDOCONTABLE (IdCntbRegDetalleCont, periodo, NumeroLote, CuentaContable, SaldoContableDebe)
					VALUES (@LiIdCntbRegDetalleCont, @LsiPeriodo, @LiIdCntbRegCabeceraCont, @LiIdCntbPlanDeCuenta, @LdcMonto)
				END
				ELSE
				BEGIN
					INSERT INTO CNTBSALDOCONTABLE (IdCntbRegDetalleCont, periodo, NumeroLote, CuentaContable, SaldoContableHaber)
					VALUES (@LiIdCntbRegDetalleCont, @LsiPeriodo, @LiIdCntbRegCabeceraCont, @LiIdCntbPlanDeCuenta, @LdcMonto)
				END
				FETCH NEXT FROM CRS_SALDOCONTABLE_INS INTO @LiIdCntbRegDetalleCont, @LsiPeriodo, @LiIdCntbRegCabeceraCont,
															@LiIdCntbPlanDeCuenta, @LvcAfectacion, @LdcMonto
			END
		CLOSE CRS_SALDOCONTABLE_INS
		DEALLOCATE CRS_SALDOCONTABLE_INS
	END
END
go
ALTER TABLE [dbo].[CNTBREGCABECERACONT] ENABLE TRIGGER [TRG_SALDOCONTABLE_INS]
go
/****** Object:  Trigger [dbo].[TRG_AUDCNTBDETC_INS]    Script Date: 10/03/2022 06:22:56 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
-- TRIGGER AUDITORIA DETALLE
CREATE TRIGGER [dbo].[TRG_AUDCNTBDETC_INS]
ON [dbo].[CNTBREGDETALLECONT]
AFTER INSERT
AS
BEGIN
	DECLARE @LiIdCntbRegDetalleCont INT, @LvcUsuarioIngreso VARCHAR(15), @LvcAudNombreServidor VARCHAR(80)
	SET @LiIdCntbRegDetalleCont = (SELECT DC.IdCntbRegDetalleCont FROM INSERTED DC)
	SET @LvcUsuarioIngreso = (SELECT DC.UsuarioSistema FROM INSERTED DC)
	SET @LvcAudNombreServidor = (SELECT CAST(SERVERPROPERTY('MachineName') AS VARCHAR(30)))
	INSERT INTO AUDCNTBDETC (IdCntbRegDetalleCont, UsuarioIngreso, AudNombreServidor, AudAccion)
	VALUES (@LiIdCntbRegDetalleCont, @LvcUsuarioIngreso, @LvcAudNombreServidor, 'INSERTADO')
END
go
ALTER TABLE [dbo].[CNTBREGDETALLECONT] ENABLE TRIGGER [TRG_AUDCNTBDETC_INS]
go
/****** Object:  Trigger [dbo].[TRG_AUDCNTBDETC_UPD]    Script Date: 10/03/2022 06:23:08 p. m. ******/
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
go
CREATE TRIGGER [dbo].[TRG_AUDCNTBDETC_UPD]
ON [dbo].[CNTBREGDETALLECONT]
AFTER UPDATE
AS
BEGIN
	DECLARE @LvcAudUsuarioModificacion VARCHAR(15), @LdtAudFechaModificacion DATE, @LvcAudNombreServidor VARCHAR(80),
			@LvcEstado VARCHAR(1), @LiIdCntbRegDetalleCont INT
	SET @LvcAudUsuarioModificacion = (SELECT DC.UsuarioSistema FROM INSERTED DC)
	SET @LdtAudFechaModificacion = GETDATE()
	SET @LvcAudNombreServidor = (SELECT CAST(SERVERPROPERTY('MachineName') AS VARCHAR(30)))
	SET @LvcEstado = (SELECT DC.estado FROM INSERTED DC)
	SET @LvcEstado = LTRIM(RTRIM(@LvcEstado))
	SET @LiIdCntbRegDetalleCont = (SELECT DC.IdCntbRegDetalleCont FROM INSERTED DC)
	IF @LvcEstado = 'A'
	BEGIN
		UPDATE AUDCNTBDETC
		SET AudUsuarioModificacion = @LvcAudUsuarioModificacion, AudFechaModificacion = @LdtAudFechaModificacion,
		AudNombreServidor = @LvcAudNombreServidor, AudAccion = 'MODIFICADO'
		WHERE IdCntbRegDetalleCont = @LiIdCntbRegDetalleCont
	END
	ELSE
	BEGIN
		UPDATE AUDCNTBDETC
		SET AudUsuarioModificacion = @LvcAudUsuarioModificacion, AudFechaModificacion = @LdtAudFechaModificacion,
		AudNombreServidor = @LvcAudNombreServidor, AudAccion = 'ELIMINADO'
		WHERE IdCntbRegDetalleCont = @LiIdCntbRegDetalleCont
	END
END
go
ALTER TABLE [dbo].[CNTBREGDETALLECONT] ENABLE TRIGGER [TRG_AUDCNTBDETC_UPD]
go
