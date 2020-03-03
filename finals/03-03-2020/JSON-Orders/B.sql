-- B. Find out who bought diaper and Beer. (Sub Query using Function)
-- Procedure 1
CREATE FUNCTION asma_03032020.TASKB(IN prod1 varchar DEFAULT 'Diaper', IN prod2 varchar DEFAULT 'Beer')
    RETURNS TABLE (
        customer text
    )
AS
$BODY$
    BEGIN
        RETURN Query
            SELECT
                info -> 'customer' AS customer
            FROM
                asma_03032020.orders o
            WHERE
                info -> 'items' ->> 'product' = prod1 AND info ->> 'customer' = 
                (
                    SELECT
                        info ->> 'customer' AS customer
                    FROM
                        asma_03032020.orders e
                    WHERE
                        info -> 'items' ->> 'product' = prod2 AND e.info ->> 'customer' = o.info ->> 'customer'
                );
    END;
$BODY$

LANGUAGE 'plpgsql';

-- Procedure 2

SELECT distinct asma_03032020.TASKB('Toy Train', 'Beer') FROM asma_03032020.orders

-- B. Find out who bought diaper and Beer. (Function using INTERSECT)

-- Procedure 1
CREATE FUNCTION asma_03032020.TASKB(IN prod1 varchar DEFAULT 'Diaper', IN prod2 varchar DEFAULT 'Beer')
    RETURNS TABLE (
        customer text
    )
AS
$BODY$
    BEGIN
        RETURN Query
                SELECT
                info ->> 'customer' AS "customer"
                FROM
                    asma_03032020.orders
                WHERE
                info -> 'items' ->> 'product'= prod1

                INTERSECT

                SELECT
                info ->> 'customer' AS "customer"
                FROM
                    asma_03032020.orders
                WHERE
                info -> 'items' ->> 'product'= prod2;
    END;
$BODY$

LANGUAGE 'plpgsql';

-- Procedure 2

SELECT distinct asma_03032020.TASKB('Toy Train', 'Beer') FROM asma_03032020.orders
