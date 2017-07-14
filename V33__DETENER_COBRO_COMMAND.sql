--##################################################
--# @version SP15
--# @autor S4N
--###################################################

SPOOL V33__DETENER_COBRO_COMMAND.txt;

INSERT INTO ADVAUTHCXN1.TADV_COMMANDS(CMDDS_NOMBRE, CMDDS_DESCRIPCION) VALUES ('DetencionCobroGestionada', 'Valida documentos con filenet para gestionar cobro');

INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('Asesor de oficina','DetencionCobroGestionada');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('GestionadorProceso','DetencionCobroGestionada');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AnalistaDeProceso','DetencionCobroGestionada');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AdministradorDeProceso','DetencionCobroGestionada');

COMMIT;
SPOOL OFF;