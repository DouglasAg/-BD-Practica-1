-- Douglas Daniel Aguilar Cuque
-- 201503935
-- Demostrar que las tablas estan vacias 
SET SERVEROUTPUT ON;

exec DBMS_OUTPUT.put_line ('Tabla doctor');
SELECT * FROM DOCTOR;
exec DBMS_OUTPUT.put_line ('Tabla paciente');
SELECT * FROM PACIENTE;
exec DBMS_OUTPUT.put_line ('Tabla farmacia');
SELECT * FROM FARMACIA;
exec DBMS_OUTPUT.put_line ('Tabla Labboratorio');
SELECT * FROM LABORATORIO;
exec DBMS_OUTPUT.put_line ('Tabla Medicina');
SELECT * FROM MEDICINA;
exec DBMS_OUTPUT.put_line ('Tabla Lista precios');
SELECT * FROM LISTA_PRECIOS;
exec DBMS_OUTPUT.put_line ('Tabla Prescripcion');
SELECT * FROM PRESCRIPCION;
QUIT;