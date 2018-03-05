OPTIONS (SKIP=2)
LOAD DATA
INFILE '/home/douglas/Documentos/Bases/Datos/MEDICINAS.txt'
INTO TABLE medicina
TRAILING NULLCOLS
(
    md_id                   POSITION(1:10)      "TRIM(:md_id)",
    md_nombre_comercial     POSITION(12:32)     "TRIM(:md_nombre_comercial)",
    md_formula              POSITION(34:61)     "TRIM(:md_formula)",
    md_laboratorio          POSITION(63:71)     "TRIM(:md_laboratorio)"
)