/*Create a new table called persons with columns:
id, person_name, birth_date and phone */

CREATE TABLE persons (
    id INT not NULL,
    person_name VARCHAR (50) not NULL,
    birth_date DATE,
    phone VARCHAR (15),
    CONSTRAINT pk_persons PRIMARY KEY (id)
)

SELECT * FROM persons

/* INT: Number doesn't contain any characters
Not NUll: Constraint
id: column name
VARCHAR: contains characters
