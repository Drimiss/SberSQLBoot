INSERT into menu(id, pizzeria_id, pizza_name, price) VALUES
((SELECT max(id)+1 from menu), (SELECT id from pizzeria where name = 'Dominos'), 'sicilian pizza',900)