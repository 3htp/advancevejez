--##################################################
--# @version SP15
--# @autor Jefferson Zapata
--###################################################
SPOOL V7__UPDATE_FECHA_INICIAL_PAGO.txt;

UPDATE ADVTUTELACXN1.TADV_TUTELAS SET TUTFE_INICIO_INCAPACIDAD = TUTFE_INICIO_PAGO WHERE TUTFE_INICIO_INCAPACIDAD IS NULL AND TUTFE_INICIO_PAGO IS NOT NULL ;

COMMIT;
SPOOL OFF;