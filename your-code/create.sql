DROP DATABASE IF EXISTS cars;
CREATE DATABASE cars; 
USE cars;

-- Create the Cars Table
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY, -- Primary key for Cars
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year YEAR NOT NULL,
    Color VARCHAR(20) NOT NULL
);

-- Create the Customers Table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY, -- Auto-increment primary key
    Name VARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100), -- Optional attribute (NULL allowed)
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(50) NOT NULL,
    StateProvince VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    ZipPostalCode VARCHAR(10) NOT NULL
);

-- Create the Salespersons Table
CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY, -- Auto-increment primary key
    Name VARCHAR(100) NOT NULL,
    Store VARCHAR(50) NOT NULL
);

-- Create the Invoices Table
CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY, -- Auto-increment primary key
    Date DATE NOT NULL,
    CarVIN VARCHAR(17) NOT NULL,
    CustomerID INT NOT NULL,
    StaffID INT NOT NULL,
    FOREIGN KEY (CarVIN) REFERENCES Cars(VIN), -- Foreign Key referencing Cars
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), -- Foreign Key referencing Customers
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID) -- Foreign Key referencing Salespersons
);