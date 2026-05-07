Consultas sql:

/*
Consultas SQL utilizadas para explorar datos de cobertura
de vacunación Triple Viral en Argentina (2009–2024).
*

/*cobertura promedio por provincia:

SELECT provincia, AVG (cobertura) AS promedio_cobertura 
FROM vacunacion
GROUP BY provincia;


/*Provincias con menor cobertura 2024

SELECT provincia, cobertura
FROM vacunacion
WHERE anio = 2024
GROUP BY cobertura ASC;

/* Evolucion promedio por año

SELECT anio, AVG (cobertura) AS promedio
FROM vacunacion 
GROUP BY anio
ORDER BY anio;