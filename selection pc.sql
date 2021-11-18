SELECT AVG(speed) FROM pc;

SELECT p.maker, AVG(l.screen) FROM laptop l, product p WHERE p.model = l.model GROUP BY p.maker;

SELECT AVG(speed) FROM laptop WHERE price > 1000;

SELECT p.maker, AVG(pc.price) FROM product p, pc WHERE p.model = pc.model AND p.maker = 'A';

SELECT speed, AVG(price) FROM pc GROUP BY speed; 

SELECT maker, COUNT(DISTINCT model) AS CNT FROM product GROUP BY maker HAVING CNT >= 3;

SELECT maker, MAX(pc.price) FROM product p, pc WHERE p.model = pc.model;

SELECT speed, AVG(price) FROM pc WHERE pc.speed > 800;
