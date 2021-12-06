SELECT product.maker, product.model, product.type FROM product LEFT JOIN pc ON (product.model = pc.model) WHERE pc.model is null AND product.type = "pc";

SELECT product.maker FROM product JOIN laptop ON (laptop.model = product.model) 
INTERSECT 
SELECT product.maker FROM product JOIN printer ON (printer.model = product.model);

SELECT laptop.hd FROM laptop GROUP BY laptop.hd HAVING COUNT(*) > 1;

SELECT pc.model FROM pc LEFT JOIN product ON (product.model = pc.model) WHERE product.model IS null;