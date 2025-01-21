

DELIMITER //

-- Función que calcula el IVA de un valor pasado como parámetro y devuelve el resultado
CREATE FUNCTION IVA(valor DECIMAL(10,2), porcentaje INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN valor * (porcentaje / 100);
END //

-- Función que devuelve la edad de un empleado dado su ID
CREATE FUNCTION obtener_edad(employee_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE age INT;
    SELECT TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) INTO age FROM employees WHERE emp_no = employee_id;
    RETURN age;
END //

DELIMITER ;

-- Ejemplo de uso de la función IVA
SELECT IVA(100, 21);

-- Llamada a la función obtener_edad
SELECT obtener_edad(10001);