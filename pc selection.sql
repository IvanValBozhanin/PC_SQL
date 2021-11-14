SELECT model, speed AS MHZ, hd AS GB FROM pc WHERE price < 1200.0;

SELECT DISTINCT product.maker FROM product, printer WHERE printer.model = product.model;

SELECT model, ram, screen FROM laptop WHERE price > 1000.0;

SELECT * FROM printer WHERE color = 'y';

SELECT model, speed, hd FROM pc WHERE cd IN ('12x', '16x') AND price < 2000.0;