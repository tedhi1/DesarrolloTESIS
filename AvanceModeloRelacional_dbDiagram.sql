CREATE TABLE [tipo_estados] (
  [estado_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255)
)
GO

CREATE TABLE [tipo_membresias] (
  [membresia_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255),
  [pago_inicial] float,
  [cant_cuota] integer,
  [pago_cuota] float,
  [estado_id] integer
)
GO

CREATE TABLE [tipo_monedas] (
  [monedas_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255)
)
GO

CREATE TABLE [tipo_pagos] (
  [tipoPago_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255)
)
GO

CREATE TABLE [tipo_documentos] (
  [tipoDoc_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255)
)
GO

CREATE TABLE [respuesta_solicitud] (
  [tipoResp_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255)
)
GO

CREATE TABLE [areas] (
  [area_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255),
  [estado_id] integer
)
GO

CREATE TABLE [espacios] (
  [espacio_id] integer PRIMARY KEY,
  [area_id] integer,
  [descripcion] nvarchar(255),
  [estado_id] integer
)
GO

CREATE TABLE [promociones] (
  [promocion_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255),
  [fechaHora_inic] datetime,
  [fechaHora_fin] datetime,
  [estado_id] integer,
  [observacion] nvarchar(255)
)
GO

CREATE TABLE [invitados] (
  [invitado_id] integer PRIMARY KEY,
  [tipoDoc_id] integer,
  [documento] nvarchar(255),
  [nombre] nvarchar(255),
  [ApellidoPat] nvarchar(255),
  [ApellidoMat] nvarchar(255),
  [estado_id] integer
)
GO

CREATE TABLE [permisos] (
  [permiso_id] integer PRIMARY KEY,
  [nombre] nvarchar(255),
  [descripcion] nvarchar(255)
)
GO

CREATE TABLE [roles] (
  [rol_id] integer PRIMARY KEY,
  [descripcion] nvarchar(255),
  [observacion] nvarchar(255)
)
GO

CREATE TABLE [paises] (
  [pais_id] integer PRIMARY KEY,
  [nombre] nvarchar(255)
)
GO

CREATE TABLE [Socios] (
  [socio_id] varchar(5) PRIMARY KEY,
  [nombre] nvarchar(255),
  [apellido_pat] nvarchar(255),
  [apellido_mat] nvarchar(255),
  [email] nvarchar(255) UNIQUE,
  [password] nvarchar(255),
  [tipoDoc_id] integer,
  [Documento] nvarchar(255) UNIQUE,
  [telefono] nvarchar(255),
  [direccion] nvarchar(255),
  [pais_id] integer,
  [foto] nvarchar(255),
  [estado_id] integer
)
GO

CREATE TABLE [usuarios] (
  [usuario_id] integer PRIMARY KEY,
  [username] nvarchar(255) UNIQUE,
  [password] nvarchar(255),
  [email] nvarchar(255) UNIQUE,
  [nombre] nvarchar(255),
  [apellido_pat] nvarchar(255),
  [apellido_mat] nvarchar(255),
  [estado_id] integer,
  [Fecha_creacion] datetime,
  [fecha_actualizacion] datetime
)
GO

CREATE TABLE [pagos_x_socio] (
  [pagoSocio_id] integer PRIMARY KEY,
  [socio_id] varchar(5),
  [membresia_id] integer,
  [Descripcion] nvarchar(255),
  [moneda_id] integer,
  [Monto] float,
  [fecha_venc] datetime,
  [estado_id] integer
)
GO

CREATE TABLE [reservas] (
  [reserva_id] integer PRIMARY KEY,
  [socio_id] integer,
  [espacio_id] integer,
  [fecha_solicitada] datetime,
  [fecha_reserva] datetime,
  [cant_hora] integer,
  [info_reserva] nvarchar(255),
  [tipoResp_id] integer,
  [estado_id] integer
)
GO

CREATE TABLE [invitado_x_reserva] (
  [reserva_id] integer,
  [invitado_id] integer
)
GO

CREATE TABLE [Actualizar_socios] (
  [actSocio_id] integer PRIMARY KEY,
  [socio_id] varchar(5),
  [email_socio] nvarchar(255) UNIQUE,
  [telefono_socio] nvarchar(255),
  [direccion_socio] nvarchar(255),
  [fecha_solicitada] datetime,
  [fecha_actu] datetime,
  [tipoResp_id] integer
)
GO

CREATE TABLE [roles_x_usuario] (
  [rxu_id] integer PRIMARY KEY,
  [usuario_Iid] integer,
  [rol_id] integer
)
GO

CREATE TABLE [permisos_x_roles] (
  [pxr_id] integer PRIMARY KEY,
  [rol_id] integer,
  [permiso_id] integer
)
GO

CREATE TABLE [comprobante] (
  [comprobante_id] varchar(5) PRIMARY KEY,
  [fecha_emision] datetime,
  [importe_total] float,
  [moneda_id] integer,
  [tipoPago_id] integer,
  [estado_id] integer
)
GO

CREATE TABLE [detalle_comprobante] (
  [comprobante_id] integer,
  [pagoSocio_id] integer
)
GO
