Create Database db_exemplo;
use db_exemplo;

create table tb_usuario(
IdUsu int primary key auto_increment,
NomeUsu varchar(50) not null,
Cargo varchar(50) not null,
Data date
);

insert into tb_usuario(NomeUsu, Cargo, Data) values ('Bob', 'monstrorista', '2019/04/16');
insert into tb_usuario(NomeUsu, Cargo, Data) values ('Maria', '171', '2019/04/16');

select * from tb_usuario;

DELIMITER $$
CREATE PROCEDURE InsereUsu(
Nome_Usu varchar(50),
Cargo_Usu varchar(50),
DataNasc_Usu date
)
BEGIN 
	INSERT INTO tb_usuario(NomeUsu, Cargo, Data)
		VALUES (Nome_Usu, Cargo_Usu, DataNasc_Usu);
END;
$$

CALL InsereUSU ('Lulux','Papa kill','2022/02/22');

