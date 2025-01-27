DELIMITER //
CREATE DEFINER=`root`@`%` PROCEDURE `RecorrerCursor`()
BEGIN
    -- Variables necesarias
    DECLARE done INT DEFAULT 0; -- Control del fin del cursor
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    
    -- Declarar el cursor
    DECLARE cursor_empleados CURSOR FOR SELECT emp_no, first_name FROM employees limit 50;
    
    -- Manejo del fin de datos del cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- ====================
    -- MÉTODO 1: REPEAT
    -- ====================
    -- Crear una tabla temporal
    CREATE TEMPORARY TABLE TempResultados (
        id INT,
        nombre VARCHAR(100)
    );
    OPEN cursor_empleados; -- Abrir el cursor
    SELECT 'Inicio REPEAT';

    REPEAT
        FETCH cursor_empleados INTO emp_id, emp_nombre;
        IF NOT done THEN
            -- Insertar los resultados en la tabla temporal
			INSERT INTO TempResultados (id, nombre) VALUES (emp_id, emp_nombre);
        END IF;
    UNTIL done END REPEAT;

    CLOSE cursor_empleados; -- Cerrar el cursor
    
    -- Mostrar los resultados de la tabla temporal
    SELECT * FROM TempResultados;

    -- Eliminar la tabla temporal
    DROP TEMPORARY TABLE TempResultados;

    -- ====================
    -- MÉTODO 2: WHILE
    -- ====================
    -- Crear una tabla temporal
    CREATE TEMPORARY TABLE TempResultados (
        id INT,
        nombre VARCHAR(100)
    );
    SET done = 0; -- Resetear el indicador
    OPEN cursor_empleados; -- Abrir el cursor de nuevo
    SELECT 'Inicio WHILE';

    FETCH cursor_empleados INTO emp_id, emp_nombre; -- Leer la primera fila
    INSERT INTO TempResultados (id, nombre) VALUES (emp_id, emp_nombre);
    WHILE done = 0 DO
        FETCH cursor_empleados INTO emp_id, emp_nombre; -- Leer la siguiente fila
        -- Insertar los resultados en la tabla temporal
        INSERT INTO TempResultados (id, nombre) VALUES (emp_id, emp_nombre);
    END WHILE;

    CLOSE cursor_empleados; -- Cerrar el cursor

	-- Mostrar los resultados de la tabla temporal
    SELECT * FROM TempResultados;

    -- Eliminar la tabla temporal
    DROP TEMPORARY TABLE TempResultados;

    -- ====================
    -- MÉTODO 3: LOOP
    -- ====================
    -- Crear una tabla temporal
    CREATE TEMPORARY TABLE TempResultados (
        id INT,
        nombre VARCHAR(100)
    );
    SET done = 0; -- Resetear el indicador
    OPEN cursor_empleados; -- Abrir el cursor de nuevo
    SELECT 'Inicio LOOP';

    recorrer_loop: LOOP
        FETCH cursor_empleados INTO emp_id, emp_nombre;
        IF done = 1 THEN
            LEAVE recorrer_loop; -- Salir del bucle si no hay más filas
        END IF;
        INSERT INTO TempResultados (id, nombre) VALUES (emp_id, emp_nombre);
    END LOOP;

    CLOSE cursor_empleados; -- Cerrar el cursor
    
    -- Mostrar los resultados de la tabla temporal
    SELECT * FROM TempResultados;

    -- Eliminar la tabla temporal
    DROP TEMPORARY TABLE TempResultados;
END //
DELIMITER ;
