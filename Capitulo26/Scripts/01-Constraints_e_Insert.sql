
/* CONECTA AO BANCO EMPRESA */

USE 'Professor Felipe Mafra - EMPRESA'
GO

/* CRIA UMA NOVA TABELA */

CREATE TABLE TBL_ALUNO
(
	IdAluno INTEGER PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Sexo VARCHAR(10) NOT NULL,
	DataNascimento DATE NOT NULL,
	Email VARCHAR(60) UNIQUE
)
GO

/* CRIA CONSTRAINT FORA DA CRIAÇÃO DA TABELA */

ALTER TABLE
	TBL_ALUNO
ADD CONSTRAINT 
	CK_SEXO CHECK(SEXO IN ('FEMININO', 'MASCULINO'))
GO

/* ========== RELACIONAMENTO ========== */

/* RELACIONAMENTO 1 x 1 */

CREATE TABLE TBL_ENDERECO
(
	IdEndereco INTEGER PRIMARY KEY IDENTITY (100, 10),
	Rua VARCHAR(60),
	Bairro VARCHAR(30) NOT NULL,
	UF CHAR(2) NOT NULL
	CHECK (UF IN('RJ', 'SP', 'PR', ' MG')),

	Id_Aluno INTEGER UNIQUE
)
GO

/* CRIA A CHAVE ESTRANGEIRA DA TABELA ENDEREÇO */

ALTER TABLE TBL_ENDERECO
ADD CONSTRAINT FK_ENDERECO_ALUNO
FOREIGN KEY (Id_Aluno)
REFERENCES TBL_ALUNO(IdAluno)
GO

/* COMANDOS DE DESCRIÇÃO 

=> PROCEDURES JÁ CRIADAS E ARMAZENADAS NO SISTEMA PELO PRÓPRIO SQL SERVER
*/

SP_COLUMNS TBL_ALUNO
GO

SP_COLUMNS TBL_ENDERECO
GO

SP_HELP TBL_ALUNO
GO

/* INSERE DADOS NA TABELA ALUNO */

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('VICTORIA SECRET', 'Feminino', '1977-07-12', 'victsecrets@victoriasecrets.com')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('DOLCE E. GABBANA', 'Masculino', '1985-01-02', 'dolcegabanna@dolcegabanna.it')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('LOUIS VUITTON', 'Masculino', '1954-10-21', 'louisvuitton@louisvuitton.fr')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('CHRISTIAN DIOR', 'Masculino', '1946-12-16', 'christiandior@christiandior.fr')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('MARIA ROSA', 'Feminino', '1966-12-01', 'mariarosa@mariarosa.com.br')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('CACILDA NU', 'Feminino', '1985-03-27', 'cacildacacilda@bol.com')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('DEBORA LINGERIE', 'Feminino', '1992-08-15', 'deboradebochada@uol.com.br')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('MARIO CUNHA', 'Masculino', '1992-08-15', 'mariodebochado@uol.com.br')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('SIMONE PAPATINHO', 'Feminino', '2000-08-03', 'sisipapatos@gmail.com')

INSERT INTO TBL_ALUNO
(Nome, Sexo, DataNascimento, Email)
VALUES
('CARLA MELLO', 'Feminino', '2000-11-29', 'carlamello@gmail.com')

SELECT * FROM TBL_ALUNO






