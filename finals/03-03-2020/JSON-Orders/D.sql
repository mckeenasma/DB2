-- D. Find out who bought the most product at a time.
-- Procedure 1
CREATE FUNCTION asma_03032020.TASKD()
    RETURNS TABLE (
        customer text,
        quantity text
    )
AS
$BODY$
    BEGIN
        RETURN Query
            Select 
               info ->> 'customer' AS "Customer",
               info -> 'items' ->> 'qty' AS "Quantity"
               FROM
                  asma_03032020.orders
               where
                  CAST (info -> 'items' ->> 'qty' AS INTEGER) = (
                     SELECT
                        MAX (
                           CAST (
                              info -> 'items' ->> 'qty' AS INTEGER
                           )
                        )
                        FROM
                        asma_03032020.orders
                  );
    END;
$BODY$

LANGUAGE 'plpgsql';

-- Procedure 2
SELECT asma_03032020.TASKD() as "The person who bought Most product at a time and the Quantity"