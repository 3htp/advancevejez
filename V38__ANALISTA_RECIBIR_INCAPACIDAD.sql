--##################################################
--# @version SP15
--# @autor S4N
--###################################################

SPOOL V38__ANALISTA_RECIBIR_INCAPACIDAD.txt;

INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND (FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AnalistaTutelas', 'RecibirIncapacidad');

COMMIT;
SPOOL OFF;