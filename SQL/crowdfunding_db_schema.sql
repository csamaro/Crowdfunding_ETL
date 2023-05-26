CREATE TABLE CATEGORY(
	category_id VARCHAR(4) NOT NULL PRIMARY KEY,
	category VARCHAR NOT NULL
);

CREATE TABLE SUBCATEGORY(
	subcategory_id VARCHAR(8) NOT NULL PRIMARY KEY,
	subcategory VARCHAR NOT NULL
);

CREATE TABLE CONTACTS(
	contact_id INT NOT NULL PRIMARY KEY, 
	first_name VARCHAR(30),
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR
);

CREATE TABLE CAMPAIGN(
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR,
	goal FLOAT NOT NULL,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_date DATE NOT NULL,
	end_date DATE,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,
	FOREIGN KEY (contact_id) references CONTACTS(contact_id),
	FOREIGN KEY (category_id) references CATEGORY(category_id),
	FOREIGN KEY (subcategory_id) references SUBCATEGORY(subcategory_id)
);