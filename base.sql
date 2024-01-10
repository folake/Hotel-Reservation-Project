WITH
	base AS(
		SELECT
	CONCAT(
		arrival_date_year,
		'-',
		CASE
			WHEN arrival_date_month ='January' THEN '01'
			WHEN arrival_date_month ='February' THEN '02'
			WHEN arrival_date_month ='March' THEN '03'
			WHEN arrival_date_month ='April' THEN '04'
			WHEN arrival_date_month ='May' THEN '05'
			WHEN arrival_date_month ='June' THEN '06'
			WHEN arrival_date_month ='July' THEN '07'
			WHEN arrival_date_month ='August' THEN '08'
			WHEN arrival_date_month ='September' THEN '09'
			WHEN arrival_date_month ='October' THEN '10'
			WHEN arrival_date_month ='November' THEN '11'
			WHEN arrival_date_month ='December' THEN '12'
			ELSE NULL
		END,
		'-',
		LPAD(CAST(arrival_date_day_of_month AS VARCHAR), 2, '0')
		) AS arrivalDate,
	*
FROM
	"Hotel Reservation"
		
	)
	
SELECT
			arrivalDate,
			COUNT(*) AS total_bookings,
			SUM(is_canceled) AS total_cancelations,
			100 * SUM(is_canceled) / COUNT(*) AS cancellation_percentage
		FROM
			base
		GROUP BY
			1;	