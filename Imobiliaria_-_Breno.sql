create database cidade;
create database imovel;
create database pessoa;

use cidade;
create table cidade( nome_da_cidade varchar(50) not null, 
uf char(2) not null
 );

desc cidade;

insert into cidade() value ('Paulo Bento' , 'RS');
insert into cidade() value ('Erechim' , 'RS');
insert into cidade() value ('Pinhalzinho' , 'SC');
insert into cidade() value ('Erval Grande' , 'RS');
insert into cidade() value ('Rio de Janeiro' , 'RJ');
insert into cidade() value ('Salvador' , 'BA');

select * from cidade;
select nome_da_cidade from cidade where uf = 'RS';
select nome_da_cidade from cidade where uf not in('RS', 'SC');


use imovel;
create table imovel(
descricao varchar(100) not null,
endereco varchar(50)  not null,
cep int not null,
tipo varchar(20) not null,
situacao varchar(20) not null
); 

desc imovel;

insert into imovel() value ('Casa 2 andares' , 'Rua Pinheiro / Erechim ', 58090209, 'Casa', 'Não alugada' );
insert into imovel() value ('Apartamento' , 'Rua Boa / Paulo Bento ', 57010714, 'Apartamento', 'Em Negociação' );
insert into imovel() value ('Casa 1 andar' , 'Rua Orestes / Rio De Janeiro ', 08020080, 'Casa', 'Alugada' );
insert into imovel() value ('Apartamento' , 'Rua do Bode / Salvador', 89160023, 'Apartamento', 'Não alugada' );
insert into imovel() value ('Apartamento' , 'Rua  Bandeirante / Pinhalzinho ', 64060230, 'Apartamento', 'Alugada' );
insert into imovel() value ('Casa 2 andares' , 'Rua Quaraí / Erval Grande ', 68926214, 'Casa', 'Não alugada' );

select * from imovel;
select endereco from imovel where tipo='Casa' or tipo='Apartamento';
select descricao from imovel where situacao='Não alugada' and situacao='Em Negociação';

use pessoa;
create table pessoa(
nome varchar (50) not null,
endereco varchar(50) not null,
cep varchar(50) not null,
tipo_pessoa varchar(10) not null,
telefone bigint(12) not null
); 

desc pessoa;

insert into pessoa() value ('Hélio' , 'Rua gonçalves/ Erechim', 72311210, 'física' , 54997823409 );
insert into pessoa() value ('Jack' , 'Rua Goiás/ Chuí', 68904812, 'jurídica' , 54994378039 );
insert into pessoa() value ('Alberto' , 'Rua F/ Jacutinga', 59149196, 'juridíca' , 54988663409 );
insert into pessoa() value ('Joana' , 'Rua Monroe/ Jacutinga', 29017190, 'física' , 54997832321 );
insert into pessoa() value ('Maia' , 'Rua Patos/ Erechim', 54080101, 'jurídica' , 54967413890 );
insert into pessoa() value ('Helena' , 'Rua Vida/ Erebango', 157080740, 'física' , 54965870931 );

select * from pessoa;
select nome from pessoa where cep between 50000000 and 70000000;
select endereco from pessoa where telefone like '%09'; 

