SELECT produtos.descricao as descricao_produto, produtos.data_cadastro, produtos.valor_unitario
FROM produtos
WHERE data_cadastro != null
ORDER BY produtos.descricao ASC

SELECT produtos.descricao as descricao_produto, produtos.data_cadastro, produtos.valor_unitario, fornecedor.nome
FROM produtos, pedidos, fornecedor
WHERE pedidos.cod_produto = produtos.cod and pedidos.cod_fornecedor = fornecedor.cod

SELECT produtos.descricao as descricao_produto, produtos.data_cadastro, produtos.valor_unitario, categoria.nome
FROM produtos, pedidos, categoria
WHERE pedidos.cod_produto = produtos.cod and produtos.cod_categ = categoria.cod_produto

SELECT fornecedor.nome, top 1 fornecedor.data, pedidos.nome
FROM fornecedor, pedidos, produto
WHERE  pedidos.cod_produto = produto.cod and fornecedor.cod = pedidos.cod_fornecedor
ORDER BY fornecedor.data DESC