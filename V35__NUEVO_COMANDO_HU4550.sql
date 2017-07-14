--##################################################
--# @version SP15
--# @autor S4N
--###################################################

SPOOL V35__NUEVO_COMANDO_HU4550.txt;

INSERT INTO ADVAUTHCXN1.TADV_COMMANDS(CMDDS_NOMBRE, CMDDS_DESCRIPCION) VALUES ('ReabrirSolicitudPorAfiliadoIlocalizado', 'Comando que permite reabrir una solicitud cuando fue finalizada por afiliado ilocalizado');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AsesorDeOficina','ReabrirSolicitudPorAfiliadoIlocalizado');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AsesorDeLineaDeServicio','ReabrirSolicitudPorAfiliadoIlocalizado');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('GestionadorProceso','ReabrirSolicitudPorAfiliadoIlocalizado');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AnalistaDeProceso','ReabrirSolicitudPorAfiliadoIlocalizado');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AdministradorDeProceso','ReabrirSolicitudPorAfiliadoIlocalizado');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('Asesor de oficina','ReabrirSolicitudPorAfiliadoIlocalizado');

COMMIT;
SPOOL OFF;