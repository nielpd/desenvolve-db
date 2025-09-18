select parceiro.id, parceiro.nome_comercial
from parceiro
inner join endereco on parceiro.id = endereco.parceiro_id
inner join area_cobertura on parceiro.id = area_cobertura.parceiro_id
where parceiro.id = 1;