--------------------------------------------------------
--  File created - Saturday-October-28-2023   
--------------------------------------------------------
REM INSERTING into TIPO_CUENTA
SET DEFINE OFF;
Insert into TIPO_CUENTA (TIPO_CUENTA_ID,DESCRIPCION,LIMITE) values (1,'Individual',1);
Insert into TIPO_CUENTA (TIPO_CUENTA_ID,DESCRIPCION,LIMITE) values (2,'Pareja',2);
Insert into TIPO_CUENTA (TIPO_CUENTA_ID,DESCRIPCION,LIMITE) values (3,'Familiar 5',5);
Insert into TIPO_CUENTA (TIPO_CUENTA_ID,DESCRIPCION,LIMITE) values (4,'Familiar 10',10);
commit;