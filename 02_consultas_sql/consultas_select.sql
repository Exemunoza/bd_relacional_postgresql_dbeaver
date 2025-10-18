-- Obtener todos los pedidos de un cliente específico
SELECT p.id_pedido, p.fecha_pedido, p.monto_total
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
WHERE c.nombre = 'Juan Pérez';

-- Agrupar pedidos por cliente
SELECT c.nombre, COUNT(p.id_pedido) AS total_pedidos, SUM(p.monto_total) AS total_compras
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nombre;