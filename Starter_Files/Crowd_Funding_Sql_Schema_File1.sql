-- SQL File Number 1: Creating all the tables. Data to be imported using the impor function directly 
-- create contacts table
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (50)  NOT NULL,
    last_name varchar (50)  NOT NULL,
    email varchar (50)  NOT NULL,
    primary key (contact_id)
);
-- create category table
CREATE TABLE category (
    category_id varchar (10)   NOT NULL,
    category varchar (50)  NOT NULL,
    primary key (category_id)
);
-- create subcategory table
CREATE TABLE subcategory (
    subcategory_id varchar (10)  NOT NULL,
    subcategory varchar (50)  NOT NULL,
    primary key (subcategory_id)
);
-- create campaign table
CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (50)  NOT NULL,
    description varchar (300)  NOT NULL,
    goal integer   NOT NULL,
    pledged integer   NOT NULL,
    outcome varchar (100)  NOT NULL,
    backers_count int   NOT NULL,
    country varchar (50)  NOT NULL,
    currency varchar (50)  NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar (10)  NOT NULL,
    subcategory_id varchar (10)  NOT NULL,
    primary key (cf_id),
    foreign key (contact_id) references contacts(contact_id),
    foreign key (category_id) references category(category_id),
    foreign key (subcategory_id) references subcategory(subcategory_id)
);

