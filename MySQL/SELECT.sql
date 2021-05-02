use bd_locadora_2dsiem_2020;

/*Questão 1*/
select TB_CLIENTE_NOME, TB_CLIENTE_ENDERECO, TB_CLIENTE_COMPLEMENTO, TB_CLIENTE_UF 
from tb_cliente
where TB_CLIENTE_UF = 'SP';

/*Questão 2*/
select  TB_CLIENTE_NOME, TB_CLIENTE_ENDERECO, TB_CLIENTE_COMPLEMENTO
from tb_cliente
where TB_CLIENTE_COMPLEMENTO = "";

/*Questão 3*/
select TB_MARCA_NOME
from tb_marca
order by TB_MARCA_NOME asc;

/*Questão 4*/
select TB_CLIENTE_NOME, TB_CLIENTE_EMAIL from tb_cliente
where TB_CLIENTE_EMAIL like "%hotmail%";

/*Questão 5*/
select TB_CLIENTE_NOME, TB_CLIENTE_ENDERECO from tb_cliente
where TB_CLIENTE_ENDERECO like "%rua%";
 
/*Questão 6*/
select TB_CLIENTE_NOME from tb_cliente
order by TB_CLIENTE_NOME ASC; 

/*Questão 7*/
select COUNT(TB_AUTOMOVEL_ID) from TB_AUTOMOVEL;

/*Questão 8*/
select COUNT(TB_CLIENTE_ID) from TB_CLIENTE 
where TB_CLIENTE_EMAIL like "%yahoo%";

/*Questão 9*/
select min(TB_AUTOMOVEL_KM) from TB_AUTOMOVEL;

/*Questão 10*/
Select TB_CLIENTE_UF,COUNT(TB_CLIENTE_UF) TOTAL
from TB_CLIENTE
group by (TB_CLIENTE_UF) ;


/*Questão 11*/
select TB_CLIENTE_CIDADE, TB_CLIENTE_UF, COUNT(TB_CLIENTE_CIDADE) TOTAL 
from TB_CLIENTE 
group by (TB_CLIENTE_CIDADE);

/*Questão 12*/
select * from TB_LOCACAO 
where TB_LOCACAO_ID > 0 
order by TB_LOCACAO_ID desc limit 3;
