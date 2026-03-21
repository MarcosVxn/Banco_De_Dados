select * from empresa_marcos.funcionario;

select estado,nome from funcionario;

select salario from funcionario;

select distinct salario from funcionario;

select nome from funcionario where nome like 'R%';

select nomedep,numeroFuncGer,nomefun from funcionario,departamento;

select numeroFuncGer,nomefun,salario,dataIniGer from funcionario, departamento where salario >= 2000;

select * from funcionario where saliro=(select max(salario);