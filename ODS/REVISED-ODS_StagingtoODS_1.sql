-- please note primary and foreign key constraint are now added

CREATE OR REPLACE TABLE business(
business_id string primary key,
address string,
attributes object,
categories string,
city string,
hours object,
is_open number,
latitude string,
longitude string,
name string,
postal_code string,
review_count number,
stars number,
state string
);

CREATE OR REPLACE TABLE user_details(
  "user_id" string primary key,
 "average_stars" number,
 "compliment_cool" number,
 "compliment_cute" number,
 "compliment_funny"number,
 "compliment_hot" number,
 "compliment_list" number,
 "compliment_more" number,
 "compliment_note" number,
 "compliment_photos" number,
 "compliment_plain" number,
 "compliment_profile" number,
 "compliment_writer" number,
 "cool" number,
 "elite" string,
 "fans" number,
 "friends" string, 
 "funny" number,
 "name" string,
 "review_count" number,
 "useful" number,
 "yelping_since" date);
 
 CREATE OR REPLACE TABLE review(
"review_id" string primary key,
"business_id" string foreign key references "UDACITYPROJECT"."ODS"."BUSINESS",
"user_id" string foreign key references "UDACITYPROJECT"."ODS"."USER_DETAILS"
"cool" number,
"date" date,
"funny" number,
"stars" number,
"text" string,
"useful" number,
);

CREATE OR REPLACE TABLE TEMPERATURE(
DATE date primary key,
"MIN" number,
"MAX" number, 
NORMAL_MIN number, 
NORMAL_MAX number
);

CREATE OR REPLACE TABLE PRECIPITATION
(Date date primary key,
Precipitation number,
Precipitation_normal number);


CREATE OR REPLACE TABLE covid_features
( business_id string primary key,
  call_to_action_enabled string,
 covid_banner string,
 grubhub_enabled string,
 request_a_quote_enabled string,
 temporary_closed_until string,
 virtual_services_offered string,
 delivery_or_takeout string,
 highlights string);


CREATE OR REPLACE TABLE checkin(
business_id string foreign key references "UDACITYPROJECT"."ODS"."BUSINESS",
date date foreign key references "UDACITYPROJECT"."ODS"."TEMPERATURE",
checkins number
);


 CREATE OR REPLACE TABLE tip 
("business_id" string foreign key references "UDACITYPROJECT"."ODS"."BUSINESS",
  "user_id" string foreign key references "UDACITYPROJECT"."ODS"."USER_DETAILS",
  "compliment_count" number,
  "date" date  foreign key references "UDACITYPROJECT"."ODS"."TEMPERATURE",
  "text" string
);