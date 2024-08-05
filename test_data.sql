-- Insert sample data into User
INSERT INTO User (id, date, Admin) VALUES (1, '2023-01-01', FALSE);
INSERT INTO User (id, date, Admin) VALUES (2, '2023-02-01', TRUE);

-- Insert sample data into Pay
INSERT INTO Pay (userId, amount, isPay) VALUES (1, 100.00, TRUE);
INSERT INTO Pay (userId, amount, isPay) VALUES (1, 50.00, TRUE);
INSERT INTO Pay (userId, amount, isPay) VALUES (2, 75.00, FALSE);

-- Insert sample data into Dealer
INSERT INTO Dealer (userId, amount) VALUES (1, 200.00);
INSERT INTO Dealer (userId, amount) VALUES (2, 150.00);
