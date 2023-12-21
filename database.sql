-- SQL Script to create and populate the database

-- Create the 'employees' table with an added 'level' column
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    role TEXT NOT NULL,
    region TEXT NOT NULL,
    level INTEGER NOT NULL
);

-- Create the 'training_modules' table with a 'level' column
CREATE TABLE training_modules (
    module_id INTEGER PRIMARY KEY,
    module_name TEXT NOT NULL,
    level INTEGER NOT NULL
);

-- Insert sample data into 'employees' with random levels
INSERT INTO employees (full_name, role, region, level) VALUES 
('John Doe', 'Sales Manager', 'California', RANDOM() % 3 + 1),
('Jane Smith', 'Sales Associate', 'Texas', RANDOM() % 3 + 1),
-- ... (48 more entries with varying roles, regions, and levels) ...

-- Insert sample training modules with random levels
INSERT INTO training_modules (module_name, level) VALUES 
('Effective Communication', RANDOM() % 3 + 1),
('Advanced Sales Techniques', RANDOM() % 3 + 1),
-- ... (48 more modules with different names and levels) ...
