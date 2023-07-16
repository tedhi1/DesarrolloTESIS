## TABLAS de EC

###  Tipo_Estados

| estado_id    | Descripcion |
|--------------|-------------|
| 1            | Activo      |
| 2            | Inactivo    |
| 3            | Bloqueado   |
| 4            | Anulado     |
| 5            | Concluido   |
| 6            | Pagado      |
| 7            | Pendiente   |


###  Tabla_guia_distribucion_estados

| Tipo_estado                     | Socio | Tipo_Membresia | Reserva | Area | Promocion | Invitado | pago_xSocio |
|---------------------------------|-------|----------------|---------|------|-----------|----------|-------------|
| Activo                          | x     | x              | x       | x    | x         | x        |             |
| Inactivo                        | x     | x              |         | x    | x         | x        |             |
| Bloqueado                       | x     |                |         |      |           | x        |             |
| Anulado                         |       | x              | x       |      |           |          | x           |
| Concluido                       |       |                | x       |      |           |          |             |
| Pagado                          |       |                |         |      |           |          | x           |
| Pendiente                       |       |                |         |      |           |          | x           |

###  Tipo_Membresias

| membresia_id    | Descripcion                   | Pago_inicial | cant_cuota | pago_cuota | estado_id |
|-----------------|-------------------------------|--------------|------------|------------|-----------|
| 1               | Trimestral   familiar de 02   | S/500.00     | 0          | S/0.00     | 1         |
| 2               | Trimestral familiar de 03     | S/580.00     | 0          | S/0.00     | 1         |
| 3               | Trimestral   familiar de 04   | S/630.00     | 0          | S/0.00     | 1         |
| 4               | Anual familiar de 02          | S/430.00     | 11         | S/49.00    | 1         |
| 5               | Anual familiar   de 03        | S/510.00     | 11         | S/59.00    | 1         |
| 6               | Anual familiar de 04          | S/600.00     | 11         | S/69.00    | 1         |
| 7               | Anual amigos 02               | S/429.00     | 11         | S/78.00    | 1         |
| 8               | Anual amigos 03               | S/509.00     | 11         | S/117.00   | 1         |
| 9               | Anual amigos 04               | S/640.00     | 11         | S/156.00   | 1         |
| 10              | Anual Individual              | S/330.00     | 11         | S/39.00    | 1         |
| 11              | Trimestral   Individual       | S/330.00     | 0          | S/0.00     | 1         |
| 12              | Adicional trimestral familiar | S/150.00     | 0          | S/0.00     | 1         |
| 13              | Adicional anual   familiar    | S/100.00     | 0          | S/15.00    | 1         |


###  Tipo_Moneda

| moneda_id            | Descripcion |
|----------------------|-------------|
| 1                    | Soles       |
| 2                    | Dólares     |
| 3                    | Euros       |


###  Tipo_Pagos

| tipoPago_id          | Descripcion |
|----------------------|-------------|
| 1                    | tarjeta     |
| 2                    | efectivo    |


###  Tipo_Documentos 

| tipoDoc_id           | Descripcion |
|----------------------|-------------|
| 1                    | DNI         |
| 2                    | CE          |
| 3                    | CEDULA      |


###  Respuestas_solicitud

| tipoResp_id          | Descripcion |
|----------------------|-------------|
| 1                    | aprobado    |
| 2                    | desaprobado |

###  Areas

| area_id      | Descripcion            | estado_id           |
|--------------|------------------------|---------------------|
| 1            | Cancha de   futbol     | 1                   |
| 2            | Cancha de voley        | 1                   |
| 3            | Cancha de   Basketball | 1                   |
| 4            | Sala de eventos        | 1                   |
| 5            | Zona de   parrilla     | 1                   |


###  Espacios

| espacio_id   | area_id                | descripcion         | estado_id           |
|--------------|------------------------|---------------------|---------------------|
| 1            | 1                      | Cancha 01           | 1                   |
| 2            | 1                      | Cancha 02           | 1                   |
| 3            | 2                      | Cancha 01           | 1                   |
| 4            | 2                      | Cancha 02           | 1                   |
| 5            | 3                      | Cancha 01           | 1                   |


###  Promociones

| Promocion_id | descripcion            | fechaHora_inic      | fechaHora_fin       | estado_id   | observacion             |
|--------------|------------------------|---------------------|---------------------|-------------|-------------------------|
| 1            | Gran kermes            | 28-07-2023   8:00am | 28-07-2023   5:00pm | 1           | feria   y shw cirquense |
| 2            | Gracias Maestro        | 08-07-2023 8:00am   | 09-07-2023 5:00pm   | 2           | eventos diversos        |


###  Invitados 

| Invitado_id  | tipoDoc_id             | documento           | Nombre              | ApellidoPat | ApellidoMat             | estado_id |
|--------------|------------------------|---------------------|---------------------|-------------|-------------------------|-----------|
| 1            | 1                      | 48510548            | Carlos              | Campos      | Tello                   | 1         |
| 2            | 1                      | 52140874            | Luis                | Poma        | Huamani                 | 1         |
| 3            | 1                      | 21453624            | Julio               | Garcia      | Quispe                  | 1         |
| 4            | 1                      | 24510875            | Elmer               | Rosas       | Orosco                  | 1         |

###  permisos

| permiso_id | nombre                | descripcion               |
|------------|-----------------------|---------------------------|
| 1          | Dashboard_progreso    | s                         |
| 2          | Reservar Area         | s                         |
| 3          | Mis   reservaciones   | s                         |
| 4          | pagos membresias      | s                         |
| 5          | mis pagos             | s                         |
| 6          | registrar invitados   | s                         |
| 7          | ver mis   invitados   | s                         |
| 8          | promociones           | s                         |
| 9          | Recordatorio   Pagos  | s                         |
| 10         | Reporte de pagos      | s                         |
| 11         | cambio   contraseña   | s,a,g                     |
| 12         | dashboard analytics   | a                         |
| 13         | usuario               | a                         |
| 14         | aprobar actualizacion | a                         |
| 15         | aprobar   reservas    | a                         |
| 16         | crear promocion       | g                         |
| 17         | envio   recordatorio  | g                         |


###  Roles

| rol_id     | descripcion           | observacion               |
|------------|-----------------------|---------------------------|
| 1          | Administrador         | acceso   total            |
| 2          | Gestor                | acceso para actualizacion |
| 3          | socio                 | socios   activos          |

###  paises

| pais_id | nombre   |
|---------|----------|
| 1       | PERU     |
| 2       | COLOMBIA |
| 3       | EEUU     |


## TABLAS de ED

###  socios 

| socio_id | nombre  | apellido_pat | apellido_mat | email            | password | tipoDoc_id | documento | telefono  | direccion     | pais_id | foto         | estado_id |
|----------|---------|--------------|--------------|------------------|----------|------------|-----------|-----------|---------------|---------|--------------|-----------|
| 1        | ANTONIO | POMA         | AYALA        | poma@gmail.com   | 1234     | 1          | 25140625  | 990220651 | Av. Rosales   | 1       | https:/foto1 | 1         |
| 2        | MARIA   | QUISPE       | RIOS         | quispe@gmail.com | 1234     | 1          | 45021658  | 952846955 | Av. Argentina | 1       | https:/foto2 | 1         |
| 3        | NELIDA  | ORDOÑEZ      | MANRIQUE     | nelida@gmail.com | 1234     | 1          | 32061547  | 923547895 | Av. Union     | 1       | https:/foto3 | 1         |

###  usuarios 

| usuario_id | username       | password | email             | nombre | apellido_pat | apellido_mat | estado_id | fecha_creacion | fecha_actualizacion |
|------------|----------------|----------|-------------------|--------|--------------|--------------|-----------|----------------|---------------------|
| 1          | martin agapito | mar123   | martina@gmail.com | martin | agapito      | sandoval     | 1         | 10-Jul         | 10-Jul              |
| 2          | edith huaman   | edi123   | edithh@gmail.com  | edith  | huaman       | uchupe       | 1         | 10-Jul         | 10-Jul              |


## TABLAS de EP
###  pagos_x_socio

| pagoSocio_id  | socio_id | membresia_id | descripcion        | moneda_id | monto_cargado | fecha_venc | estado_id |
|---------------|----------|--------------|--------------------|-----------|---------------|------------|-----------|
| 1             | 1        | 4            | Cuota 01   Inicial | 1         | 430           | 14-Jun     | 6         |
| 2             | 1        | 4            | Cuota 02           | 1         | 49            | 14-Jul     | 6         |
| 3             | 1        | 4            | Cuota 03           | 1         | 49            | 14-Ago     | 7         |
| 4             | 1        | 4            | Cuota 04           | 1         | 49            | 14-Set     | 7         |
| 5             | 1        | 4            | Cuota 05           | 1         | 49            | 14-Oct     | 7         |
| 6             | 1        | 4            | Cuota 06           | 1         | 49            | 14-Nov     | 7         |
| 7             | 1        | 4            | Cuota 07           | 1         | 49            | 14-Dic     | 7         |
| 8             | 1        | 4            | Cuota 08           | 1         | 49            | 14-Ene     | 7         |
| 9             | 1        | 4            | Cuota 09           | 1         | 49            | 14-Feb     | 7         |
| 10            | 1        | 4            | Cuota 10           | 1         | 49            | 14-Mar     | 7         |
| 11            | 1        | 4            | Cuota 11           | 1         | 49            | 14-Abr     | 7         |
| 12            | 1        | 4            | Cuota 12           | 1         | 49            | 14-May     | 7         |

###  reservas

| reserva_id | socio_id | espacio_id | fecha_solicitada | fecha_reserva | cant_hora | info_reserva               | invitado | tipoResp_id | fecha_resp | estado_id |
|------------|----------|------------|------------------|---------------|-----------|----------------------------|----------|-------------|------------|-----------|
| 1          | 1        | 1          | 12-Jul           | 15-Jul        | 2         | futbol   minicampeonato    | 5        | 1           | 14-Jul     | 1         |
| 2          | 1        | 3          | 13-Jul           | 15-Jul        | 1         | voley                      | 4        | 1           | 14-Jul     | 1         |
| 3          | 1        | 5          | 13-Jul           | 15-Jul        | 1         | basketball   entrenamiento | 2        | 1           | 14-Jul     | 1         |

###  invitados_x_reserva 

| reserva_id          | invitado_id |
|---------------------|-------------|
| 1                   | 1           |
| 1                   | 4           |
| 2                   | 2           |
| 2                   | 3           |

###  actualizarSocios

| actSocio_id      | socio_id | email_socio       | telefono_socio | direccion_socio | fecha_solicitada | fecha_actu | tipoResp_id |
|------------------|----------|-------------------|----------------|-----------------|------------------|------------|-------------|
| 1                | 1        | art5@gmail.com    | 952145623      | Av. Palmeras    | 13-Jul           | 15-Jul     | 1           |
| 2                | 2        | rst25@gmail.com   | 952145874      | Av. Wilson      | 12-Jul           | 14-Jul     | 1           |
| 3                | 3        | erickud@gmail.com | 925632145      | Av. Granada     | 12-Jul           | 14-Jul     | 1           |

###  roles_x_usuario 

| rxu_id          | usuario_id | rol_id     |
|-----------------|------------|------------|
| 1               | 1          | 1          |
| 2               | 1          | 2          |
| 3               | 2          | 2          |


###  permisos_x_rol

| pxr_id          | rol_id     | permiso_id |
|-----------------|------------|------------|
| 1               | 3          | 1          |
| 2               | 3          | 2          |
| 3               | 3          | 3          |
| 4               | 3          | 4          |
| 5               | 3          | 5          |
| 6               | 3          | 6          |
| 7               | 3          | 7          |
| 8               | 3          | 8          |
| 9               | 3          | 9          |
| 10              | 3          | 10         |
| 11              | 3          | 11         |
| 12              | 1          | 11         |
| 13              | 2          | 11         |

###  comprobante

| comprobante_id | fecha_emision | importe_total | moneda_id | tipoPago_id | estado_id |
|----------------|---------------|---------------|-----------|-------------|-----------|
| B001           | 19-Jul        | 479           | 1         | 1           | 6         |

###  detalle_comprobante

| comprobante_id      | pagoSocio_id |
|---------------------|--------------|
| B001                | 1            |
| B001                | 2            |
