CREATE TABLE "medication" (
  "med_name" varchar NOT NULL,
  "company" varchar,
  "tablet_size_mg" int,
  "price_per_tab" int,
  "created_at" timestamp,
  PRIMARY KEY ("med_name", "company", "tablet_size_mg")
);

CREATE TABLE "insurance_policy" (
  "policy_number" int,
  "company" varchar,
  PRIMARY KEY ("policy_number", "company")
);

CREATE TABLE "vaccine" (
  "vaccine_name" varchar,
  "company" varchar,
  PRIMARY KEY ("vaccine_name", "company")
);

CREATE TABLE "prescription" (
  "med_name" varchar,
  "company" varchar,
  "tablet_size_mg" int,
  "tablet_number" int,
  PRIMARY KEY ("med_name", "company", "tablet_size_mg", "tablet_number")
);

CREATE TABLE "person" (
  "ID" SERIAL PRIMARY KEY,
  "first_name" varchar,
  "middle_name" varchar,
  "last_name" varchar
);

CREATE TABLE "phone_number" (
  "ID" int,
  "phone_number" varchar,
  PRIMARY KEY ("ID", "phone_number")
);

CREATE TABLE "email" (
  "ID" int,
  "email" varchar,
  PRIMARY KEY ("ID", "email")
);

CREATE TABLE "nurse" (
  "ID" int PRIMARY KEY,
  "office_number" int,
  "salary" int NOT NULL
);

CREATE TABLE "pharmacist" (
  "ID" int PRIMARY KEY,
  "office_number" int,
  "salary" int NOT NULL
);

CREATE TABLE "patient" (
  "ID" int PRIMARY KEY,
  "dob" datetime NOT NULL,
  "sex" char,
  "p_height_in" int,
  "p_weight_lb" int
);

CREATE TABLE "outside_provider" (
  "ID" int PRIMARY KEY NOT NULL,
  "specialty" varchar,
  "office_name" varchar
);

ALTER TABLE "prescription" ADD FOREIGN KEY ("med_name") REFERENCES "medication" ("med_name");

ALTER TABLE "phone_number" ADD FOREIGN KEY ("ID") REFERENCES "person" ("ID");

ALTER TABLE "email" ADD FOREIGN KEY ("ID") REFERENCES "person" ("ID");

ALTER TABLE "nurse" ADD FOREIGN KEY ("ID") REFERENCES "person" ("ID");

ALTER TABLE "pharmacist" ADD FOREIGN KEY ("ID") REFERENCES "person" ("ID");

ALTER TABLE "patient" ADD FOREIGN KEY ("ID") REFERENCES "person" ("ID");

