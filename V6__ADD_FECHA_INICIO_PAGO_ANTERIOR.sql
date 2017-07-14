--##################################################
--# @version S15
--# @autor JEFF
--###################################################
SPOOL V6__ADD_FECHA_INICIO_PAGO_ANTERIOR.txt;

alter table ADVTUTELACXN1.TADV_TUTELAS add TUTFE_INICIO_PAGO_ANTERIOR timestamp(6) with time zone default null;

COMMENT ON COLUMN TADV_TUTELAS.TUTFE_INICIO_PAGO_ANTERIOR IS 'Contiene la fecha inicio de pago anterior';

COMMIT;
SPOOL OFF;