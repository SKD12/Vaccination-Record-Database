-- Drop existing tables, starting with dependent tables to avoid foreign key constraint errors
DROP TABLE IF EXISTS Vaccination_Status;
DROP TABLE IF EXISTS Vaccination;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Vaccine;
DROP TABLE IF EXISTS Location;

-- Create the Location table
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    state_name VARCHAR(50),
    city_name VARCHAR(50),
    district_name VARCHAR(50)
);

-- Create the Person table
CREATE TABLE Person (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);

-- Create the Vaccine table
CREATE TABLE Vaccine (
    vaccine_id INT PRIMARY KEY AUTO_INCREMENT,
    vaccine_name VARCHAR(100),
    manufacturer VARCHAR(100),
    number_of_doses INT
);

-- Create the Vaccination table
CREATE TABLE Vaccination (
    vaccination_id INT PRIMARY KEY AUTO_INCREMENT,
    person_id INT,
    vaccine_id INT,
    dose_number INT,
    vaccination_date DATE,
    location_id INT,
    FOREIGN KEY (person_id) REFERENCES Person(person_id),
    FOREIGN KEY (vaccine_id) REFERENCES Vaccine(vaccine_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);

-- Create the Vaccination_Status table
CREATE TABLE Vaccination_Status (
    person_id INT PRIMARY KEY,
    is_vaccinated BOOLEAN,
    fully_vaccinated BOOLEAN,
    last_vaccination_date DATE,
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);
