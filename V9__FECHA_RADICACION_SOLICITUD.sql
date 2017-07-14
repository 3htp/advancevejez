--##################################################
--# @version SP15
--# @autor Ronnie Dave
--###################################################
SPOOL V9__FECHA_RADICACION_SOLICITUD.txt;

ALTER TABLE ADVSITCXN1.TADV_SOLICITUD ADD SOLFE_RADICACION TIMESTAMP(6);
COMMENT ON COLUMN TADV_SOLICITUD.SOLFE_RADICACION IS 'Fecha de radicación de la solicitud';

COMMIT;
SPOOL OFF;