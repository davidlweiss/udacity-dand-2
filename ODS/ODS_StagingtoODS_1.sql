-- Business
CREATE OR REPLACE TABLE business(
address string,
attributes object,
business_id string,
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
-- Checkin
CREATE OR REPLACE TABLE checkin(
 business_id string,
 date date,
 checkins number
);
-- User Details
CREATE OR REPLACE TABLE user_details(
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
 "user_id" string,
 "yelping_since" date);
 -- Tip
 CREATE OR REPLACE TABLE tip 
(
  "business_id" string,
  "compliment_count" number,
  "date" date,
  "text" string,
  "user_id" string
);
-- Review
CREATE OR REPLACE TABLE REVIEW
("business_id" string,
"cool" number,
"date" date,
"funny" number,
"review_id" string,
"stars" number,
"text" string,
"useful" number,
"user_id" string
);
-- COVID_FEATURES
CREATE OR REPLACE TABLE covid_features
(call_to_action_enabled string,
 covid_banner string,
 grubhub_enabled string,
 request_a_quote_enabled string,
 temporary_closed_until string,
 virtual_services_offered string,
 business_id string,
 delivery_or_takeout string,
 highlights string);
 
-- TEMPERATURE
CREATE OR REPLACE TABLE TEMPERATURE(
DATE date,
"MIN" number,
"MAX" number, 
NORMAL_MIN number, 
NORMAL_MAX number
);

-- Precipitation

CREATE OR REPLACE TABLE PRECIPITATION
(Date date,
Precipitation number,
Precipitation_normal number);