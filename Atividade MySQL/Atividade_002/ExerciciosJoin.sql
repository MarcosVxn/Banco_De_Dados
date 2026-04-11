USE medicamentos;

-- 1
SELECT venda.data_venda,cliente.nome_cliente FROM venda INNER JOIN cliente ON venda.cpf_cliente = cliente.cpf_cliente ORDER BY nome_cliente ASC;
-- 2
SELECT cliente.nome_cliente, 
cliente_endereco.cidade, 
cliente_endereco.estado, 
cliente_telefone.telefone_celular
FROM cliente
INNER JOIN cliente_endereco
ON cliente.cpf_cliente = cliente_endereco.cpf_cliente
INNER JOIN cliente_telefone
ON cliente.cpf_cliente = cliente_telefone.cpf_cliente
ORDER BY nome_cliente;
-- 3
select m. nome as remedio, f.nome_fantasia as fabricante
from medicamento as m
inner join fabricante as f
on m.codigo_fabricante = f.codigo
order by m.nome;
-- 4
select v.codigo as codigo, c.nome_cliente as cliente, m.nome as nome_medicamento, v.quantidade, v.data_venda
from venda as v
inner join cliente as c
on v.cpf_cliente = c.cpf_cliente
inner join medicamento as m
on v.codigo_medicamento = m.codigo
order by data_venda desc;
-- 5