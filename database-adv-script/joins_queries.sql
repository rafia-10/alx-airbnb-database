
SELECT b.id AS booking_id, b.check_in, b.check_out, u.id AS user_id, u.name AS user_name
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

##