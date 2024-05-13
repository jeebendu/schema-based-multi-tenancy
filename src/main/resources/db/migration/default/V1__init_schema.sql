CREATE TABLE "users" ( 
"id" SERIAL PRIMARY KEY NOT NULL, 
"username" VARCHAR(50) NOT NULL, 
"password" VARCHAR(20) NOT NULL
);

INSERT INTO "users" ("username", "password") VALUES ('tenant1', '12345');
INSERT INTO "users" ("username", "password") VALUES ('tenant2', '12345');
INSERT INTO "users" ("username", "password") VALUES ('tenant3', '12345');
INSERT INTO "users" ("username", "password") VALUES ('tenant4', '12345');
INSERT INTO "users" ("username", "password") VALUES ('tenant5', '12345');