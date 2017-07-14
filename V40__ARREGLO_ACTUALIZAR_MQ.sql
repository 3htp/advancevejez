SPOOL V40__ARREGLO_ACTUALIZAR_MQ.txt;

UPDATE ADVAUTHCXN1.TADV_LOCATIONS SET LOCDS_LABEL = 'Actualizar caches' WHERE LOCCD_LOCATION = 'layout.actualizarcaches';

INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_LOCATION(RXLCD_ROL, RXLCD_LOCATION) VALUES('AnalistaTecnologia', 'layout.actualizarcaches');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES ('AnalistaTecnologia','ActualizarCaches');

INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_LOCATION(RXLCD_ROL, RXLCD_LOCATION) VALUES('AnalistaTecnologia', 'layout.rolesxcomando');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES('AnalistaTecnologia', 'AgregarRolComando');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES('AnalistaTecnologia', 'EliminarRolComando');

INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_LOCATION(RXLCD_ROL, RXLCD_LOCATION) VALUES('AnalistaTecnologia', 'layout.rolesxlocation');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES('AnalistaTecnologia', 'AgregarRolLocation');
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_COMMAND(FK_ROLDS_NOMBRE, FK_CMDDS_NOMBRE) VALUES('AnalistaTecnologia', 'EliminarRolLocation');

UPDATE ADVAUTHCXN1.TADV_LOCATIONS SET LOCDS_LABEL = 'Asesoría ODS' WHERE LOCCD_LOCATION = 'layout.asesoria';
UPDATE ADVAUTHCXN1.TADV_LOCATIONS SET LOCDS_LABEL = 'Radicar SIT' WHERE LOCCD_LOCATION = 'layout.radicacion';

DECLARE
  str varchar2(6000);
BEGIN
  str := '[{"prioridad":"A","label":"Casos","sref":"layout.caso","sideBar":[]},{"prioridad":"I","label":"Reportes","sref":"layout","sideBar":[{"prioridad":1,"label":"Reporte de Comunicados","sref":"layout.reportecomunicados"},{"prioridad":2,"label":"Consulta de Solicitudes IT","sref":"layout.consultarsolicitudesit"}]},{"prioridad":"F","label":"Pagos","sref":"layout","sideBar":[{"prioridad":2,"label":"Listar todos los pagos","sref":"layout.tablapagos"},{"prioridad":3,"label":"Histórico de Pagos","sref":"layout.historicopagos"},{"prioridad":4,"label":"Gestión de Pagos Rechazados","sref":"layout.gestionarpagosrechazados"},{"prioridad":10,"label":"Seguimiento Servicios Financieros","sref":"layout.procesarpagossir"},{"prioridad":11,"label":"Seguimiento SAP","sref":"layout.procesarpagossap"}]},{"prioridad":"E","label":"Acciones Legales","sref":"layout","sideBar":[{"prioridad":2,"label":"Gestionar Acción Legal","sref":"layout.tablagestionartutelas"}]},{"prioridad":"H","label":"Novedades","sref":"layout","sideBar":[{"prioridad":1,"label":"Registro de Incapacidades","sref":"layout.incapacidades"},{"prioridad":3,"label":"Registro de Causales de Finalización","sref":"layout.finalizacionsit"}]},{"prioridad":"G","label":"Definición","sref":"layout","sideBar":[{"prioridad":6,"label":"Respuesta de Ajustes","sref":"layout.cargaajustesolicitudescobro"}]}]';
  UPDATE ADVAUTHCXN1.TADV_MENU SET MENDS_NAVBAR = str WHERE MENDS_ROL = 'ProcesadorPagosIT';

  str := '[{"prioridad":"J","label":"Administración","navbar":"layout.administracionnavbar","sref":"layout","sideBar":[{"prioridad":12,"label":"Bandeja de Reintentos","sref":"layout.tareas"},{"prioridad":13,"label":"Roles por comando","sref":"layout.rolesxcomando"},{"prioridad":14,"label":"Roles por locación","sref":"layout.rolesxlocation"},{"prioridad":15,"label":"Actualizar caches","sref":"layout.actualizarcaches"}]}]';
  UPDATE ADVAUTHCXN1.TADV_MENU SET MENDS_NAVBAR = str WHERE MENDS_ROL = 'AnalistaTecnologia';
END;
/

COMMIT;
SPOOL OFF;