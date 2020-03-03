-- A. Insert 5 new orders using your name as customer and make sure to order Diaper and Beer.
-- Example: '{ "customer": "Your Name", "items": {"product": "Your Product","qty": X}}'

CREATE TABLE asma_03032020.orders (
   ID serial NOT NULL PRIMARY KEY,
   info json NOT NULL
);

INSERT INTO asma_03032020.orders (info)
VALUES
    (
      '{ "customer": "Mckeen Asma", "items": {"product": "Beer","qty": 6}}'
   ),
   (
      '{ "customer": "Mckeen Asma", "items": {"product": "Diaper","qty": 24}}'
   ),
   (
      '{ "customer": "Mckeen Asma", "items": {"product": "Toy Car","qty": 1}}'
   ),
   (
      '{ "customer": "Mckeen Asma", "items": {"product": "Toy Train","qty": 2}}'
   ),
   (
      '{ "customer": "Mckeen Asma", "items": {"product": "Toy Train","qty": 2}}'
   );