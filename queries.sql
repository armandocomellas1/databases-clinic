/*Queries that provide answers to the questions from all projects.*/

/*Part one AND QUERIES*/
SELECT * from animals WHERE name LIKE '%mon';
SELECT * FROM animals where EXTRACT(YEAR FROM date_of_birth) BETWEEN 2016 AND 2019;
SELECT * FROM animals WHERE neutered = '1' AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = '1';
SELECT * FROM animals WHERE name NOT LIKE 'Gabumon';
SELECT * FROM animals WHERE weight_kg >=10.4 AND weight_kg <= 17.3;

/*Part two AND TRANSACTIONS*/
UPDATE animals SET species = 'unspecified';

BEGIN TRANSACTION;
UPDATE animals SET species = 'unspecified';
ROLLBACK;

BEGIN TRANSACTION;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

BEGIN TRANSACTION;
DELETE FROM animals;
ROLLBACK;

BEGIN TRANSACTION;
SAVEPOINT SP1;

DELETE FROM animals WHERE date_of_birth > '2020-01-01';
SAVEPOINT SP2;

UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SP2;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

/*Part two AND TRANSACTIONS*/