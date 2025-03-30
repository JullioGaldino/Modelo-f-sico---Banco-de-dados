select * from funcionario;
select * from registro_de_saida;
select * from historico_de_saida;
select * from saida;
select * from caixa;

insert into funcionario (nome, email, senha)
values ('João pedrp', 'João00@gmail.com', 'J#12341');

insert into Registro_de_Saida (Valor, Forma_de_Pg, Desc_produto)
values (1000.0, 'Crédito', 'Produto A');

insert into Registro_de_Saida (Valor, Forma_de_Pg, Desc_produto)
values (150.0, 'Dinheiro', 'Produto B');

insert into Registro_de_Saida (Valor, Forma_de_Pg, Desc_produto)
values (200.0, 'PIX', 'Produto C');

insert into Registro_de_Saida (Valor, Forma_de_Pg, Desc_produto)
values (2000.0, 'Crédito', 'Produto D');

update registro_de_saida
set forma_de_Pg = 'Débito'
where registroId = 2;

update funcionario
set nome = 'João Pedro'
where userId = 1;

delete from registro_de_saida 
where registroId = 4;

alter table registro_de_saida
add constraint fk_userId
foreign key (userId) references (funcionario);

describe funcionario;
describe registro_de_saida;

drop table caixa;
drop table saida;



