-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/b2Lm47
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- Item 1: Creating Tables, and importing CSV's
​
​
CREATE TABLE "contacts" (
    "contact_id" int,   NOT NULL,
    "first_name" varchar(50),   NOT NULL,
    "last_name" varchar(50),   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);
​
CREATE TABLE "category" (
    "category_id" varchar(10),   NOT NULL,
    "category" varchar(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);
​
CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10),   NOT NULL,
    "subcategory" varchar(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id","subcategory"
     )
);
​
CREATE TABLE "campaign" (
    "cf_id" int,   NOT NULL,
    "company_name" varchar(50),   NOT NULL,
    "description" varchar(300),   NOT NULL,
    "goal" double,   NOT NULL,
    "pledged" double,   NOT NULL,
    "outcome" varchar(100),   NOT NULL,
    "backers_count" int,   NOT NULL,
    "country" varchar(50),   NOT NULL,
    "currency" varchar(50),   NOT NULL,
    "launched_date" date,   NOT NULL,
    "end_date" date,   NOT NULL,
    "contact_id" int   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);
​
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");
​
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");
​
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");
​


-- Item 2: Checking all the tables have the right data by running one at a time
select * from campaign
select * from category
select * from contacts
select * from subcategory


-- Item 3: Running Query across the four different tables
CREATE TABLE merged_data_2 AS
SELECT c.contact_id, c.first_name, c.last_name, c.email,
       ca.category_id, ca.category,
       s.subcategory_id, s.subcategory,
       cm.cf_id, cm.company_name, cm.description, cm.goal, cm.pledged,
       cm.outcome, cm.backers_count, cm.country, cm.currency,
       cm.launch_date, cm.end_date
FROM campaign cm
JOIN contacts c ON cm.contact_id = c.contact_id
JOIN category ca ON cm.category_id = ca.category_id
JOIN subcategory s ON cm.subcategory_id = s.subcategory_id;

-- Item 4: Ensuring Table Stored the Data
select * from merged_data_2
