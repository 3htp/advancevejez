--##################################################
--# @version SP15
--# @autor S4N
--###################################################

SPOOL V36__NUEVO_ROL_HU1240.txt;

--nueva pantalla
INSERT INTO ADVAUTHCXN1.TADV_LOCATIONS (LOCCD_LOCATION,LOCCD_ROOT, LOCDS_DESCRIPCION, LOCDS_LABEL) VALUES ('layout.reabrirsolicitud', 'layout.novedadesnavbar', 'Descripción', 'Reabrir Solicitud Finalizada');

-- pantallas del rol
INSERT INTO ADVAUTHCXN1.TADV_ROLE_X_LOCATION (RXLCD_LOCATION, RXLCD_ROL) VALUES ('layout.reabrirsolicitud', 'AsesorDeLineaDeServicio');

-- SUB MENU REABRIR SOLICITUD PARA USUARIO AsesorDeLineaDeServicio
DECLARE
	str varchar2(7000);
BEGIN
str := '[{"prioridad":"A","label":"Casos","navbar":"","sref":"layout.caso","sideBar":[]},{"prioridad":"C","label":"Asesorías","navbar":"layout.asesorianavbar","sref":"layout","sideBar":[{"prioridad":1,"label":"Asesoría Preliminar Línea","sref":"layout.asesoriapreliminarlinea"},{"prioridad":2,"label":"Asesoría ODS","sref":"layout.asesoria"},{"prioridad":4,"label":"Modificar Asesoría","sref":"layout.modificarasesoria"},{"prioridad":5,"label":"SIT Cuenta Inactiva","sref":"layout.sitcuentainactiva"},{"prioridad":6,"label":"SIT sin incapacidades","sref":"layout.sitsinincapacidades"},{"prioridad":8,"label":"Finalización de Pagos","sref":"layout.finalizaciondepagos"},{"prioridad":7,"label":"Solicitar Historia Clínica","sref":"layout.solicitarhistoriaclinica"}]},{"prioridad":"F","label":"Pagos","navbar":"layout.pagosnavbar","sref":"layout","sideBar":[{"prioridad":5,"label":"Gestión de Cuentas Rechazadas","sref":"layout.gestionarpagosrechazadosbpm"}]},{"prioridad":"H","label":"Novedades","navbar":"layout.novedadesnavbar","sref":"layout","sideBar":[{"prioridad":3,"label":"Registro de Causales de Finalización","sref":"layout.finalizacionsit"},{"prioridad":4,"label":"Reabrir Solicitud Finalizada","sref":"layout.reabrirsolicitud"}]},{"prioridad":"I","label":"Reportes","navbar":"layout.reportesnavbar","sref":"layout","sideBar":[{"prioridad":1,"label":"Reporte de Comunicados","sref":"layout.reportecomunicados"},{"prioridad":2,"label":"Consulta de Solicitudes IT","sref":"layout.consultarsolicitudesit"}]}]';
UPDATE ADVAUTHCXN1.TADV_MENU
SET MENDS_NAVBAR=str
WHERE MENDS_ROL = 'AsesorDeLineaDeServicio';
END;
/

COMMIT;
SPOOL OFF;