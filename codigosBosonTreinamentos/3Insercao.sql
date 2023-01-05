insert into clientes (nome_cliente,sobrenome_cliente) values ('Fabio', 'dos Reis');

select * from clientes;

-- inserir varios dados de uma vez soh
insert into produtos (nome_produto,descricao,preco,qtde_estoque) values 
('Álcool em gel', 'Garrafa de álcool em gel de 1L', 12.98, 20),
('Luvas de látex', 'Caixas de luvas de látex com 100 unidades', 32.50, 25),
('Pasta de dentes', 'Tubo de pasta de dentes com 90g', 3.60, 12),
('Sabonete', 'Sabonete anti-bacteriado', 3.50, 5),
('Enxaguante bucal', 'Antiseptico bucal de 500ml', 17.00, 28);

select * from produtos;

insert into pedidos (cod_cliente,cod_produto,qtde) values 
(1,2,3),
(2,3,2),
(1,3,4);

select * from pedidos;