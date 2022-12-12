-- this query shows the number of checkins/business by day with the associated temperature in Nevada (where the temperature data is from)

SELECT c.DATE, SUM(c.checkins) as CHECKINS, MIN(t."MIN")as temp_min FROM 
"UDACITYPROJECT"."ODS"."CHECKIN" c
LEFT JOIN "UDACITYPROJECT"."ODS"."BUSINESS" b ON c.BUSINESS_ID = b.BUSINESS_ID
LEFT JOIN "UDACITYPROJECT"."ODS"."TEMPERATURE"t on c.DATE = t.date
WHERE b.state = 'NV'
GROUP BY 1