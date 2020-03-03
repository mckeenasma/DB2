-- E. Create a function that will return the total products based on qty.

-- Procedure 1
CREATE FUNCTION asma_03032020.TASKE()
    RETURNS TABLE (
        customer bigint
    )
AS
$BODY$
    BEGIN
        RETURN Query
            Select 
               SUM (
                    CAST (
                        info -> 'items' ->> 'qty' AS INTEGER
                    )
                ) "Total Product Quantity"
               FROM
                  asma_03032020.orders;
    END;
$BODY$

LANGUAGE 'plpgsql';

-- Procedure 2
SELECT asma_03032020.TASKE() as "Total Product Quantity"