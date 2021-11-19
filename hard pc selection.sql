SELECT DISTINCT maker FROM pc, product p WHERE pc.model = p.model AND pc.speed >= 500;

SELECT * FROM printer WHERE printer.price = (SELECT MAX(price) FROM printer);

SELECT * FROM laptop WHERE laptop.speed < ALL(SELECT pc.speed FROM pc);

SELECT * FROM (SELECT pc.model, pc.price FROM pc
UNION
SELECT laptop.model, laptop.price FROM laptop
UNION
SELECT printer.model, printer.price FROM printer) a
WHERE price = (SELECT MAX(price) from (SELECT pc.model, pc.price FROM pc
UNION
SELECT laptop.model, laptop.price FROM laptop
UNION
SELECT printer.model, printer.price FROM printer) a);

SELECT DISTINCT p.maker FROM printer pr, product p WHERE pr.color = 'Y' AND pr.model = p.model AND pr.price = (SELECT MIN(price) FROM printer WHERE color = 'y');

SELECT DISTINCT p.maker FROM product p, pc WHERE p.model = pc.model AND (pc.speed = (SELECT MAX(speed) FROM pc) OR pc.ram = (SELECT MIN(ram) FROM pc)); 