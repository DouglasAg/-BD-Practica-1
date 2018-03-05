OPTIONS (SKIP=2)
LOAD DATA
INFILE 'Datos/DOCTORES.txt'
INTO TABLE doctor
TRAILING NULLCOLS
(
    dc_id                   POSITION(1:10)      "TRIM(:dc_id)",
    dc_nombre               POSITION(12:32)     "TRIM(:dc_nombre)",
    dc_especialidad         POSITION(34:42)     "TRIM(:dc_especialidad)",
    dc_anios_experiencia    POSITION(44:52)     "TRIM(NVL(:dc_anios_experiencia,1))",
    pc_salario              POSITION(54:64)     "TRIM(:pc_salario)"
)