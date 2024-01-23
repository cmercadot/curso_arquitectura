create table transaccion_atm( nro_transaccion serial primary key, nro_cuenta  integer,    tipo_transaccion varchar(20),    moneda_transaccion varchar(3),    monto real,    tipo_cambio real,    moneda_cuenta varchar(3),    monto_final real,    estado varchar(20),    fecha timestamp);
CREATE SEQUENCE sec_codigo_cuenta;
create table cuenta(nro_cuenta integer primary   key NOT NULL DEFAULT nextval('sec_codigo_cuenta') ,      cod_cliente integer,      nombre_cuenta varchar(255),      saldo_cuenta  real,      moneda_cuenta varchar(255),      estado varchar(255));
ALTER SEQUENCE sec_codigo_cuenta RESTART WITH 1000;
create table tasa_cambio(moneda varchar(3) primary key, tipo_cambio_venta  real,  tipo_cambio_compra  real);insert into tasa_cambio values('USD',6.97,6.86);insert into tasa_cambio values('BOB',1,1)