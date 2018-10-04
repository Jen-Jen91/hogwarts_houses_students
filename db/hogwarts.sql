DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;


CREATE TABLE houses(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  logo TEXT
);


CREATE TABLE students(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house VARCHAR(255),
  age INT
);
