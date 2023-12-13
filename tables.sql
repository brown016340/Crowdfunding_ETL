DROP TABLE IF EXISTS campaign,
                     category,
                     contacts,
                     subcategory;

CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY ,
    category VARCHAR
);

-- Create table subcategory
CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR
);

-- Create table contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    email VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR
);

-- Create table campaign
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR,
    description VARCHAR,
    goal INT,
    pledged INT,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR,
    subcategory_id VARCHAR,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;
