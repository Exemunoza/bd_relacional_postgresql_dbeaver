-- Tabla de clientes
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    correo VARCHAR(100)
);


-- Tabla de pedidos
CREATE TABLE pedidos (
    id_pedido SERIAL PRIMARY KEY,
    fecha_pedido DATE NOT NULL,
    monto_total DECIMAL(10,2),
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

SELECT * FROM clientes;
