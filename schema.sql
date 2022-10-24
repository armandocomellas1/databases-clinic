/* Database schema to keep the structure of entire database. */

/*Part one*/
CREATE TABLE animals(
  id            INT GENERATED ALWAYS AS IDENTITY,
  name            VARCHAR(250),
  date_of_birth   DATE,
  escape_attempts INT,
  neutered        BIT,
  weight_kg       DECIMAL,
  PRIMARY KEY (id)
);

/*Part two*/
ALTER TABLE animals
ADD species VARCHAR(250);

/*Part three tables*/
CREATE TABLE owners(
  id              INT GENERATED ALWAYS AS IDENTITY,
  full_name       VARCHAR(250),
  age             INT,
  PRIMARY KEY (id)
);

CREATE TABLE species(
  id              INT GENERATED ALWAYS AS IDENTITY,
  name            VARCHAR(250),
  PRIMARY KEY (id)
);

ALTER TABLE animals DROP species;

ALTER TABLE animals ADD COLUMN species_id INT REFERENCES species;

ALTER TABLE animals ADD COLUMN owner_id INT REFERENCES owners;

/*Part 4th tables*/
CREATE TABLE vets(
  id                  INT GENERATED ALWAYS AS IDENTITY,
  name                VARCHAR(250),
  age                 INT,
  date_of_graduation  DATE,
  PRIMARY KEY (id)
);

CREATE TABLE specializations(
  id                  INT GENERATED ALWAYS AS IDENTITY,
  vets_id             INT REFERENCES vets,
  species_id          INT REFERENCES species,
  PRIMARY KEY (id)
);

CREATE TABLE visits(
  id                  INT GENERATED ALWAYS AS IDENTITY,
  vets_id             INT REFERENCES vets,
  animals_id          INT REFERENCES animals,
  date_of_visit       DATE,
  PRIMARY KEY (id)
);

/*Part 5th tables*/
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

create table visits_count as select animals_id, animals_count from ( select animals_id, count(*) as animals_count from visits group by animals_id) AS newtable_animals;

