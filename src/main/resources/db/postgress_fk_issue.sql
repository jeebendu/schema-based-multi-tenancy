-- Creating tenant1
CREATE SCHEMA IF NOT EXISTS "tenant1";
SET SCHEMA 'tenant1';
CREATE TABLE "author"
(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT
);

CREATE TABLE "note"
(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "text" TEXT,
    "author_id" BIGINT NOT NULL,
    CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(id)
);


-- Creating tenant2
CREATE SCHEMA IF NOT EXISTS "tenant2";
SET SCHEMA 'tenant2';
CREATE TABLE "author"
(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT
);


CREATE TABLE "note"
(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "text" TEXT,
    "author_id" BIGINT NOT NULL,
    CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(id)
);

-- Creating tenant3
CREATE SCHEMA IF NOT EXISTS "tenant3";
SET SCHEMA 'tenant3';
CREATE TABLE "author"
(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT
);


CREATE TABLE "note"
(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "text" TEXT,
    "author_id" BIGINT NOT NULL,
    CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(id)
);
