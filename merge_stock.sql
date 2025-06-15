MERGE INTO stock s
USING stock_incoming si
ON (s.product_id = si.product_id)
WHEN MATCHED THEN
  UPDATE SET
    s.quantity = s.quantity + si.quantity,
    s.product_name = si.product_name,
    s.last_update = si.incoming_date
WHEN NOT MATCHED THEN
  INSERT (product_id, product_name, quantity, last_update)
  VALUES (si.product_id, si.product_name, si.quantity, si.incoming_date);
