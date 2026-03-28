-- 1
select * from empresa_marcos.funcionario;
-- 2
select estado,nome from funcionario;
-- 3
select distinct salario from funcionario;
-- 4
select nome from funcionario where nome like 'R%';
-- 5
select nomedep,numeroFuncGer,nomefun from funcionario,departamento;
-- 6
select numeroFuncGer,nomefun,salario,dataIniGer from funcionario, departamento where salario >= 2000;
-- 7
select * from funcionario where salario=(select max(salario) from (funcionario));
-- 8
select nomeProj, horas from projetos,FuncionarioProjo where numero=2;
-- 9
select SEC_TO_TIME(AVG(TIME_TO_SEC(horas)))  AS tempo_medio  from FuncionarioProjo,projetos where numero=3;
-- 10
select nomeDep,dataNasc from dependente; 
-- 11
select nomeFun,cidade,salario from funcionario where salario >=2200 and cidade = "São Paulo";
-- 12
select nomeFun,nomeDep from dependente,funcionario where numero and numeroFunc;
-- 13
select distinct nomeFun,numeroProj from funcionario, funcionarioprojo;
-- 14
select nomeFun,numeroProj,horas from funcionario,funcionarioprojo where horas >'20:00:00';
-- 15
SELECT * FROM funcionario ORDER BY nomeFun ASC;
-- 16
select nomeFun, cidade, salario from funcionario order by cidade asc, salario desc;
-- 17
select nomeFun,salario from funcionario where salario >=1000 and salario <= 2000;
-- 18

-- 19

-- 20


