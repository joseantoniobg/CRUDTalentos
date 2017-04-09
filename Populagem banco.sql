DELETE FROM Formularios_Campos_Perguntas
DELETE FROM Campos
DELETE FROM Respostas
DELETE FROM Perguntas
DELETE FROM Formularios


DBCC CHECKIDENT ('Campos', RESEED, 0);
DBCC CHECKIDENT ('Perguntas', RESEED, 0);
DBCC CHECKIDENT ('Respostas', RESEED, 0);
DBCC CHECKIDENT ('Formularios', RESEED, 0);

INSERT INTO Campos (Campo, classe, Obrigatorio)
VALUES ('Skype: ( please create an account if you dont have yet / Bom criar caso não tenha )', '', 1),
       ('Telefone/Phone (Whatsapp):', 'telefone', 1),
	   ('Linkedin:', '', 0),
	   ('Cidade / City:', '', 1),
	   ('Estado / State:', '', 1),
	   ('Portfolio:', '', 0),
	   ('What is your hourly salary requirements? / Qual sua pretensão salarial por hora?', 'dinheiro', 1),
	   ('Bank / Banco ( Itau, Bradesco, ect..)', '', 0),
	   ('Agency / Agencia', '', 0),
	   ('Account Number / Número da conta', '', 0),
	   ('Do you know any other language or framework that was not listed above? Tell us and evaluate yourself from 0 to 5. / Conhece mais alguma linguagem ou framework que não foi listado aqui em cima? Conte para nos e se auto avalie ainda de 0 a 5.', '', 0),
	   ('Link CRUD', '', 0)


INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('What is your willingness to work today? / Qual é sua disponibilidade para trabalhar hoje?', 0, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('Up to 4 hours per day / Até 4 horas por dia', 1),
													 ('4 to 6 hours per day / De 4 á 6 horas por dia', 1),
													 ('6 to 8 hours per day /De 6 á 8 horas por dia', 1),
													 ('Up to 8 hours a day (are you sure?) / Acima de 8 horas por dia (tem certeza?)', 1),
													 ('Only weekends / Apenas finais de semana', 1)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Whats the best time to work for you? / Pra você qual é o melhor horário para trabalhar?', 0, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('Morning (from 08:00 to 12:00) / Manhã (de 08:00 ás 12:00)', 2),
													 ('Afternoon (from 1:00 p.m. to 6:00 p.m.) / Tarde (de 13:00 ás 18:00)', 2),
													 ('Night (7:00 p.m. to 10:00 p.m.) /Noite (de 19:00 as 22:00)', 2),
													 ('Dawn (from 10 p.m. onwards) / Madrugada (de 22:00 em diante)', 2),
													 ('Business (from 08:00 a.m. to 06:00 p.m.) / Comercial (de 08:00 as 18:00)', 2)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Account Type / Tipo de conta', 0, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('Chain / Corrente', 3),
													 ('Savings / Poupança', 3)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Ionic', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 4),
                                                     ('1', 4),
													 ('2', 4),
													 ('3', 4),
													 ('4', 4),
													 ('5', 4)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Android', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 5),
                                                     ('1', 5),
													 ('2', 5),
													 ('3', 5),
													 ('4', 5),
													 ('5', 5)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('IOS', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 6),
                                                     ('1', 6),
													 ('2', 6),
													 ('3', 6),
													 ('4', 6),
													 ('5', 6)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('HTML', 1, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 7),
                                                     ('1', 7),
													 ('2', 7),
													 ('3', 7),
													 ('4', 7),
													 ('5', 7)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('CSS', 1, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 8),
                                                     ('1', 8),
													 ('2', 8),
													 ('3', 8),
													 ('4', 8),
													 ('5', 8)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Bootstrap', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 9),
                                                     ('1', 9),
													 ('2', 9),
													 ('3', 9),
													 ('4', 9),
													 ('5', 9)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('JQuery', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 10),
                                                     ('1', 10),
													 ('2', 10),
													 ('3', 10),
													 ('4', 10),
													 ('5', 10)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('AngularJs', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 11),
                                                     ('1', 11),
													 ('2', 11),
													 ('3', 11),
													 ('4', 11),
													 ('5', 11)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Java', 1, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 12),
                                                     ('1', 12),
													 ('2', 12),
													 ('3', 12),
													 ('4', 12),
													 ('5', 12)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Asp.Net MVC', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 13),
                                                     ('1', 13),
													 ('2', 13),
													 ('3', 13),
													 ('4', 13),
													 ('5', 13)
INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('C', 1, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 14),
                                                     ('1', 14),
													 ('2', 14),
													 ('3', 14),
													 ('4', 14),
													 ('5', 14)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('C++', 1, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 15),
                                                     ('1', 15),
													 ('2', 15),
													 ('3', 15),
													 ('4', 15),
													 ('5', 15)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Cake', 1, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 16),
                                                     ('1', 16),
													 ('2', 16),
													 ('3', 16),
													 ('4', 16),
													 ('5', 16)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Django', 1, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 17),
                                                     ('1', 17),
													 ('2', 17),
													 ('3', 17),
													 ('4', 17),
													 ('5', 17)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('Magneto', 1, 0)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 18),
                                                     ('1', 18),
													 ('2', 18),
													 ('3', 18),
													 ('4', 18),
													 ('5', 18)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('PHP', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 19),
                                                     ('1', 19),
													 ('2', 19),
													 ('3', 19),
													 ('4', 19),
													 ('5', 19)

INSERT INTO Perguntas (Pergunta, Exibicao, Obrigatorio) VALUES ('WordPress', 1, 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 20),
                                                     ('1', 20),
													 ('2', 20),
													 ('3', 20),
													 ('4', 20),
													 ('5', 20)

INSERT INTO Perguntas (Pergunta, Exibicao) VALUES ('Python', 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 21),
                                                     ('1', 21),
													 ('2', 21),
													 ('3', 21),
													 ('4', 21),
													 ('5', 21)

INSERT INTO Perguntas (Pergunta, Exibicao) VALUES ('Ruby', 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 22),
                                                     ('1', 22),
													 ('2', 22),
													 ('3', 22),
													 ('4', 22),
													 ('5', 22)

INSERT INTO Perguntas (Pergunta, Exibicao) VALUES ('My SQL Server', 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 23),
                                                     ('1', 23),
													 ('2', 23),
													 ('3', 23),
													 ('4', 23),
													 ('5', 23)

INSERT INTO Perguntas (Pergunta, Exibicao) VALUES ('My SQL', 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 24),
                                                     ('1', 24),
													 ('2', 24),
													 ('3', 24),
													 ('4', 24),
													 ('5', 24)

INSERT INTO Perguntas (Pergunta, Exibicao) VALUES ('Salesforce', 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 25),
                                                     ('1', 25),
													 ('2', 25),
													 ('3', 25),
													 ('4', 25),
													 ('5', 25)

INSERT INTO Perguntas (Pergunta, Exibicao) VALUES ('Photoshop', 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 26),
                                                     ('1', 26),
													 ('2', 26),
													 ('3', 26),
													 ('4', 26),
													 ('5', 26)

INSERT INTO Perguntas (Pergunta, Exibicao) VALUES ('Illustrator', 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 27),
                                                     ('1', 27),
													 ('2', 27),
													 ('3', 27),
													 ('4', 27),
													 ('5', 27)

INSERT INTO Perguntas (Pergunta, Exibicao) VALUES ('SEO', 1)

INSERT INTO Respostas (Resposta, id_Pergunta) VALUES ('0', 28),
                                                     ('1', 28),
													 ('2', 28),
													 ('3', 28),
													 ('4', 28),
													 ('5', 28)

INSERT INTO Formularios (Nome) VALUES ('Banco de Talentos')

INSERT INTO Formularios_Campos_Perguntas (id_Formulario, id_Campo, id_Pergunta, Ordem) VALUES (1, 1, NULL, 1),
                                                                                              (1, 2, NULL, 2),
																							  (1, 3, NULL, 3),
																							  (1, 4, NULL, 4),
																							  (1, 5, NULL, 5),
																							  (1, 6, NULL, 6),
																							  (1, NULL, 1, 7),
																							  (1, NULL, 2, 8),
																							  (1, 7, NULL, 9),
																							  (1, 8, NULL, 10),
																							  (1, 9, NULL, 11),
																							  (1, null, 3, 13),
																							  (1, 10, NULL, 14),
																							  (1, NULL, 4, 15),
																							  (1, NULL, 5, 16),
																							  (1, NULL, 6, 17),
																							  (1, NULL, 7, 18),
																							  (1, NULL, 8, 19),
																							  (1, NULL, 9, 20),
																							  (1, NULL, 10, 21),
																							  (1, NULL, 11, 22),
																							  (1, NULL, 12, 23),
																							  (1, NULL, 13, 24),
																							  (1, NULL, 14, 25),
																							  (1, NULL, 15, 26),
																							  (1, NULL, 16, 27),
																							  (1, NULL, 17, 28),
																							  (1, NULL, 18, 29),
																							  (1, NULL, 19, 30),
																							  (1, NULL, 20, 31),
																							  (1, NULL, 21, 32),
																							  (1, NULL, 22, 33),
																							  (1, NULL, 23, 34),
																							  (1, NULL, 24, 35),
																							  (1, NULL, 25, 36),
																							  (1, NULL, 26, 37),
																							  (1, NULL, 27, 38),
																							  (1, NULL, 28, 39),
																							  (1, 11, NULL, 40),
																							  (1, 12, NULL, 41)
