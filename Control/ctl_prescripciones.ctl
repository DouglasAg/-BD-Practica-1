OPTIONS (SKIP=2)
LOAD DATA
INFILE '/home/douglas/Documentos/Bases/Datos/PRESCRIPCIONES.txt'
INTO TABLE prescripcion
TRAILING NULLCOLS
(
    pr_paciente     POSITION(1:10)      "TRIM(:pr_paciente)",
    pr_doctor       POSITION(12:21)     "TRIM(:pr_doctor)",
    pr_medicina     POSITION(23:32)     "TRIM(:pr_medicina)",
    pr_fecha        POSITION(34:43)     "TO_DATE(NVL(:pr_fecha,TO_CHAR(SYSDATE,'YYYY/MM/DD')), 'YYYY/MM/DD', 'NLS_DATE_LANGUAGE=ENGLISH')",
    pr_cantidad     POSITION(45:54)     "TRIM(:pr_cantidad)"

)