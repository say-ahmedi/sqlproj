CREATE TABLE User (
    id INT PRIMARY KEY,
    date DATE,
    Admin BOOLEAN
);

CREATE TABLE Pay (
    userId INT,
    amount DECIMAL,
    isPay BOOLEAN
);

CREATE TABLE Dealer (
    userId INT,
    amount DECIMAL
);
