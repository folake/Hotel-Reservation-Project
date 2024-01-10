WITH
	metrics AS (
		SELECT
			arrival_date_year,
			COUNT(*) AS total_bookings,
			SUM(is_canceled) AS total_cancelations,
			SUM(is_canceled) / COUNT(*) AS cancellation_percentage
		FROM
			"Hotel Reservation"
		GROUP BY
			arrival_date_year
	)
	
SELECT
	*
FROM 
	metrics