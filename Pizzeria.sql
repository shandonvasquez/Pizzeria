CREATE DATABASE pizzeria;

USE pizzeria;

CREATE TABLE PizzasClasicas (
    Id INT NOT NULL AUTO_INCREMENT,
    NombrePizza VARCHAR(50) NOT NULL,
    Ingredientes VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE PizzasVegetarianas (
    Id INT NOT NULL AUTO_INCREMENT,
    NombrePizza VARCHAR(50) NOT NULL,
    Ingredientes VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE PizzasGourmet (
    Id INT NOT NULL AUTO_INCREMENT,
    NombrePizza VARCHAR(50) NOT NULL,
    Ingredientes VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Trabajadores (
    Id INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Ordenes (
    Id INT NOT NULL AUTO_INCREMENT,
    IdPizzaClasica INT,
    IdPizzaVegetariana INT,
    IdPizzaGourmet INT,
    IdTrabajador INT NOT NULL,
    FOREIGN KEY (IdPizzaClasica) REFERENCES PizzasClasicas(Id),
    FOREIGN KEY (IdPizzaVegetariana) REFERENCES PizzasVegetarianas(Id),
    FOREIGN KEY (IdPizzaGourmet) REFERENCES PizzasGourmet(Id),
    FOREIGN KEY (IdTrabajador) REFERENCES Trabajadores(Id),
    PRIMARY KEY (Id)
);

SELECT *
FROM Ordenes
INNER JOIN Trabajadores ON Ordenes.IdTrabajador = Trabajadores.Id
INNER JOIN PizzasClasicas ON Ordenes.IdPizzaClasica = PizzasClasicas.Id
INNER JOIN PizzasVegetarianas ON Ordenes.IdPizzaVegetariana = PizzasVegetarianas.Id
INNER JOIN PizzasGourmet ON Ordenes.IdPizzaGourmet = PizzasGourmet.Id;
