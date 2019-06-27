USE [BDRACKFORTE]
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 26/06/2019 11:08:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[idCat] [char](2) NOT NULL,
	[nombCat] [varchar](99) NULL,
	[detCat] [varchar](99) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 26/06/2019 11:08:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[idCliente] [char](10) NOT NULL,
	[idTienda] [char](2) NOT NULL,
	[idEmpleado] [char](10) NOT NULL,
	[nomCliente] [varchar](99) NULL,
	[apellCliente] [varchar](99) NULL,
	[distritoCli] [varchar](99) NULL,
	[direccionCli] [varchar](99) NULL,
	[refeDireccCli] [varchar](99) NULL,
	[telefonoCli] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 26/06/2019 11:08:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[idEmpleado] [char](10) NOT NULL,
	[idTienda] [char](2) NOT NULL,
	[nomEmpleado] [varchar](99) NULL,
	[apellEmpleado] [varchar](99) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INSTALACION]    Script Date: 26/06/2019 11:08:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INSTALACION](
	[idInstall] [int] IDENTITY(1,1) NOT NULL,
	[codInstall] [char](6) NOT NULL,
	[fecInstall] [date] NOT NULL,
	[idPro] [char](6) NOT NULL,
	[idEmpleado] [char](10) NOT NULL,
	[idCliente] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idInstall] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 26/06/2019 11:08:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[idInvent] [int] IDENTITY(1,1) NOT NULL,
	[codInvent] [char](6) NOT NULL,
	[idPro] [char](6) NOT NULL,
	[idTienda] [char](2) NOT NULL,
	[cantProducto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idInvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[METODOPAGO]    Script Date: 26/06/2019 11:08:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[METODOPAGO](
	[idMetPago] [char](2) NOT NULL,
	[detMetPago] [varchar](99) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMetPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 26/06/2019 11:08:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[idPro] [char](6) NOT NULL,
	[idCat] [char](2) NOT NULL,
	[detPro] [varchar](99) NULL,
	[garantia] [int] NULL,
	[precioPro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUPERVISOR]    Script Date: 26/06/2019 11:08:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUPERVISOR](
	[idSupervisor] [int] IDENTITY(1,1) NOT NULL,
	[codSupervisor] [char](10) NOT NULL,
	[idTienda] [char](2) NOT NULL,
	[nomSupervisor] [varchar](99) NULL,
	[apellSupervisor] [varchar](99) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSupervisor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIENDA]    Script Date: 26/06/2019 11:08:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIENDA](
	[idTienda] [char](2) NOT NULL,
	[nomTienda] [varchar](99) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOVENTA]    Script Date: 26/06/2019 11:08:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOVENTA](
	[idTipoVenta] [char](2) NOT NULL,
	[detTipoVenta] [varchar](99) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 26/06/2019 11:08:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[codVenta] [char](6) NOT NULL,
	[idCliente] [char](10) NOT NULL,
	[idPro] [char](6) NOT NULL,
	[idMetPago] [char](2) NOT NULL,
	[idTipoVenta] [char](2) NOT NULL,
	[canVenta] [int] NULL,
	[impVenta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CATEGORIA] ([idCat], [nombCat], [detCat]) VALUES (N'AR', N'Rack Articulado', N'Giro de 90 grados a cada lado')
INSERT [dbo].[CATEGORIA] ([idCat], [nombCat], [detCat]) VALUES (N'FI', N'Rack Fijo', N'Sin movimiento')
INSERT [dbo].[CATEGORIA] ([idCat], [nombCat], [detCat]) VALUES (N'MO', N'Rack Movil', N'Giro de 45 grados a cada lado')
INSERT [dbo].[CATEGORIA] ([idCat], [nombCat], [detCat]) VALUES (N'TE', N'Rack de Techo', N'Giro de 360 grados')
INSERT [dbo].[CLIENTE] ([idCliente], [idTienda], [idEmpleado], [nomCliente], [apellCliente], [distritoCli], [direccionCli], [refeDireccCli], [telefonoCli]) VALUES (N'12748374  ', N'LM', N'001604600 ', N'Lucero', N'Florez', N'Miraflorez', N'Kennedy 266', N'Parque Kennedy', 980789675)
INSERT [dbo].[CLIENTE] ([idCliente], [idTienda], [idEmpleado], [nomCliente], [apellCliente], [distritoCli], [direccionCli], [refeDireccCli], [telefonoCli]) VALUES (N'12954760  ', N'SU', N'46865429  ', N'Lyana', N'Sandoval', N'Ate', N'Cardos 144', N'Plaza Vea Circunvalación', 935423459)
INSERT [dbo].[CLIENTE] ([idCliente], [idTienda], [idEmpleado], [nomCliente], [apellCliente], [distritoCli], [direccionCli], [refeDireccCli], [telefonoCli]) VALUES (N'43146065  ', N'LM', N'12345678  ', N'Josep', N'Martinez', N'Ate', N'Castilla 194', N'AV. Huarochiri con Santander', 918366866)
INSERT [dbo].[CLIENTE] ([idCliente], [idTienda], [idEmpleado], [nomCliente], [apellCliente], [distritoCli], [direccionCli], [refeDireccCli], [telefonoCli]) VALUES (N'74859652  ', N'SU', N'46865429  ', N'Jennyfer', N'Gutierrez', N'Surquillo', N'Agenjos 133', N'AV. Angamos', 978654345)
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'0015005900', N'LM', N'Daniel', N'Gomez')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'001604600 ', N'LM', N'Wilmar', N'Valencia')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'001893688 ', N'LM', N'Myrian', N'Fernandez')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'12345678  ', N'LM', N'Maria', N'Perez')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'17348563  ', N'SU', N'Fernando', N'Zapata')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'18203845  ', N'SU', N'Anastacia', N'Perez')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'27394856  ', N'SU', N'Andres', N'Farfan')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'28947561  ', N'LM', N'Juliana', N'Arizmendi')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'46865429  ', N'SU', N'Bryan', N'Cumba')
INSERT [dbo].[EMPLEADO] ([idEmpleado], [idTienda], [nomEmpleado], [apellEmpleado]) VALUES (N'47856305  ', N'LM', N'Fernando', N'Diaz')
SET IDENTITY_INSERT [dbo].[INSTALACION] ON 

INSERT [dbo].[INSTALACION] ([idInstall], [codInstall], [fecInstall], [idPro], [idEmpleado], [idCliente]) VALUES (1, N'INT001', CAST(N'2019-06-20' AS Date), N'RM4060', N'001604600 ', N'43146065  ')
INSERT [dbo].[INSTALACION] ([idInstall], [codInstall], [fecInstall], [idPro], [idEmpleado], [idCliente]) VALUES (2, N'INT002', CAST(N'2019-06-20' AS Date), N'RM4060', N'001604600 ', N'74859652  ')
INSERT [dbo].[INSTALACION] ([idInstall], [codInstall], [fecInstall], [idPro], [idEmpleado], [idCliente]) VALUES (3, N'INT003', CAST(N'2019-06-20' AS Date), N'RA4060', N'46865429  ', N'12748374  ')
INSERT [dbo].[INSTALACION] ([idInstall], [codInstall], [fecInstall], [idPro], [idEmpleado], [idCliente]) VALUES (4, N'INT004', CAST(N'2019-06-20' AS Date), N'RT4060', N'46865429  ', N'12954760  ')
SET IDENTITY_INSERT [dbo].[INSTALACION] OFF
SET IDENTITY_INSERT [dbo].[INVENTARIO] ON 

INSERT [dbo].[INVENTARIO] ([idInvent], [codInvent], [idPro], [idTienda], [cantProducto]) VALUES (1, N'INV001', N'RF4060', N'LM', 115)
INSERT [dbo].[INVENTARIO] ([idInvent], [codInvent], [idPro], [idTienda], [cantProducto]) VALUES (2, N'INV002', N'RM4060', N'LM', 215)
INSERT [dbo].[INVENTARIO] ([idInvent], [codInvent], [idPro], [idTienda], [cantProducto]) VALUES (3, N'INV003', N'RA4060', N'LM', 15)
INSERT [dbo].[INVENTARIO] ([idInvent], [codInvent], [idPro], [idTienda], [cantProducto]) VALUES (4, N'INV004', N'RT4060', N'LM', 55)
SET IDENTITY_INSERT [dbo].[INVENTARIO] OFF
INSERT [dbo].[METODOPAGO] ([idMetPago], [detMetPago]) VALUES (N'EF', N'Efectivo')
INSERT [dbo].[METODOPAGO] ([idMetPago], [detMetPago]) VALUES (N'MC', N'MASTERCARD')
INSERT [dbo].[METODOPAGO] ([idMetPago], [detMetPago]) VALUES (N'VI', N'VISA')
INSERT [dbo].[PRODUCTO] ([idPro], [idCat], [detPro], [garantia], [precioPro]) VALUES (N'RA4060', N'AR', N'Rack articulado para TV de 40 a 60 pulgadas', 3, 169)
INSERT [dbo].[PRODUCTO] ([idPro], [idCat], [detPro], [garantia], [precioPro]) VALUES (N'RF4060', N'FI', N'Rack fijo para TV de 40 a 60 pulgadas', 3, 119)
INSERT [dbo].[PRODUCTO] ([idPro], [idCat], [detPro], [garantia], [precioPro]) VALUES (N'RM4060', N'MO', N'Rack movil para TV de 40 a 60 pulgadas', 3, 149)
INSERT [dbo].[PRODUCTO] ([idPro], [idCat], [detPro], [garantia], [precioPro]) VALUES (N'RT4060', N'TE', N'Rack de techo para TV de 40 a 60 pulgadas', 3, 169)
SET IDENTITY_INSERT [dbo].[SUPERVISOR] ON 

INSERT [dbo].[SUPERVISOR] ([idSupervisor], [codSupervisor], [idTienda], [nomSupervisor], [apellSupervisor]) VALUES (1, N'46926724  ', N'LM', N'Asael', N'Ramirez')
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [codSupervisor], [idTienda], [nomSupervisor], [apellSupervisor]) VALUES (2, N'46555202  ', N'SU', N'Melisa', N'Martinez')
SET IDENTITY_INSERT [dbo].[SUPERVISOR] OFF
INSERT [dbo].[TIENDA] ([idTienda], [nomTienda]) VALUES (N'LM', N'Rack Forte La Molina')
INSERT [dbo].[TIENDA] ([idTienda], [nomTienda]) VALUES (N'SU', N'Rack Forte Surco')
INSERT [dbo].[TIPOVENTA] ([idTipoVenta], [detTipoVenta]) VALUES (N'BO', N'Boleta de venta')
INSERT [dbo].[TIPOVENTA] ([idTipoVenta], [detTipoVenta]) VALUES (N'FA', N'Factura de venta')
SET IDENTITY_INSERT [dbo].[VENTA] ON 

INSERT [dbo].[VENTA] ([idVenta], [codVenta], [idCliente], [idPro], [idMetPago], [idTipoVenta], [canVenta], [impVenta]) VALUES (1, N'100001', N'43146065  ', N'RM4060', N'EF', N'BO', 2, 298)
INSERT [dbo].[VENTA] ([idVenta], [codVenta], [idCliente], [idPro], [idMetPago], [idTipoVenta], [canVenta], [impVenta]) VALUES (2, N'100002', N'74859652  ', N'RM4060', N'VI', N'BO', 4, 596)
INSERT [dbo].[VENTA] ([idVenta], [codVenta], [idCliente], [idPro], [idMetPago], [idTipoVenta], [canVenta], [impVenta]) VALUES (3, N'100003', N'12748374  ', N'RA4060', N'VI', N'BO', 1, 169)
INSERT [dbo].[VENTA] ([idVenta], [codVenta], [idCliente], [idPro], [idMetPago], [idTipoVenta], [canVenta], [impVenta]) VALUES (4, N'100004', N'12954760  ', N'RT4060', N'EF', N'FA', 2, 338)
SET IDENTITY_INSERT [dbo].[VENTA] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_INSTALACION_1]    Script Date: 26/06/2019 11:08:35 p. m. ******/
ALTER TABLE [dbo].[INSTALACION] ADD  CONSTRAINT [UN_INSTALACION_1] UNIQUE NONCLUSTERED 
(
	[codInstall] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_INVENTARIO_1]    Script Date: 26/06/2019 11:08:35 p. m. ******/
ALTER TABLE [dbo].[INVENTARIO] ADD  CONSTRAINT [UN_INVENTARIO_1] UNIQUE NONCLUSTERED 
(
	[codInvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_SUPERVISOR_1]    Script Date: 26/06/2019 11:08:35 p. m. ******/
ALTER TABLE [dbo].[SUPERVISOR] ADD  CONSTRAINT [UN_SUPERVISOR_1] UNIQUE NONCLUSTERED 
(
	[codSupervisor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_VENTA_1]    Script Date: 26/06/2019 11:08:35 p. m. ******/
ALTER TABLE [dbo].[VENTA] ADD  CONSTRAINT [UN_VENTA_1] UNIQUE NONCLUSTERED 
(
	[codVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[INSTALACION] ADD  CONSTRAINT [DF_INSTALACION_1]  DEFAULT (getdate()) FOR [fecInstall]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_1] FOREIGN KEY([idTienda])
REFERENCES [dbo].[TIENDA] ([idTienda])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_1]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_2] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_2]
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADO_1] FOREIGN KEY([idTienda])
REFERENCES [dbo].[TIENDA] ([idTienda])
GO
ALTER TABLE [dbo].[EMPLEADO] CHECK CONSTRAINT [FK_EMPLEADO_1]
GO
ALTER TABLE [dbo].[INSTALACION]  WITH CHECK ADD  CONSTRAINT [FK_INSTALACION_1] FOREIGN KEY([idPro])
REFERENCES [dbo].[PRODUCTO] ([idPro])
GO
ALTER TABLE [dbo].[INSTALACION] CHECK CONSTRAINT [FK_INSTALACION_1]
GO
ALTER TABLE [dbo].[INSTALACION]  WITH CHECK ADD  CONSTRAINT [FK_INSTALACION_2] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[INSTALACION] CHECK CONSTRAINT [FK_INSTALACION_2]
GO
ALTER TABLE [dbo].[INSTALACION]  WITH CHECK ADD  CONSTRAINT [FK_INSTALACION_3] FOREIGN KEY([idCliente])
REFERENCES [dbo].[CLIENTE] ([idCliente])
GO
ALTER TABLE [dbo].[INSTALACION] CHECK CONSTRAINT [FK_INSTALACION_3]
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FK_INVENTARIO_1] FOREIGN KEY([idPro])
REFERENCES [dbo].[PRODUCTO] ([idPro])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [FK_INVENTARIO_1]
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FK_INVENTARIO_2] FOREIGN KEY([idTienda])
REFERENCES [dbo].[TIENDA] ([idTienda])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [FK_INVENTARIO_2]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTO_1] FOREIGN KEY([idCat])
REFERENCES [dbo].[CATEGORIA] ([idCat])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK_PRODUCTO_1]
GO
ALTER TABLE [dbo].[SUPERVISOR]  WITH CHECK ADD  CONSTRAINT [FK_SUPERVISOR_1] FOREIGN KEY([idTienda])
REFERENCES [dbo].[TIENDA] ([idTienda])
GO
ALTER TABLE [dbo].[SUPERVISOR] CHECK CONSTRAINT [FK_SUPERVISOR_1]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_VENTA_1] FOREIGN KEY([idCliente])
REFERENCES [dbo].[CLIENTE] ([idCliente])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_VENTA_1]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_VENTA_2] FOREIGN KEY([idPro])
REFERENCES [dbo].[PRODUCTO] ([idPro])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_VENTA_2]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_VENTA_3] FOREIGN KEY([idMetPago])
REFERENCES [dbo].[METODOPAGO] ([idMetPago])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_VENTA_3]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_VENTA_4] FOREIGN KEY([idTipoVenta])
REFERENCES [dbo].[TIPOVENTA] ([idTipoVenta])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_VENTA_4]
GO
/****** Object:  StoredProcedure [dbo].[insertarEmpleado]    Script Date: 26/06/2019 11:08:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertarEmpleado]
(
	@id VARCHAR(50),
	@idTienda VARCHAR(50),
	@nombre VARCHAR(50),
	@apellido VARCHAR(50)
)
AS
BEGIN
  BEGIN TRY
	INSERT INTO EMPLEADO (idEmpleado, idTienda, nomEmpleado, apellEmpleado) VALUES(@id,@idTienda,@nombre,@apellido)
  END TRY
  BEGIN CATCH
    DECLARE @ERRORMESSAGE NVARCHAR(MAX);
    DECLARE @ERRORSEVERITY INT;
    DECLARE @ERRORSTATE INT;

    IF @@TRANCOUNT > 0
     ROLLBACK TRAN
    SELECT @ERRORMESSAGE=ERROR_MESSAGE(),@ERRORSEVERITY=ERROR_SEVERITY(),@ERRORSTATE=ERROR_STATE();

    SELECT @ERRORSTATE - @ERRORSEVERITY - @ERRORMESSAGE
  END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[seleccionarEmpleados]    Script Date: 26/06/2019 11:08:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[seleccionarEmpleados]
AS
BEGIN
  BEGIN TRY
	SELECT * FROM EMPLEADO
  END TRY
  BEGIN CATCH
    DECLARE @ERRORMESSAGE NVARCHAR(MAX);
    DECLARE @ERRORSEVERITY INT;
    DECLARE @ERRORSTATE INT;

    IF @@TRANCOUNT > 0
     ROLLBACK TRAN
    SELECT @ERRORMESSAGE=ERROR_MESSAGE(),@ERRORSEVERITY=ERROR_SEVERITY(),@ERRORSTATE=ERROR_STATE();

    SELECT @ERRORSTATE - @ERRORSEVERITY - @ERRORMESSAGE
  END CATCH
END
GO
