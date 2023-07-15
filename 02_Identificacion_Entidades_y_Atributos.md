# Gestion

## Listado de Entidades

##### _(EC) Entidad de Catalogo_
- Tipo_estados
- Tipo_membresias
- Tipo_monedas
- Tipo_pagos
- Tipo_documentos
- Respuesta_solicitud
- Areas
- Espacios
- Promociones
- Invitados
- Permisos
- Roles
- Paises

##### _(ED) Entidad de Datos_

- Socios
- Usuarios

##### _(EP) Entidad Pivote_
- Pagos_x_socio
- Reservas
- Invitado_x_reserva
- Actualizar_socios
- Roles_x_usuario
- Permisos_x__roles
- Comprobante
- Detalle_comprobante

## Atributo de Entidades
##### _(PK) Primary Key / (FK) Foreign Key / (UQ) Atributo Unico_

1. ### tipo_estados
    - estado_id **(PK)**
    - descripcion

1. ### tipo_membresias
    - membresia_id **(PK)**
    - descripcion
    - pago_inicial
    - cant_cuota
    - pago_cuota
    - estado_id **(FK)**

1. ### tipo_monedas
    - monedas_id **(PK)**
    - descripcion

1. ### tipo_pagos
    - tipoPago_id **(PK)**
    - descripcion

1. ### tipo_documentos
    - tipoDoc_id **(PK)**
    - descripcion

1. ### respuesta_solicitud
    - tipoResp_id **(PK)**
    - descripcion

1. ### areas
    - area_id **(PK)**
    - descripcion
    - estado_id **(FK)**

1. ### espacios
    - espacio_id **(PK)**
    - area_id **(FK)**
    - descripcion
    - estado_id **(FK)**

1. ### promociones
    - promocion_id **(PK)**
    - descripcion
    - fechaHora_inic
    - fechaHora_fin
    - estado_id **(FK)**
    - observacion

1. ### invitados
    - invitado_id **(PK)**
    - tipoDoc_id **(FK)**
    - documento
    - nombre
    - ApellidoPat
    - ApellidoMat
    - estado_id **(FK)**

1. ### permisos
    - permiso_id **(PK)**
    - nombre
    - descripcion

1. ### roles
    - rol_id **(PK)**
    - descripcion
    - observacion

1. ### paises
    - pais_id **(PK)**
    - nombre

1. ### Socios
    - socio_id **(PK)**
    - nombre
    - apellido_pat
    - apellido_mat
    - email **(UQ)**
    - password
    - tipoDoc_id **(FK)**
    - Documento **(UQ)**
    - telefono
    - direccion
    - pais_id **(FK)**
    - foto
    - estado_id **(FK)**


1. ### usuarios
    - usuario_id **(PK)**
    - username **(UQ)**
    - password
    - email **(UQ)**
    - nombre
    - apellido_pat
    - apellido_mat
    - estado_id **(FK)**
    - Fecha_creacion
    - fecha_actualizacion


1. ### pagos_x_socio  
    - pagoSocio_id **(PK)**
    - socio_id **(FK)**
    - membresia_id **(FK)**
    - Descripcion
    - moneda_id **(FK)**
    - Monto
    - fecha_venc
    - estado_id **(FK)**


1. ### reservas
    - reserva_id **(PK)**
    - socio_id **(FK)**
    - espacio_id **(FK)**
    - fecha_solicitada
    - fecha_reserva
    - cant_hora
    - info_reserva
    - tipoResp_id **(FK)**
    - estado_id **(FK)**

1. ### invitado_x_reserva
    - reserva_id **(FK)**
    - invitado_id **(FK)**

1. ### Actualizar_socios
    - actSocio_id **(PK)**
    - socio_id **(FK)**
    - email_socio **(UQ)**
    - telefono_socio
    - direccion_socio
    - fecha_solicitada
    - fecha_actu
    - tipoResp_id **(FK)**

1. ### roles_x_usuario
    - rxu_id **(PK)**
    - usuario_Iid **(FK)**
    - rol_id **(FK)**

1. ### permisos_x_roles
    - pxr_id **(PK)**
    - rol_id **(FK)**
    - permiso_id **(FK)**

1. ### comprobante
    - comprobante_id **(PK)**
    - fecha_emision
    - importe_total
    - moneda_id **(FK)**
    - tipoPago_id **(FK)**
    - estado_id **(FK)**

1. ### detalle_comprobante
    - comprobante_id **(FK)**
    - pagoSocio_id **(FK)**

    
