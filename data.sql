/* Populate database with sample data. */

/*Part one*/
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', '2020-02-03', 0, '1', 10.23);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', '2018-11-15', 2, '1', 8);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', '2021-01-07', 1, '0', 15.04);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', '2017-05-12', 5, '1', 11);

/*Part two*/
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020-02-08', 0, '0', -11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', '2021-11-15', 2, '1', -5.7);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle', '1993-05-02', 3, '0', -12.13);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', '2005-06-12', 1, '1', -45);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', '2005-06-07', 7, '1', 20.4);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', '1998-10-13', 3, '1', 17);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditto', '2022-05-14', 4, '1', 22);

/*Part three IN OWNERSS TABLE*/
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 34);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

/*Part three IN SPECIES TABLE*/
INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

/*Part three IN SPECIES MODIFIES*/
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

/*Part three IN OWNERS MODIFIES*/
UPDATE animals SET owner_id = 1 WHERE name LIKE 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon', 'Boarmon');

/*Part 4th IN Vets TABLE*/
INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '2008-06-08');

/*Part 4th IN specialties TABLE*/
INSERT INTO specializations (vets_id, species_id) VALUES (1, 1);
INSERT INTO specializations (vets_id, species_id) VALUES (3, 1);
INSERT INTO specializations (vets_id, species_id) VALUES (3, 2);
INSERT INTO specializations (vets_id, species_id) VALUES (4, 2);

/*Part 4th IN visits TABLE*/
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (1, 4, '2020-05-24');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (3, 4, '2020-07-22');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (4, 5, '2021-02-02');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 6, '2020-01-05');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 6, '2020-03-08');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 6, '2020-05-14');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (3, 7, '2021-05-04');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (4, 8, '2021-02-24');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 9, '2019-12-21');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (1, 9, '2020-08-10');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 9, '2021-04-07');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (3, 10, '2019-09-29');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (4, 11, '2020-10-03');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (4, 11, '2020-11-04');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 12, '2019-01-24');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 12, '2019-05-15');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 12, '2020-02-27');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 12, '2020-08-03');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (3, 13, '2020-05-24');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (1, 13, '2020-01-11');
