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
      '{ "customer": "Josh William", "items": {"product": "Toy Car","qty": 1}}'
   ),
   (
      '{ "customer": "Mary Clark", "items": {"product": "Toy Train","qty": 2}}'
   ),
   (
      '{ "customer": "John Doe", "items": {"product": "Toy Train","qty": 2}}'
   );