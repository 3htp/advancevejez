SPOOL V41__ARREGLO_LABEL_PAGOS.txt;

UPDATE TADV_LOCATIONS SET LOCDS_LABEL = 'Gestión de Pagos Rechazados' WHERE LOCCD_LOCATION = 'layout.gestionarpagosrechazados';
UPDATE TADV_LOCATIONS SET LOCDS_LABEL = 'Finalización de Pagos' WHERE LOCCD_LOCATION = 'layout.finalizaciondepagos';

COMMIT;
SPOOL OFF;