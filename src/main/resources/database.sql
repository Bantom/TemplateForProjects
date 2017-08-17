-- Creating tables

CREATE TABLE users
(
  user_id bigserial PRIMARY KEY,
  firstname character varying(100) NOT NULL,
  lastname character varying(100) NOT NULL,
  telephone character varying(30),
  email character varying(100) NOT NULL,
  password character varying(100) NOT NULL
);

CREATE TABLE roles
(
  role_id smallserial PRIMARY KEY,
  name character varying(50) UNIQUE NOT NULL
);

CREATE TABLE user_roles (
  user_id INTEGER REFERENCES users (user_id) NOT NULL,
  role_id INTEGER  REFERENCES roles (role_id) NOT NULL,
  UNIQUE (user_id, role_id)
);

-- Insert data

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');