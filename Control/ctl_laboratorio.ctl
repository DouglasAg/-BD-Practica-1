OPTIONS (SKIP=2)
LOAD DATA
INFILE '/home/douglas/Documentos/Bases/Datos/LABORATORIOS.txt'
INTO TABLE laboratorio
TRAILING NULLCOLS
(
    lb_id           POSITION(1:10)      "TRIM(:lb_id)",
    lb_nombre       POSITION(12:32)     "TRIM(:lb_nombre)",
    lb_telefono     POSITION(34:42)     "TRIM(:lb_telefono)"
)