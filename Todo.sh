#!/bin/bash
echo Douglas Aguilar 201503935
sqlplus Douglas/Bases123 @SQL/[BD1]HT2_201503935.sql
echo -------------------- Tablas creadas --------------------
read
echo Demostracion de las tablas creadas
sqlplus Douglas/Bases123 @SQL/Demostracion.sql
echo -------------------- Tablas Vacias --------------------
read
sqlldr userid=douglas/Bases123 control=Control/ctl_doctor.ctl LOG=LOG/log_doctor.log BAD = BAD/bad_doctor.bad DISCARD = DISCARD/dis_doctor.dsc ;
sqlldr userid=douglas/Bases123 control=Control/ctl_pacientes.ctl LOG=LOG/log_pacientes.log BAD = BAD/bad_pacientes.bad DISCARD = DISCARD/dis_pacientes.dsc ;
sqlldr userid=douglas/Bases123 control=Control/ctl_farmacia.ctl LOG=LOG/log_famacia.log BAD = BAD/bad_farmacia.bad DISCARD = DISCARD/dis_famacia.dsc ;
sqlldr userid=douglas/Bases123 control=Control/ctl_laboratorio.ctl LOG=LOG/log_laboratorio.log BAD = BAD/bad_laboratorio.bad DISCARD = DISCARD/dis_farmacia.dsc ;
sqlldr userid=douglas/Bases123 control=Control/ctl_medicina.ctl LOG=LOG/log_medicina.log BAD = BAD/bad_medicina.bad DISCARD = DISCARD/dis_medicina.dsc ;
sqlldr userid=douglas/Bases123 control=Control/ctl_lista_precios.ctl LOG=LOG/log_lista_precios.log BAD = BAD/bad_lista_precios.bad DISCARD = DISCARD/dis_lista_precios.dsc ;
sqlldr userid=douglas/Bases123 control=Control/ctl_prescripciones.ctl LOG=LOG/log_prescripciones.log BAD = BAD/bad_prescripciones.bad DISCARD = DISCARD/dis_prescripciones.dsc ;
echo  --------------------  Datos cargados -------------------- 
read
echo Demostracion de las tablas llenas
sqlplus Douglas/Bases123 @SQL/Demostracion.sql
echo -------------------- Tablas Vacias -----------------
exit