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