CREATE DATABASE RibolovnieSnasti2;
GO

USE RibolovnieSnasti2;
GO

CREATE TABLE Sklad(
	SkladID INT PRIMARY KEY IDENTITY(1,1),
	SotrudnikiAmount INT,
	Adres VARCHAR(100),
);
GO

CREATE TABLE Snasti(
	SnastID INT PRIMARY KEY IDENTITY(1,1),
	SnastName VARCHAR(50),
	Cvet VARCHAR(50),
	TypeOfSnast VARCHAR(50),
	Razmer VARCHAR(30)
);
GO

ALTER TABLE Snasti
ADD IDSklad INT FOREIGN KEY REFERENCES Sklad(SkladID)
GO


CREATE TABLE Sotrudniki(
	SotrudnikID INT PRIMARY KEY IDENTITY(1,1),
	SotrudnikName VARCHAR(50),
	SotrudnikSurname VARCHAR(50),
	SotrudnikMiddleName VARCHAR(50),
	IDSklad INT FOREIGN KEY REFERENCES Sklad(SkladID)
);
GO

INSERT INTO Snasti
VALUES
('катушка', 'розовая', 'круглая', 'большая', '1'),
('поплавок','желтый','призмовидный','маленький', '2'),
('спиннинг','черный','длинный','большой', '2')
GO

INSERT INTO Sklad
VALUES
('20','Пирогова дом 6'),
('15','Пирогова дом 5'),
('12','Сретенский бульвар дом 16/2')
GO

INSERT INTO Sotrudniki
VALUES
('Арина','Сидорова','Алексеевна', '3'),
('Миша','Алдошин','Валерьевич', '2'),
('Евлмапий','Абв','Дмитриевич', '2')
GO