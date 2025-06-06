# Pizza Fiesta

### Diagrama ER
![alt text](image.png)

### Tablas

- Estructura de las tablas para crearlas en MySQL


```sql
CREATE TABLE `clientes` (
    `id_cliente` INTEGER(3) NOT NULL,
    `nombre` VARCHAR(60) NOT NULL,
    `telefono` INTEGER(10) NOT NULL,
    PRIMARY KEY (`id_cliente`)
);

CREATE TABLE `direccion` (
    `id_direccion` INTEGER(3) NOT NULL,
    `id_cliente` INTEGER(3) NOT NULL,
    `calle` VARCHAR(15) NOT NULL,
    `carrera` INTEGER NOT NULL,
    `nomenclatura` VARCHAR(15) NOT NULL,
    `barrio` VARCHAR(15) NOT NULL,
    `ciudad` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`id_direccion`)
);

CREATE TABLE `pedidos` (
    `id_pedido` INTEGER(3) NOT NULL,
    `id_cliente` INTEGER(3) NOT NULL,
    `fecha_pedido` DATE NOT NULL,
    `hora_entrega` DATE NOT NULL,
    `estado` VARCHAR(15) NOT NULL,
    `pagado` TINYINT(1) NOT NULL,
    PRIMARY KEY (`id_pedido`)
);

CREATE TABLE `detalles_pedido` (
    `id_detalle` INTEGER(3) NOT NULL,
    `id_pedido` INTEGER(3) NOT NULL,
    `id_producto` INTEGER(3) NOT NULL,
    `id_ingrediente` INTEGER(3) NOT NULL,
    `id_combo` INTEGER(3) NOT NULL,
    `cantidad` INTEGER(2) NOT NULL,
    `precio_unitario` INTEGER NOT NULL,
    PRIMARY KEY (`id_detalle`)
);

CREATE TABLE `pizzas` (
    `id_pizza` INTEGER NOT NULL,
    `tamaño` INTEGER NOT NULL
);

CREATE TABLE `bebidas` (
    `id_bebida` INTEGER NOT NULL,
    `Column1` INTEGER NOT NULL
);

CREATE TABLE `ingredientes` (
    `id_ingrediente` INTEGER(3) NOT NULL,
    `nombre` VARCHAR(20) NOT NULL,
    `cantidad_porciones` INTEGER NOT NULL,
    `precio_porcion` INTEGER NOT NULL,
    `stock` INTEGER NOT NULL,
    PRIMARY KEY (`id_ingrediente`)
);

CREATE TABLE `combos` (
    `id_combo` INTEGER(3) NOT NULL,
    `nombre_pizza` VARCHAR(50) NOT NULL,
    `presentacion_pizza` VARCHAR(15) NOT NULL,
    `bebida` VARCHAR(50) NOT NULL,
    `presentacion_bebida` VARCHAR(15) NOT NULL,
    `precio` INTEGER NOT NULL,
    `stock` INTEGER NOT NULL,
    PRIMARY KEY (`id_combo`)
);

CREATE TABLE `producto` (
    `id_producto` INTEGER(3) NOT NULL,
    `nombre` VARCHAR(50) NOT NULL,
    `tipo_producto` VARCHAR(15) NOT NULL,
    `presentacion` VARCHAR(15) NOT NULL,
    `precio` INTEGER NOT NULL,
    `stock` INTEGER NOT NULL,
    PRIMARY KEY (`id_producto`)
);

ALTER TABLE `direccion` ADD FOREIGN KEY (`id_cliente`) REFERENCES `clientes`(`id_cliente`);
ALTER TABLE `pedidos` ADD FOREIGN KEY (`id_cliente`) REFERENCES `clientes`(`id_cliente`);
ALTER TABLE `detalles_pedido` ADD FOREIGN KEY (`id_pedido`) REFERENCES `pedidos`(`id_pedido`);
ALTER TABLE `detalles_pedido` ADD FOREIGN KEY (`id_producto`) REFERENCES `producto`(`id_producto`);
ALTER TABLE `detalles_pedido` ADD FOREIGN KEY (`id_ingrediente`) REFERENCES `ingredientes`(`id_ingrediente`);
ALTER TABLE `detalles_pedido` ADD FOREIGN KEY (`id_combo`) REFERENCES `combos`(`id_combo`);
```

# Consultas

1. **Registrar un nuevo cliente:**


```sql
INSERT INTO clientes(
    id_cliente,
    nombre,
    telefono
) VALUES
(1, 'Ana Perez', 301256482);


```