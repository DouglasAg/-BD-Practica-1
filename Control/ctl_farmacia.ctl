OPTIONS (SKIP=2)
LOAD DATA
INFILE '/home/douglas/Documentos/Bases/Datos/FARMACIAS.txt'
INTO TABLE farmacia
TRAILING NULLCOLS
(
    fm_id           POSITION(1:10)      "TRIM(:fm_id)",
    fm_nombre       POSITION(12:32)     "TRIM(:fm_nombre)",
    fm_direccion    POSITION(34:61)     "TRIM(:fm_direccion)",
    fm_telefono     POSITION(63:71)     "TRIM(:fm_telefono)"
)