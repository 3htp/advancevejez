--##################################################
--# @version Sprint 15
--# @autor Julian Giraldo
--###################################################
SPOOL V8__ADD_FECHA_DETENCION_COBRO.txt;

ALTER TABLE ADVSITCXN1.TADV_BANDEJA_COBROS ADD BCOFE_DETENCION_COBRO TIMESTAMP(6);

COMMIT;
SPOOL OFF;