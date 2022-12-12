-- DIM

CREATE OR REPLACE TABLE BUSINESS_DETAILS_DIM AS(
SELECT b.business_ID,
b.name as business_name
b.address,
b.city,
b.state,
b.postal_code,
cf."COVID_BANNER" as covid_banner
FROM "UDACITYPROJECT"."ODS"."BUSINESS" b 
LEFT JOIN"UDACITYPROJECT"."ODS"."COVID_FEATURES" cf ON b.business_id = cf.business_id);

CREATE TABLE USER_DIM AS (SELECT 
"user_id" as user_id,
"name" as user_name,
"yelping_since" as yelping_since
FROM 
"UDACITYPROJECT"."ODS"."USER_DETAILS" u);

CREATE OR REPLACE TABLE WEATHER_DIM AS(
SELECT t.DATE
,(t."MIN" + t."MAX")/2 as avg_temperature
,p.precipitation
FROM "UDACITYPROJECT"."ODS"."TEMPERATURE" t
LEFT JOIN "UDACITYPROJECT"."ODS"."PRECIPITATION" p ON t.DATE = p.DATE);


-- Fct
CREATE OR REPLACE TABLE Review_Fct AS (
SELECT 
w.date,
b.business_id,
b.NAME as business_name,
u."user_id" as user_id,
r."review_id" as review_id,
r."stars" as stars,
r."text" as text
FROM WEATHER_DIM w
LEFT JOIN "UDACITYPROJECT"."ODS"."REVIEW" r ON w.DATE = r."date"
LEFT JOIN BUSINESS_DETAILS_DIM b ON b.business_id = r."business_id"
LEFT JOIN USER_DIM u ON u."user_id" = r."user_id");