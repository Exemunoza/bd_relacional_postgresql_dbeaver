-- Insertar clientes
INSERT INTO clientes (nombre, direccion, correo)
VALUES 
('Juan Pérez', 'Av. Siempre Viva 123', 'juanperez@mail.com'),
('Ana Soto', 'Calle Falsa 456', 'anasoto@mail.com');

-- Insertar pedidos
INSERT INTO pedidos (fecha_pedido, monto_total, id_cliente)
VALUES 
('2025-10-01', 15000.00, 1),
('2025-10-02', 20000.00, 1),
('2025-10-03', 12000.00, 2);

-- Actualizar dirección de un cliente
UPDATE clientes
SET direccion = 'Nueva Dirección 789'
WHERE nombre = 'Juan Pérez';

-- Eliminar un pedido no procesado
DELETE FROM pedidos
WHERE id_pedido = 3;