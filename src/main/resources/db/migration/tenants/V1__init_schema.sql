CREATE TABLE "author"
(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" TEXT,
    CONSTRAINT fk_author_globally_unique FOREIGN KEY (id) REFERENCES "default".users(id)
);


CREATE TABLE "note"
(
    "id" SERIAL PRIMARY KEY NOT NULL,
    "text" TEXT,
    "author_id" BIGINT NOT NULL,
    CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(id)
);