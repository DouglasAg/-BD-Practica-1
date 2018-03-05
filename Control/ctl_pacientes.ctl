OPTIONS (SKIP=2)
LOAD DATA
INFILE '/home/douglas/Documentos/Bases/Datos/PACIENTES.txt'
INTO TABLE paciente
TRAILING NULLCOLS
(
    pc_id                   POSITION(1:10)      "TRIM(:pc_id)",
    pc_nombre               POSITION(12:32)     "TRIM(:pc_nombre)",
    pc_fecha_nacimiento     POSITION(34:42)     "TO_DATE(:pc_fecha_nacimiento, 'DD-MM-YYYY', 'NLS_DATE_LANGUAGE=ENGLISH')",
    pc_telefono             POSITION(44:52)     "TRIM(:pc_telefono)",
    pc_direccion            POSITION(54:84)     "TRIM(:pc_direccion)",
    pc_doctor_confianza     POSITION(86:97)     "TRIM(:pc_doctor_confianza)"
)