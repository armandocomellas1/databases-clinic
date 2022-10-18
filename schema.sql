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