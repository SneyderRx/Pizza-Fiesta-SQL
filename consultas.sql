INSERT INTO clientes(
    id_cliente,
    nombre,
    telefono
) VALUES
(1, 'Ana Perez', 301256482);

INSERT INTO direccion(
    id_direccion,
    id_cliente,
    calle,
    carrera,
    nomenclatura,
    barrio,
    ciudad
) VALUES
(1, 1, '34a', '17', '#31-78', 'La Paz', 'Bucaramanga');

INSERT INTO producto(
    id_producto,
    nombre,
    tipo_producto,
    presentacion,
    precio,
    stock
) VALUES
(1, 'Pizza Hawaiana', 'Pizza', 'Grande', '76.000', 35);

INSERT INTO producto(
    id_producto,
    nombre,
    tipo_producto,
    presentacion,
    precio,
    stock
) VALUES
(2, 'Coca Cola', 'Bebida', 'Pequeña', '1.500', 50);

INSERT INTO ingredientes(
    id_ingrediente,
    nombre,
    cantidad_porciones,
    precio_porcion,
    stock
) VALUES
(1, 'Aceitunas', 14, 1.800, 28);