-- Business
INSERT INTO business
Select 
business_data:address,
business_data:attributes,
business_data:business_id,
business_data:categories,
business_data:city,
business_data:hours,
business_data:is_open,
business_data:latitude,
business_data:longitude,
business_data:name,
business_data:postal_code,
business_data:review_count,
business_data:stars,
business_data:state
from
"UDACITYPROJECT"."STAGING"."BUSINESS";

-- Checkin
INSERT INTO checkin
select checkin_data:business_id as business_id, date(f.VALUE) as checkin_date, COUNT(*) as checkins
from "UDACITYPROJECT"."STAGING"."CHECKIN", lateral flatten(input => split(checkin_data:date,',')) as f

group by 1,2;


-- User Details
INSERT INTO user_details
SELECT 
 USER_DATA:"average_stars",
 USER_DATA:"compliment_cool",
 USER_DATA:"compliment_cute",
 USER_DATA:"compliment_funny",
 USER_DATA:"compliment_hot",
 USER_DATA:"compliment_list",
 USER_DATA:"compliment_more",
 USER_DATA:"compliment_note",
 USER_DATA:"compliment_photos",
 USER_DATA:"compliment_plain",
 USER_DATA:"compliment_profile",
 USER_DATA:"compliment_writer",
 USER_DATA:"cool",
 USER_DATA:"elite",
 USER_DATA:"fans",
 USER_DATA:"friends", 
 USER_DATA:"funny",
 USER_DATA:"name",
 USER_DATA:"review_count",
 USER_DATA:"useful",
 USER_DATA:"user_id",
 USER_DATA:"yelping_since"
FROM "UDACITYPROJECT"."STAGING"."USER_DETAILS";


 -- Tip
INSERT INTO tip
SELECT TIP_DATA:"business_id",
TIP_DATA:"compliment_count",
TIP_DATA:"date",
TIP_DATA:"text",
TIP_DATA:"user_id"
FROM "UDACITYPROJECT"."STAGING"."TIP";

-- Review
INSERT INTO review
SELECT
REVIEW_DATA:"business_id",
REVIEW_DATA:"cool",
REVIEW_DATA:"date",
REVIEW_DATA:"funny",
REVIEW_DATA:"review_id",
REVIEW_DATA:"stars",
REVIEW_DATA:"text",
REVIEW_DATA:"useful",
REVIEW_DATA:"user_id"
FROM "UDACITYPROJECT"."STAGING"."REVIEW";

-- COVID_FEATURES
INSERT INTO covid_features
select covid_features_data:"Call To Action enabled",
 covid_features_data:"Covid Banner",
 covid_features_data:"Grubhub enabled",
 covid_features_data:"Request a Quote Enabled",
 covid_features_data:"Temporary Closed Until",
 covid_features_data:"Virtual Services Offered",
 covid_features_data:"business_id",
 covid_features_data:"delivery or takeout",
 covid_features_data:"highlights"
 FROM "UDACITYPROJECT"."STAGING"."COVID_FEATURES";
 
-- TEMPERATURE
INSERT INTO TEMPERATURE
SELECT TO_DATE(TO_CHAR(DATE),'yyyymmdd'),
"MIN",
"MAX",
"NORMAL_MIN",
"NORMAL_MAX"
FROM "UDACITYPROJECT"."STAGING"."TEMPERATURE";

-- Precipitation

INSERT INTO PRECIPITATION
SELECT TO_DATE(TO_CHAR(DATE),'yyyymmdd'),
PRECIPITATION,
PRECIPITATION_NORMAL
FROM "UDACITYPROJECT"."STAGING"."PRECIPITATION";
