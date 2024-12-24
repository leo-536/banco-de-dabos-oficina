use oficina;
-- drop database oficina;
show tables; 
show databases;
desc Cliente;
 insert into Cliente(idCLiente,nome,sobrenome,cpf,estado,cep,rua,telefone)
				values( '1','joao','francisco','15264875369','sp','79584141','avenida A','11985242462'),
                ( '2','pedro','gusmao','42638956214','sp','79584651','avenida B','11995242612'),
                ( '3','jorge','francis','87129595361','sp','79584545','avenida C','11998529696'),
                ( '4','joana','silva','02146589810','rj','79584678','rua AB','11998527485'),
                ( '5','leonardo','pereira','44769521453','mt','79584668','avenida D','11998525652'),
                ( '6','joao','souza','15545875331','ms','79587892','rua H','11998522352'),
                ( '7','henrique','silva','44599221544','mg','79581597','avenida AK','11998527813'),
                ( '8','cleusa','ferreira','22356174845','sp','79583636','avenida AJ','11998521365'),
                ( '9','maria','alencar','15264875568','mg','79584718','rua AH','11998529785'),
                ( '10','matheus','vieira','67848753699','rj','79586647','rua AU','11998526657');
                
insert into  Mecanico(idMecanico,nome,especialidade)               
                values('9','marco','eletrica'),
					  ('6','antonio','alinhamento'),
					  ('8','marcelo','motor');									
                     
         
insert into Veiculo(idVeiculo,modelo,placa,ano,cor,montadora)
				values('1','hb20','qwe1a56','2017','cinza','hyundai'),
						('2','uno','rty1254','2014','vaermelho','fiat'),
						('3','gol','nbm8985','2010','preto','volkswagen'),
						('4','gol','lkj6319','2022','vermelho','volkswagen'),
						('5','cobalt','eog6b82','2012','branco','chevrolet'),
						('6','s10','hmk2014','2014','branco','chevrolet'),
						('7','mobi','llo4588','2020','preto','fiat');
					
insert into Peca(idPeca,nomeP,valor,localizacao,quantidade)
			  values('1','parafuso 8x60','5.00','A-012','50'),
					('2','oleo 5w40','50.00','balcao','200'),
					('3','vela','45.50','B-069','20'),
					('4','cachinbo vela','40.00','A-135','4'),
					('5','oleo15w50','45.00','balcao','196');

insert into OS(idOS,data_emissao,data_entrega,valor_total)
			values ('1','2024-05-13','2024-05-14','200.00'),
                   ('2','2023-04-06','2023-04-08','400.00'),
                   ('3','2024-05-15','2024-05-20','100.00'),
                   ('4','2024-10-28','2024-10-28','200.00'),
                   ('5','2023-09-20','2023-09-21','300.00'),
                   ('6','2024-05-16','2024-05-18','150.00'),
                   ('7','2023-04-05','2023-04-06','200.00'),
                   ('8','2024-05-10','2024-05-10','300.00'),
                   ('9','2022-10-26','2022-10-29','100.00'),
				   ('10','2023-09-02','2023-09-02','250.00');
            
insert into Equipe(idEquipe)
        values('9'),
			  ('6'),
              ('8');
        
show databases;
show tables;
desc Veiculo;
            
select idCLiente,nome
from Cliente
or
;

SELECT nome,modelo
FROM Cliente
INNER JOIN Veiculo ON idCliente = idVeiculo;

SELECT *
FROM Cliente
INNER JOIN Veiculo ON idCliente = idVeiculo
order by ano ;


desc OS;
SELECT data_entrega,valor_total,nome,sobrenome
 FROM OS
 inner join Cliente on idCliente = idOS
 order by nome;
 
 select c.nome,sobrenome, s.valor_total
 from Cliente c
 inner join OS s on c.idCliente = s.idOS
 order by nome
;
 
 select localizacao,quantidade,nomeP
 from Peca
 order by localizacao  ;
 
 select c.nome,p.nomeP
 from Cliente c
 join peca p on c.idCliente = p.idPeca
 ;
 
 
 select c.nome,m.nome
 from Cliente c
 inner join Mecanico m on c.idCliente = m.idMecanico;
 
 SELECT * 
FROM OS_Mecanico
inner join ;
 
 
 
 
 
 
 
 
 
 
 
 