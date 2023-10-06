--Liste os nomes das peças e a soma das suas respectivas quantidades

select p.nome, sum(e.quantidade)
from tbl_estoque e
inner join tbl_peca p on (e.cod_peca=p.cod_peca)
group by p.nome

--Liste os nomes das peças e a soma das suas respectivas quantidades, caso a soma das peças seja maior que 20

select p.nome, sum(e.quantidade)
from tbl_estoque e
inner join tbl_peca p on (e.cod_peca=p.cod_peca)
group by p.nome
having sum(e.quantidade)>20
