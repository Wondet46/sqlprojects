-- Comment: Set the database 'myproject' to read-only. Syntax is incorrect, and 'read only' needs quotes.
ALTER DATABASE myproject READ_write = 1;

-- Comment: Rename the table 'car_info' to 'car_information'.
RENAME TABLE car_info TO car_information;

-- Comment: Attempt to set the database 'myproject' back to read-write. Syntax is incorrect; should use 'READ WRITE'.
ALTER DATABASE myproject READ ONLY = 0;

-- Comment: Attempt to rename the table 'car_info' to 'car_information' again, and then back to 'car_info'.
-- This may result in an error since 'car_information' already exists.
RENAME TABLE car_info TO car_information;
RENAME TABLE car_information TO car_info;

-- Comment: Add a new column 'phone_number' to the table 'car_info'.
ALTER TABLE car_info ADD phone_number varchar(12);

-- Comment: Rename the column 'phone_number' to 'email' in the table 'car_info'.
ALTER TABLE car_info RENAME COLUMN phone_number TO email;

-- Comment: Modify the 'email' column to have a maximum length of 100 characters.
ALTER TABLE car_info MODIFY COLUMN email varchar(100);

-- Comment: Modify the 'email' column again, placing it after the column 'make'.
ALTER TABLE car_info MODIFY COLUMN email varchar(100) AFTER make;

-- Comment: Modify the 'email' column again, placing it after the column 'make'.
ALTER TABLE car_info MODIFY COLUMN email varchar(100) First;

-- Comment: Display the structure of the 'car_info' table.
DESC car_info;

-- Comment: Drop (delete) the 'email' column from the 'car_info' table.
ALTER TABLE car_info DROP COLUMN email;

-- Comment: Insert data into the 'car_info' table.
INSERT INTO car_info (
    make, fuel_type, num_of_doors,  body_style, drive_wheels, engine_location, wheel_base, length, width, height, curb_weight, engine_type, num_of_cylinders, engine_size,    fuel_system,
    compression_ratio, horsepower, city_mpg, highway_mpg, price
) VALUES
('Toyota', 'Gasoline', '4', 'Sedan', 'Front-Wheel Drive', 'Front', 106.7, 187.8, 68.4, 58.7, 3000, 'Inline-4', 'Four', 150, 'MPI', 9, 170, 25, 32, 20000),
('Honda', 'Hybrid', '2', 'Coupe', 'All-Wheel Drive', 'Rear', 101.2, 160.0, 65.0, 51.6, 2500, 'V6', 'Six', 200, 'Direct Injection', 10, 220, 22, 28, 25000),
('Ford', 'Diesel', '4', 'SUV', '4-Wheel Drive', 'Front', 110.5, 203.3, 72.3, 59.1, 3500, 'V8', 'Eight', 250, 'Common Rail', 12, 300, 18, 24, 30000);

-- Comment: Disable safe updates to perform potentially unsafe SQL statements.
SET SQL_SAFE_UPDATES = 0;

-- Comment: Update the 'make' column for records where 'length' is 10000.
UPDATE car_info
SET make = 'toyota'
WHERE length = 10000;

-- Comment: Commit the transaction.
COMMIT;

-- Comment: Rollback the transaction.
ROLLBACK;

UPDATE car_info
SET make = 'toyota'
WHERE length = 10000;