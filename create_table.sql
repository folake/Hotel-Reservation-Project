CREATE TABLE "Hotel Reservation"
(
    hotel character varying,
    is_canceled integer,
    lead_time integer,
    arrival_date_year integer,
    arrival_date_month character varying,
    arrival_date_week_number integer,
    arrival_date_day_of_month integer,
    stays_in_weekend_nights integer,
    stays_in_week_nights integer,
    adults integer,
    children character varying,
    babies integer,
    meal character varying,
    country character varying,
    market_segment character varying,
    distribution_channel character varying,
    is_repeated_guest integer,
    previous_cancellations integer,
    previous_bookings_not_canceled integer,
    reserved_room_type character varying,
    assigned_room_type character varying,
    booking_changes integer,
    deposit_type character varying,
    agent character varying,
    company character varying,
    days_in_waiting_list integer,
    customer_type character varying,
    adr numeric(6, 2),
    required_car_parking_spaces integer,
    total_of_special_requests integer,
    reservation_status character varying,
    reservation_status_date date
);