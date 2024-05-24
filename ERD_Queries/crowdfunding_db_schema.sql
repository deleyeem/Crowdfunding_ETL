

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(50)   NOT NULL UNIQUE,
    "subcategory" varchar(50)   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL UNIQUE,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(50)   NOT NULL
);


CREATE TABLE "category" (
    "category_id" varchar(50)   NOT NULL UNIQUE,
    "category" varchar(50)   NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL REFERENCES contacts(contact_id),
    "company_name" varchar(50)   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(50)   NOT NULL,
    "currency" varchar(50)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(50)   NOT NULL REFERENCES category(category_id),
    "subcategory_id" varchar(50)   NOT NULL REFERENCES subcategory(subcategory_id), 
    PRIMARY KEY (
        "cf_id"
     )
	
);


