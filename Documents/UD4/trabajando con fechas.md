| **Función**        | **Descripción**                                                                             | **Ejemplo**                             | **Resultado**          |
|---------------------|---------------------------------------------------------------------------------------------|-----------------------------------------|-------------------------|
| **NOW()**          | Devuelve la fecha y hora actuales del sistema.                                              | `SELECT NOW();`                         | `2025-01-21 15:00:00`  |
| **CURDATE()**       | Devuelve la fecha actual (sin la hora).                                                     | `SELECT CURDATE();`                     | `2025-01-21`           |
| **CURTIME()**       | Devuelve la hora actual (sin la fecha).                                                     | `SELECT CURTIME();`                     | `15:00:00`             |
| **UTC_DATE()**      | Devuelve la fecha actual en tiempo UTC.                                                     | `SELECT UTC_DATE();`                    | `2025-01-21`           |
| **UTC_TIME()**      | Devuelve la hora actual en tiempo UTC.                                                      | `SELECT UTC_TIME();`                    | `15:00:00`             |
| **UTC_TIMESTAMP()** | Devuelve la fecha y hora actuales en tiempo UTC.                                            | `SELECT UTC_TIMESTAMP();`               | `2025-01-21 15:00:00`  |
| **DATE()**          | Extrae la parte de fecha de un valor de tipo datetime.                                      | `SELECT DATE('2025-01-21 15:00:00');`   | `2025-01-21`           |
| **TIME()**          | Extrae la parte de hora de un valor de tipo datetime.                                       | `SELECT TIME('2025-01-21 15:00:00');`   | `15:00:00`             |
| **YEAR()**          | Devuelve el año de una fecha.                                                              | `SELECT YEAR('2025-01-21');`            | `2025`                 |
| **MONTH()**         | Devuelve el mes de una fecha (como número).                                                | `SELECT MONTH('2025-01-21');`           | `1`                    |
| **MONTHNAME()**     | Devuelve el nombre del mes de una fecha.                                                   | `SELECT MONTHNAME('2025-01-21');`       | `January`              |
| **DAY()**           | Devuelve el día del mes de una fecha.                                                      | `SELECT DAY('2025-01-21');`             | `21`                   |
| **DAYNAME()**       | Devuelve el nombre del día de la semana.                                                   | `SELECT DAYNAME('2025-01-21');`         | `Tuesday`              |
| **HOUR()**          | Devuelve la hora de una fecha/hora.                                                        | `SELECT HOUR('15:30:45');`              | `15`                   |
| **MINUTE()**        | Devuelve los minutos de una fecha/hora.                                                    | `SELECT MINUTE('15:30:45');`            | `30`                   |
| **SECOND()**        | Devuelve los segundos de una fecha/hora.                                                   | `SELECT SECOND('15:30:45');`            | `45`                   |
| **TIMESTAMP()**     | Convierte una fecha y hora en un objeto de tipo timestamp.                                  | `SELECT TIMESTAMP('2025-01-21', '15:00:00');` | `2025-01-21 15:00:00` |
| **DATEDIFF()**      | Calcula la diferencia en días entre dos fechas.                                             | `SELECT DATEDIFF('2025-01-21', '2025-01-20');` | `1`          |
| **TIMEDIFF()**      | Calcula la diferencia en tiempo entre dos valores de tipo tiempo o datetime.                | `SELECT TIMEDIFF('15:00:00', '14:30:00');` | `00:30:00`       |
| **DATE_ADD()**      | Añade un intervalo de tiempo a una fecha.                                                  | `SELECT DATE_ADD('2025-01-21', INTERVAL 10 DAY);` | `2025-01-31`  |
| **DATE_SUB()**      | Resta un intervalo de tiempo a una fecha.                                                  | `SELECT DATE_SUB('2025-01-21', INTERVAL 10 DAY);` | `2025-01-11`  |
| **LAST_DAY()**      | Devuelve la última fecha del mes de una fecha dada.                                         | `SELECT LAST_DAY('2025-01-21');`        | `2025-01-31`           |
| **STR_TO_DATE()**   | Convierte una cadena en un valor de tipo datetime según un formato especificado.            | `SELECT STR_TO_DATE('21-01-2025', '%d-%m-%Y');` | `2025-01-21` |
| **DATE_FORMAT()**   | Devuelve una fecha en el formato especificado.                                              | `SELECT DATE_FORMAT('2025-01-21', '%d/%m/%Y');` | `21/01/2025` |
| **UNIX_TIMESTAMP()**| Devuelve el timestamp UNIX (segundos desde 1970-01-01 00:00:00 UTC).                        | `SELECT UNIX_TIMESTAMP();`              | `1737486000`           |
| **FROM_UNIXTIME()** | Convierte un timestamp UNIX en un valor de tipo datetime.                                   | `SELECT FROM_UNIXTIME(1737486000);`     | `2025-01-21 15:00:00`  |
| **TIMESTAMPDIFF()** | Calcula la diferencia entre dos fechas o tiempos en la unidad especificada. Admite, como primer parámetro, los modificadores SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER (Trimestres) y YEAR               | `SELECT TIMESTAMPDIFF(DAY, '2025-01-01', '2025-01-21');` | `20` |



