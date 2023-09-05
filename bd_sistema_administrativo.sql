-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema television
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema television
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `television` DEFAULT CHARACTER SET utf8 ;
USE `television` ;

-- -----------------------------------------------------
-- Table `television`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`empleados` (
  `id_empleado` INT NOT NULL AUTO_INCREMENT,
  `nombres_empleado` TEXT(30) NOT NULL,
  `apellidos_empleado` TEXT(50) NOT NULL,
  `identidad_empleado` VARCHAR(15) NOT NULL,
  `genero_empleado` VARCHAR(1) NOT NULL,
  `edad_empleado` VARCHAR(10) NOT NULL,
  `telefono_empleado` VARCHAR(16) NOT NULL,
  `correo_empleado` VARCHAR(50) NOT NULL,
  `direccion_empleado` LONGTEXT NOT NULL,
  `direccion_foto_empleado` LONGTEXT NOT NULL,
  `referencia_empleado` VARCHAR(30) NOT NULL,
  `telefono_referencia` VARCHAR(16) NOT NULL,
  `fecha_nacimiento_empleado` TEXT NOT NULL,
  `fecha_registro_empleado` TEXT NOT NULL,
  `fecha_inicio_labores_empleado` TEXT NOT NULL,
  `usuario_empleado` VARCHAR(10) NOT NULL,
  `nombre_cargo_empleado` VARCHAR(30) NOT NULL,
  `sueldo_cargo_empleado` DECIMAL(10,2) NOT NULL,
  `hora_extra_cargo_empleado` DECIMAL(10,2) NOT NULL,
  `obligaciones_cargo_empleado` LONGTEXT NOT NULL,
  `tipo_horario_empleado` TEXT(20) NOT NULL,
  `dias_horario_empleado` TEXT(30) NOT NULL,
  `horas_horario_empleado` VARCHAR(20) NOT NULL,
  `identidad_contrato_empleado_asignado` VARCHAR(15) NOT NULL,
  `tipo_contrato_empleado_asignado` TEXT(20) NOT NULL,
  `tiempo_contrato_empleado_asignado` VARCHAR(20) NOT NULL,
  `foto_contrato_empleado_asignado` LONGTEXT NOT NULL,
  PRIMARY KEY (`id_empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`cargos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`cargos` (
  `id_cargo` INT NOT NULL AUTO_INCREMENT,
  `area_cargo` VARCHAR(30) NOT NULL,
  `nombre_cargo` VARCHAR(30) NOT NULL,
  `sueldo_cargo` DECIMAL(10,2) NOT NULL,
  `valor_hora_extra_cargo` DECIMAL(10,2) NOT NULL,
  `funciones_cargo` LONGTEXT NOT NULL,
  PRIMARY KEY (`id_cargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`horarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`horarios` (
  `id_horario` INT NOT NULL AUTO_INCREMENT,
  `tipo_horario` TEXT(20) NOT NULL,
  `dias_horario` TEXT(30) NOT NULL,
  `horas_horario` VARCHAR(20) NOT NULL,
  `descripcion_horario` TEXT(50) NOT NULL,
  `observacion_horario` TEXT(50) NOT NULL,
  PRIMARY KEY (`id_horario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`planillas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`planillas` (
  `id_planilla` INT NOT NULL AUTO_INCREMENT,
  `fecha_planilla` TEXT NOT NULL,
  `nombres_planilla` VARCHAR(40) NOT NULL,
  `apellidos_planilla` VARCHAR(50) NOT NULL,
  `identidad_planilla` VARCHAR(15) NOT NULL,
  `cargo_planilla` VARCHAR(30) NOT NULL,
  `sueldo_bruto_planilla` DECIMAL(10,2) NOT NULL,
  `total_deducciones_planilla` DECIMAL(10,2) NOT NULL,
  `total_bonificaciones_planilla` DECIMAL(10,2) NOT NULL,
  `sueldo_neto_planilla` DECIMAL(10,2) NOT NULL,
  `total_apagar_planilla` DECIMAL(10,2) NOT NULL,
  `nombre_planilla` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_planilla`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`deducciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`deducciones` (
  `id_deduccion` INT NOT NULL AUTO_INCREMENT,
  `tipo_deduccion` VARCHAR(45) NOT NULL,
  `observacion_deduccion` VARCHAR(45) NOT NULL,
  `identidad_empleado_deduccion` VARCHAR(15) NOT NULL,
  `cantidad_deduccion` DECIMAL(10,2) NOT NULL,
  `fecha_deduccion` TEXT NOT NULL,
  PRIMARY KEY (`id_deduccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`bonificaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`bonificaciones` (
  `id_bonificacion` INT NOT NULL AUTO_INCREMENT,
  `tipo_bonificacion` VARCHAR(45) NOT NULL,
  `observacion_bonificacion` VARCHAR(45) NOT NULL,
  `identidad_empleado_bonificacion` VARCHAR(15) NOT NULL,
  `cantidad_bonificacion` DECIMAL(10,2) NOT NULL,
  `fecha_bonificacion` TEXT NOT NULL,
  PRIMARY KEY (`id_bonificacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`servicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`servicios` (
  `id_servicio` INT NOT NULL AUTO_INCREMENT,
  `tipo_servicio` VARCHAR(50) NOT NULL,
  `tiempo_servicio` VARCHAR(20) NOT NULL,
  `precio_servicio` DECIMAL NOT NULL,
  `descripcion_servicio` LONGTEXT NOT NULL,
  `producto_servicio` VARCHAR(50) NULL,
  PRIMARY KEY (`id_servicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`inventario` (
  `id_inventario` INT NOT NULL AUTO_INCREMENT,
  `nombre_objeto_inventario` VARCHAR(30) NOT NULL,
  `precio_objeto_inventario` DECIMAL(10,2) NOT NULL,
  `descripcion_objeto_inventario` LONGTEXT NOT NULL,
  `peso_objeto_inventario` VARCHAR(30) NOT NULL,
  `color_objeto_inventario` VARCHAR(20) NOT NULL,
  `marca_objeto_inventario` VARCHAR(50) NOT NULL,
  `modelo_objeto_inventario` VARCHAR(45) NOT NULL,
  `cantidad_objeto_inventario` INT NOT NULL,
  `existencias_objeto_inventario` INT NOT NULL,
  `fecha_registro_inventario` TEXT NOT NULL,
  PRIMARY KEY (`id_inventario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`sar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`sar` (
  `id_sar` INT NOT NULL AUTO_INCREMENT,
  `cai_sar` VARCHAR(40) NOT NULL,
  `formato_sar` VARCHAR(45) NOT NULL,
  `rango_inicial_sar` INT NOT NULL,
  `rango_final_sar` INT NOT NULL,
  `factura_actual_sar` INT NOT NULL,
  `fecha_limite_sar` TEXT NOT NULL,
  PRIMARY KEY (`id_sar`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`ingresos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`ingresos` (
  `id_ingreso` INT NOT NULL AUTO_INCREMENT,
  `tipo_ingreso` VARCHAR(100) NOT NULL,
  `cantidad_ingreso` DECIMAL(10,2) NOT NULL,
  `descripcion_ingreso` TEXT NOT NULL,
  `fecha_ingreso` TEXT NOT NULL,
  PRIMARY KEY (`id_ingreso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`egresos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`egresos` (
  `id_egreso` INT NOT NULL AUTO_INCREMENT,
  `tipo_egreso` VARCHAR(50) NOT NULL,
  `cantidad_egreso` DECIMAL(10,2) NOT NULL,
  `descripcion_egreso` LONGTEXT NOT NULL,
  `fecha_egreso` TEXT NOT NULL,
  PRIMARY KEY (`id_egreso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`productos` (
  `id_producto` INT(8) NOT NULL AUTO_INCREMENT,
  `dispositivo_de_entrega_producto` TEXT(20) NOT NULL,
  `marca_producto` TEXT(20) NOT NULL,
  `capacidad_produto` VARCHAR(20) NOT NULL,
  `color_producto` TEXT(20) NOT NULL,
  `precio_producto` DECIMAL(10,2) NOT NULL,
  `direccion_foto_producto` LONGTEXT NOT NULL,
  `cantidad_producto` INT NOT NULL,
  `existencia_producto` INT NOT NULL,
  `fecha_registro_producto` TEXT NOT NULL,
  PRIMARY KEY (`id_producto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`clientes` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombres_cliente` TEXT(20) NOT NULL,
  `apellidos_cliente` TEXT(20) NOT NULL,
  `direccion_cliente` LONGTEXT NOT NULL,
  `telefono_cliente` VARCHAR(14) NOT NULL,
  `correo_cliente` VARCHAR(50) NOT NULL,
  `genero_cliente` VARCHAR(10) NOT NULL,
  `identidad_cliente` VARCHAR(15) NOT NULL,
  `foto_cliente` LONGTEXT NOT NULL,
  `nombre_empresa_cliente` TEXT(50) NOT NULL,
  `descripcion_empresa_cliente` LONGTEXT NOT NULL,
  `direccion_empresa_cliente` VARCHAR(50) NOT NULL,
  `rtn_empresa_cliente` VARCHAR(14) NOT NULL,
  `telefono_empresa_cliente` VARCHAR(9) NOT NULL,
  `correo_empresa_cliente` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`empresa` (
  `id_empresa` INT NOT NULL AUTO_INCREMENT,
  `nombre_empresa` VARCHAR(50) NOT NULL,
  `direccion_empresa` VARCHAR(50) NOT NULL,
  `telefono_empresa` VARCHAR(9) NOT NULL,
  `rtn_empresa` VARCHAR(30) NOT NULL,
  `direccion_logo_empresa` LONGTEXT NOT NULL,
  `direccion_foto_empresa` LONGTEXT NOT NULL,
  `correo_empresa` VARCHAR(30) NOT NULL,
  `cuenta_bancaria_empresa` LONGTEXT NOT NULL,
  PRIMARY KEY (`id_empresa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`proveedores` (
  `id_proveedor` INT NOT NULL AUTO_INCREMENT,
  `nombres_proveedor` TEXT(50) NOT NULL,
  `cuenta_bancaria_proveedor` VARCHAR(50) NOT NULL,
  `direccion_proveedor` VARCHAR(100) NOT NULL,
  `rtn_proveedor` VARCHAR(15) NOT NULL,
  `telefono_proveedor` VARCHAR(13) NOT NULL,
  `correo_electronico_proveedor` VARCHAR(50) NOT NULL,
  `foto_proveedor` LONGTEXT NOT NULL,
  PRIMARY KEY (`id_proveedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`facturas_compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`facturas_compras` (
  `id_factura` INT NOT NULL AUTO_INCREMENT,
  `fecha_factura` TEXT NOT NULL,
  `compra_factura` VARCHAR(50) NOT NULL,
  `precio_factura` DOUBLE(10,2) NOT NULL,
  `cantidad_factura` INT NOT NULL,
  `descripcion_factura` LONGTEXT NOT NULL,
  `foto_factura` LONGTEXT NOT NULL,
  PRIMARY KEY (`id_factura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`contrato_empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`contrato_empleado` (
  `id_contrato_empleado` INT(8) NOT NULL AUTO_INCREMENT,
  `tiempo_contrato_empleado` VARCHAR(20) NOT NULL,
  `tipo_contrato_empleado` TEXT(20) NOT NULL,
  `direccion_foto_contrato_empleado` LONGTEXT NOT NULL,
  `identidad_contrato_empleado` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_contrato_empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`contrato_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`contrato_cliente` (
  `id_contrato_cliente` INT NOT NULL AUTO_INCREMENT,
  `tipo_contrato_cliente` VARCHAR(20) NOT NULL,
  `tiempo_contrato_cliente` VARCHAR(20) NOT NULL,
  `foto_contrato_cliente` LONGTEXT NOT NULL,
  `identidad_rtn_cliente` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_contrato_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`facturas_clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`facturas_clientes` (
  `id_facturas_cliente` INT NOT NULL AUTO_INCREMENT,
  `numero_factura_cliente` VARCHAR(45) NOT NULL,
  `fecha_hora_factura_cliente` VARCHAR(50) NOT NULL,
  `firma_cliente` VARCHAR(50) NOT NULL,
  `rtn_factura_cliente` VARCHAR(45) NULL,
  `direccion_cliente` VARCHAR(50) NULL,
  `por_concepto_cliente` TEXT(100) NOT NULL,
  `cantidad_letras_cliente` VARCHAR(50) NOT NULL,
  `cantidad_pagada_cliente` DECIMAL(10,2) NOT NULL,
  `empleado_atencion_cliente` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_facturas_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  `identidad` VARCHAR(15) NOT NULL,
  `nombre` VARCHAR(75) NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `tipo_usuario` VARCHAR(45) NOT NULL,
  `permiso_todo` VARCHAR(2) NULL,
  `permiso_empleado` VARCHAR(2) NULL,
  `permiso_cargo` VARCHAR(2) NULL,
  `permiso_horario` VARCHAR(2) NULL,
  `permiso_contrato_e` VARCHAR(2) NULL,
  `permiso_cliente` VARCHAR(2) NULL,
  `permiso_contrato_c` VARCHAR(2) NULL,
  `permiso_compra` VARCHAR(2) NULL,
  `permiso_proveedor` VARCHAR(2) NULL,
  `permiso_inventario` VARCHAR(2) NULL,
  `permiso_factura_c` VARCHAR(2) NULL,
  `permiso_factura_e` VARCHAR(2) NULL,
  `permiso_sar` VARCHAR(2) NULL,
  `permiso_ingreso` VARCHAR(2) NULL,
  `permiso_producto` VARCHAR(2) NULL,
  `permiso_servicio` VARCHAR(2) NULL,
  `permiso_venta` VARCHAR(2) NULL,
  `permiso_egreso` VARCHAR(2) NULL,
  `permiso_bonificacion` VARCHAR(2) NULL,
  `permiso_deduccion` VARCHAR(2) NULL,
  `permiso_planilla` VARCHAR(2) NULL,
  `permiso_empresa` VARCHAR(2) NULL,
  `permiso_opciones` VARCHAR(2) NULL,
  `permiso_usuarios` VARCHAR(2) NULL,
  `permiso_acercade` VARCHAR(2) NULL,
  `direccion_foto_usuario` LONGTEXT NOT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`historial_planillas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`historial_planillas` (
  `id_planilla_final` INT NOT NULL AUTO_INCREMENT,
  `tipo_planilla_final` VARCHAR(20) NOT NULL,
  `nombre_planilla_final` VARCHAR(45) NOT NULL,
  `fecha_crecion_planilla_final` TEXT NOT NULL,
  `fecha_pago_planilla_final` TEXT NOT NULL,
  `total_deducciones_planilla_final` DECIMAL(10,2) NULL,
  `total_bonificaciones_planilla_final` DECIMAL(10,2) NULL,
  `total_sueldos_planilla_final` DECIMAL(10,2) NULL,
  `total_pago_planilla_final` DECIMAL(10,2) NULL,
  `estado_planilla` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_planilla_final`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`configuraciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`configuraciones` (
  `id_configuracion` INT NOT NULL AUTO_INCREMENT,
  `sonido_configuracion` VARCHAR(20) NOT NULL,
  `frase_configuracion` VARCHAR(100) NOT NULL,
  `tema_configuracion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_configuracion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`compras` (
  `id_compra` INT NOT NULL AUTO_INCREMENT,
  `nombre_objeto_compra` VARCHAR(30) NOT NULL,
  `precio_objeto_compra` DECIMAL(10,2) NOT NULL,
  `descripcion_objeto_compra` LONGTEXT NOT NULL,
  `peso_objeto_compra` VARCHAR(30) NOT NULL,
  `color_objeto_compra` VARCHAR(20) NOT NULL,
  `marca_objeto_compra` VARCHAR(50) NOT NULL,
  `modelo_objeto_compra` VARCHAR(45) NOT NULL,
  `cantidad_objeto_compra` INT NOT NULL,
  `fecha_registro_compra` TEXT NOT NULL,
  PRIMARY KEY (`id_compra`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `television`.`ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `television`.`ventas` (
  `id_venta` INT NOT NULL AUTO_INCREMENT,
  `nombre_objeto_venta` VARCHAR(30) NOT NULL,
  `descripcion_objeto_venta` LONGTEXT NOT NULL,
  `peso_objeto_venta` VARCHAR(30) NOT NULL,
  `color_objeto_venta` VARCHAR(20) NOT NULL,
  `marca_objeto_venta` VARCHAR(50) NOT NULL,
  `modelo_objeto_venta` VARCHAR(45) NOT NULL,
  `existencia_objeto_venta` INT NOT NULL,
  `cantidad_objeto_venta` INT NOT NULL,
  `precio_compra_venta` DECIMAL(10,2) NOT NULL,
  `precio_venta` VARCHAR(45) NOT NULL,
  `fecha_registro_venta` TEXT NOT NULL,
  PRIMARY KEY (`id_venta`))
ENGINE = InnoDB;

set global time_zone= '-6:00';

use television;

insert into usuario values(
1,
"admin",
"pass",
"0",
"Cristian Diaz",
"Programador",
"Super Usuario",
"SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI","SI",
"/src/iconos/super.png");

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
