use pizzasclasicas;

INSERT INTO PizzasClasicas (id,NombrePizza, Ingredientes) VALUES
    ('1','Pizza Margarita', 'salsa de tomate, queso mozzarella, albahaca'),
    ('2','Pizza Pepperoni', 'salsa de tomate, queso mozzarella, pepperoni'),
    ('3','Pizza Cuatro Quesos', 'salsa de tomate, queso mozzarella, queso azul, queso brie, queso parmesano'),
    ('4','Pizza Hawaiana', 'salsa de tomate, queso mozzarella, jamón, piña');
    
use PizzasVegetarianas;
INSERT INTO PizzasVegetarianas (id, NombrePizza, Ingredientes)
VALUES
  (1, 'Pizza Vegetariana', 'salsa de tomate, queso mozzarella, champiñones, pimientos, cebolla, aceitunas'),
  (2, 'Pizza de Berenjenas', 'salsa de tomate, queso mozzarella, berenjena asada, cebolla caramelizada, aceite de oliva'),
  (3, 'Pizza Caprese', 'salsa de tomate, queso mozzarella, tomate fresco, albahaca, aceite de oliva'),
  (4, 'Pizza de Espárragos', 'salsa de tomate, queso mozzarella, espárragos, ajo, parmesano');
  
  INSERT INTO PizzasGourmet (id, NombrePizza, Ingredientes)
VALUES
  (1, 'Pizza de Salmón Ahumado', 'salsa blanca, queso mozzarella, salmón ahumado, rúcula, aceite de oliva'),
  (2, 'Pizza de Focaccia', 'salsa de tomate, mozzarella fresca, jamón serrano, rúcula, aceite de oliva'),
  (3, 'Pizza Marinera', 'salsa de tomate, queso mozzarella, mariscos, ajo, perejil');

INSERT INTO Trabajadores (id, Nombre)
VALUES
  (1, 'Juan'),
  (2, 'Pedro'),
  (3, 'Maria');
  
INSERT INTO Ordenes (Id,IdPizzaClasica,IdPizzaVegetariana,IdPizzaGourmet,IdTrabajador)values
(1, 2, 4, 3, 1),
(2, 3, NULL, 1, 2),
(3, NULL, 2, 3, 3),
(4, 1, 3, 2, 1),
(5, 4, NULL, 1, 2);