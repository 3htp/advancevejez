--##################################################
--# @version Sprint 15
--# @autor Ruben Dario Fernandez C
--###################################################

SPOOL V39__NUEVO_COMANDO.txt;

INSERT INTO ADVAUTHCXN1.TADV_COMMANDS(CMDDS_NOMBRE, CMDDS_DESCRIPCION) VALUES ('ActualizarInformacionDePagoTutela', 'Permite actualizar la cuenta bancaria y el beneficiario de pago de una tutela.');

INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('ProcesadorPagosIT','ActualizarInformacionDePagoTutela');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('GestionadorProceso','ActualizarInformacionDePagoTutela');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AnalistaDeProceso','ActualizarInformacionDePagoTutela');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AdministradorDeProceso','ActualizarInformacionDePagoTutela');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AsesorDeOficina','ActualizarInformacionDePagoTutela');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('DirectorDeOficina','ActualizarInformacionDePagoTutela');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('Asesor de oficina','ActualizarInformacionDePagoTutela');

COMMIT;
SPOOL OFF;
