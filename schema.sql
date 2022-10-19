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
