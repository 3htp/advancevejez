--##################################################
--# @version SP15
--# @autor S4N
--###################################################

SPOOL V37__COMANDOS_EDITAR_TUTELA.txt;

INSERT INTO ADVAUTHCXN1.TADV_COMMANDS (CMDDS_NOMBRE, CMDDS_DESCRIPCION) VALUES ('EditarTipoPagoTutela', 'Descripción');
INSERT INTO ADVAUTHCXN1.TADV_COMMANDS (CMDDS_NOMBRE, CMDDS_DESCRIPCION) VALUES ('EditarFechaInicioPagoTutela', 'Descripción');


UPDATE ADVAUTHCXN1.TADV_ROLE_X_COMMAND SET FK_CMDDS_NOMBRE = 'EditarTipoPagoTutela' WHERE FK_CMDDS_NOMBRE = 'EditarInformacionTutela';

DELETE FROM ADVAUTHCXN1.TADV_COMMANDS WHERE CMDDS_NOMBRE = 'EditarInformacionTutela';

INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND (FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AnalistaDeProceso', 'EditarFechaInicioPagoTutela');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND (FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AnalistaTutelas', 'EditarFechaInicioPagoTutela');

COMMIT;
SPOOL OFF;