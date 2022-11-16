SELECT produto.nome as produto, produto.preco, vendas_data_venda
FROM vendas, vendas_item, produtos
WHERE produtos.id = vendas_item.id_produto and vendas_item.id_venda = vendas.id

SELECT sum(qtd * valor_unit) as total
FROM vendas_item
WHERE id_venda = 1001

SELECT produtos.id, produtos.nome, lista.valor_unit
FROM vendas, vendas_itens as lista, produtos
WHERE lista.id_venda = venda.id and lista.id_produto = produtos 
and vendas.data_venda >= '2022-10-01' and vendas.data_venda <= '2022-10-31'
ORDER by lista.valor_unit ASC