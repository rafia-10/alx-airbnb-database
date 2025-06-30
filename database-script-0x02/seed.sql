-- Insert sample users
INSERT INTO users (username, email, password_hash, profile_picture) VALUES
('alice', 'alice@example.com', 'hashed_password_1', 'alice_pic.jpg'),
('bob', 'bob@example.com', 'hashed_password_2', 'bob_pic.jpg'),
('carla', 'carla@example.com', 'hashed_password_3', 'carla_pic.jpg');

-- Insert sample properties
INSERT INTO properties (owner_id, title, description, location, price_per_night) VALUES
(1, 'Cozy Apartment in NYC', 'A beautiful, cozy apartment in the heart of New York City.', 'New York, NY', 150.00),
(2, 'Beachfront Villa', 'Luxury villa with ocean views and private pool.', 'Malibu, CA', 450.00),
(1, 'Mountain Cabin Retreat', 'Rustic cabin perfect for a getaway.', 'Aspen, CO', 250.00);

-- Insert sample bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, status) VALUES
(2, 1, '2025-07-01', '2025-07-05', 'confirmed'),
(3, 2, '2025-08-10', '2025-08-15', 'pending'),
(2, 3, '2025-09-01', '2025-09-04', 'confirmed');

-- Insert sample reviews
INSERT INTO reviews (user_id, property_id, rating, comment) VALUES
(2, 1, 5, 'Amazing stay! The host was super friendly and the place was spotless.'),
(3, 2, 4, 'Beautiful villa, but the Wi-Fi was a bit slow.'),
(2, 3, 5, 'Loved the cabin vibes! Perfect for a relaxing weekend.');

-- Insert sample payments
INSERT INTO payments (booking_id, amount, payment_date, payment_status) VALUES
(1, 600.00, '2025-06-28', 'completed'),
(2, 2250.00, '2025-08-05', 'pending'),
(3, 750.00, '2025-08-28', 'completed');
