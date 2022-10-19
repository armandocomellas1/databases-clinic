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
BEGIN TRANSACTION;
UPDATE animals SET species = 'unspecified';

SELECT species from animals;

ROLLBACK;

SELECT species from animals;

BEGIN TRANSACTION;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

SELECT species from animals;

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

/*Part two AND QUERIES*/
SELECT COUNT(*) FROM animals;
SELECT * FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, SUM(escape_attempts) FROM animals GROUP BY neutered ORDER BY sum DESC;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(weight_kg) FROM animals WHERE EXTRACT(YEAR FROM date_of_birth) BETWEEN 1990 AND 2000 GROUP BY species;

/*Part three AND QUERIES*/
SELECT owner_id, name FROM animals WHERE animals.owner_id = 4;
SELECT species_id, name FROM animals WHERE animals.species_id = 1;
SELECT full_name, name FROM owners LEFT JOIN animals ON (owners.id = animals.owner_id);
SELECT COUNT(animals.species_id) FROM animals GROUP BY animals.species_id;
SELECT owner_id, name FROM animals WHERE animals.owner_id = 2 AND animals.species_id = 2;
SELECT owner_id, name FROM animals WHERE animals.owner_id = 5 AND animals.escape_attempts = 0;
SELECT owner_id, COUNT(owner_id) FROM animals GROUP BY owner_id ORDER BY COUNT DESC;