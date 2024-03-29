campaign
-
cf_id int PK
contact_id int FK - contacts.contact_id
company_name varchar(100)
description text
goal numeric(10,2)
pledged numeric(10,2)
outcome varchar(50)
backers_count int
country varchar(10)
currency varchar(10)
launched_date date
end_date date
category_id varchar(10) FK >- category.category_id
subcategory_id varchar(10) FK >- subcategory.subcategory_id

category
-
category_id varchar(10) PK
category_name varchar(50)

subcategory
-
subcategory_id varchar(10) PK
subcategory_name varchar(50)

contacts
-
contact_id int PK
first_name varchar(50)
last_name varchar(50)
email varchar(100)

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id),
	PRIMARY KEY (cf_id)
);

CREATE TABLE category (
	category_id VARCHAR(10) NOT NULL,
	category_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (category_id)
);
	
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	PRIMARY KEY (contact_id)
);