--##################################################
--# @version S15
--# @autor Andres
--###################################################
SPOOL V5__add_FechaInicioIncapacidad.txt;

alter table ADVTUTELACXN1.TADV_TUTELAS add TUTFE_INICIO_INCAPACIDAD timestamp(6) with time zone default null;
COMMENT ON COLUMN TADV_TUTELAS.TUTFE_INICIO_INCAPACIDAD IS 'Fecha inicio de pago original, esta fecha no se debería modificar, una vez establecida. Se usa como referencia para proyectar o deflactar el IBC';

COMMIT;
SPOOL OFF;