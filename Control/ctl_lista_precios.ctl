OPTIONS (SKIP=2)
LOAD DATA
INFILE '/home/douglas/Documentos/Bases/Datos/LISTA_PRECIOS.txt'
INTO TABLE lista_precios
TRAILING NULLCOLS
(
    lp_farmacia     POSITION(1:10)      "TRIM(:lp_farmacia)",
    lp_medicina     POSITION(12:21)     "TRIM(:lp_medicina)",
    lp_precio       POSITION(23:32)     "TRIM(:lp_precio)"
)