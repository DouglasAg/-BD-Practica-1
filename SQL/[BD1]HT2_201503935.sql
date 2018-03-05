-- Douglas Daniel Aguilar Cuque 
-- 201503935
-- Creacion de tablas


CREATE TABLE doctor (
    dc_id                  NUMBER NOT NULL,
    dc_nombre              VARCHAR2(45 CHAR) NOT NULL,
    dc_especialidad        NUMBER,
    dc_anios_experiencia   NUMBER DEFAULT 1,
    pc_salario             NUMBER
);

ALTER TABLE doctor ADD CONSTRAINT doctor_pk PRIMARY KEY ( dc_id );

ALTER TABLE doctor ADD CONSTRAINT ck_doctor_anios CHECK (dc_anios_experiencia >0 AND dc_anios_experiencia < 50);

ALTER TABLE doctor ADD CONSTRAINT ck_doctor_salario CHECK (pc_salario > 2500);

CREATE TABLE farmacia (
    fm_id          NUMBER NOT NULL,
    fm_nombre      VARCHAR2(50 CHAR) NOT NULL,
    fm_direccion   VARCHAR2(50 CHAR),
    fm_telefono    VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE farmacia ADD CONSTRAINT farmacia_pk PRIMARY KEY ( fm_id );

CREATE TABLE laboratorio (
    lb_id         NUMBER NOT NULL,
    lb_nombre     VARCHAR2(50 CHAR),
    lb_telefono   NUMBER NOT NULL
);

ALTER TABLE laboratorio ADD CONSTRAINT laboratorio_pk PRIMARY KEY ( lb_id );

CREATE TABLE lista_precios (
    lp_farmacia   NUMBER NOT NULL,
    lp_medicina   NUMBER NOT NULL,
    lp_precio     NUMBER NOT NULL
);

ALTER TABLE lista_precios ADD CONSTRAINT lista_precios_pk PRIMARY KEY ( lp_precio,
lp_medicina );

ALTER TABLE lista_precios ADD CONSTRAINT ck_lista_precios_precio CHECK (lp_precio > 0);

CREATE TABLE medicina (
    md_id                 NUMBER NOT NULL,
    md_nombre_comercial   VARCHAR2(50 CHAR),
    md_formula            VARCHAR2(50 CHAR) NOT NULL,
    md_laboratorio        NUMBER NOT NULL
);

ALTER TABLE medicina ADD CONSTRAINT medicina_pk PRIMARY KEY ( md_id );

ALTER TABLE medicina ADD CONSTRAINT ck_medicina_nombre_comercial CHECK (md_nombre_comercial=UPPER(md_nombre_comercial));

ALTER TABLE medicina ADD CONSTRAINT ck_medicina_nombre_formula CHECK (md_formula=UPPER(md_formula));

CREATE TABLE paciente (
    pc_id                 NUMBER NOT NULL,
    pc_fecha_nacimiento   DATE NOT NULL,
    pc_nombre             VARCHAR2(50 CHAR) NOT NULL,
    pc_telefono           VARCHAR2(15 CHAR) NOT NULL,
    pc_direccion          VARCHAR2(30 CHAR),
    pc_doctor_confianza   NUMBER NOT NULL
);

ALTER TABLE paciente ADD CONSTRAINT paciente_pk PRIMARY KEY ( pc_id );

CREATE TABLE prescripcion (
    pr_paciente   NUMBER NOT NULL,
    pr_doctor     NUMBER NOT NULL,
    pr_medicina   NUMBER NOT NULL,
    pr_fecha      DATE DEFAULT SYSDATE NOT NULL,
    pr_cantidad   NUMBER NOT NULL
);

ALTER TABLE prescripcion
    ADD CONSTRAINT prescripcion_pk PRIMARY KEY ( pr_fecha,
    pr_cantidad,
    pr_medicina,
    pr_paciente,
    pr_doctor );
    
ALTER TABLE prescripcion ADD CONSTRAINT ck_prescripcion_cantidad CHECK (pr_cantidad > 0);

ALTER TABLE lista_precios
    ADD CONSTRAINT lista_precios_farmacia_fk FOREIGN KEY ( lp_farmacia )
        REFERENCES farmacia ( fm_id );

ALTER TABLE lista_precios
    ADD CONSTRAINT lista_precios_medicina_fk FOREIGN KEY ( lp_medicina )
        REFERENCES medicina ( md_id );

ALTER TABLE medicina
    ADD CONSTRAINT medicina_laboratorio_fk FOREIGN KEY ( md_laboratorio )
        REFERENCES laboratorio ( lb_id );

ALTER TABLE paciente
    ADD CONSTRAINT paciente_doctor_fk FOREIGN KEY ( pc_doctor_confianza )
        REFERENCES doctor ( dc_id );

ALTER TABLE prescripcion
    ADD CONSTRAINT prescripcion_doctor_fk FOREIGN KEY ( pr_doctor )
        REFERENCES doctor ( dc_id );

ALTER TABLE prescripcion
    ADD CONSTRAINT prescripcion_medicina_fk FOREIGN KEY ( pr_medicina )
        REFERENCES medicina ( md_id );

ALTER TABLE prescripcion
    ADD CONSTRAINT prescripcion_paciente_fk FOREIGN KEY ( pr_paciente )
        REFERENCES paciente ( pc_id );

QUIT;
