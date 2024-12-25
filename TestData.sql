-- Users
INSERT INTO users (email, password_hash, full_name, phone, role)
VALUES
  ('organizer1@example.com', '$2a$10$...', 'John Doe', '+1 (555) 123-4567', 'ORGANIZER'),
  ('organizer2@example.com', '$2a$10$...', 'Jane Smith', '+1 (555) 987-6543', 'ORGANIZER'),
  ('user1@example.com', '$2a$10$...', 'Bob Johnson', '+1 (555) 555-5555', 'USER'),
  ('user2@example.com', '$2a$10$...', 'Alice Williams', '+1 (555) 666-6666', 'USER'),
  ('admin@example.com', '$2a$10$...', 'Super Admin', '+1 (555) 777-7777', 'ADMIN');

-- Events
INSERT INTO events (organizer_id, title, description, venue, event_date, event_time, total_tickets, available_tickets, price, status)
VALUES
  (1, 'Music Festival', 'A day-long celebration of music', 'Central Park', '2023-06-15', '12:00:00', 5000, 5000, 50.00, 'PUBLISHED'),
  (1, 'Comedy Show', 'An evening of stand-up comedy', 'Comedy Club', '2023-07-10', '19:30:00', 500, 500, 25.00, 'PUBLISHED'),
  (2, 'Art Exhibit', 'Showcase of local artists', 'Museum of Art', '2023-08-01', '10:00:00', 200, 150, 15.00, 'PUBLISHED'),
  (2, 'Charity Gala', 'Fundraising event for local charities', 'Grand Hotel', '2023-09-20', '18:00:00', 300, 250, 100.00, 'DRAFT');

-- Ticket Categories
INSERT INTO ticket_categories (event_id, name, description, price, quantity, available_quantity)
VALUES
  (1, 'General Admission', 'Access to the festival', 50.00, 4000, 4000),
  (1, 'VIP', 'Exclusive access and perks', 100.00, 1000, 1000),
  (2, 'Standard', 'General admission to the show', 25.00, 450, 450),
  (2, 'Premium', 'Front row seats', 40.00, 50, 50),
  (3, 'Adult', 'Full price ticket', 15.00, 150, 100),
  (3, 'Student', 'Discounted ticket for students', 10.00, 50, 50),
  (4, 'Regular', 'Standard gala ticket', 100.00, 250, 250),
  (4, 'VIP', 'Exclusive gala ticket', 150.00, 50, 50);

-- Tickets
INSERT INTO tickets (event_id, category_id, user_id, ticket_number, qr_code, status)
VALUES
  (1, 1, 3, 'MUSIC-FEST-001', 'https://example.com/qr/MUSIC-FEST-001', 'ACTIVE'),
  (1, 2, 3, 'MUSIC-FEST-002', 'https://example.com/qr/MUSIC-FEST-002', 'ACTIVE'),
  (2, 3, 4, 'COMEDY-SHOW-001', 'https://example.com/qr/COMEDY-SHOW-001', 'ACTIVE'),
  (2, 4, 4, 'COMEDY-SHOW-002', 'https://example.com/qr/COMEDY-SHOW-002', 'ACTIVE'),
  (3, 5, 3, 'ART-EXHIBIT-001', 'https://example.com/qr/ART-EXHIBIT-001', 'ACTIVE'),
  (3, 6, 4, 'ART-EXHIBIT-002', 'https://example.com/qr/ART-EXHIBIT-002', 'ACTIVE'),
  (4, 7, 3, 'CHARITY-GALA-001', 'https://example.com/qr/CHARITY-GALA-001', 'ACTIVE'),
  (4, 8, 4, 'CHARITY-GALA-002', 'https://example.com/qr/CHARITY-GALA-002', 'ACTIVE');

-- Transactions
INSERT INTO transactions (user_id, ticket_id, amount, payment_method, transaction_status, transaction_reference)
VALUES
  (3, 1, 50.00, 'CREDIT_CARD', 'COMPLETED', 'TX-1234567890'),
  (3, 2, 100.00, 'CREDIT_CARD', 'COMPLETED', 'TX-0987654321'),
  (4, 3, 25.00, 'PAYPAL', 'COMPLETED', 'TX-2468013579'),
  (4, 4, 40.00, 'CREDIT_CARD', 'COMPLETED', 'TX-9876543210'),
  (3, 5, 15.00, 'CREDIT_CARD', 'COMPLETED', 'TX-1357924680'),
  (4, 6, 10.00, 'PAYPAL', 'COMPLETED', 'TX-0147852369'),
  (3, 7, 100.00, 'CREDIT_CARD', 'PENDING', 'TX-2468024680'),
  (4, 8, 150.00, 'CREDIT_CARD', 'PENDING', 'TX-6789012345');

-- Event Categories
INSERT INTO event_categories (name, description)
VALUES
  ('Music', 'Events related to music performances'),
  ('Comedy', 'Events featuring stand-up comedy'),
  ('Art', 'Events showcasing art and exhibitions'),
  ('Charity', 'Events organized for charitable purposes');

-- Event-Category Mappings
INSERT INTO event_category_mapping (event_id, category_id)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4);
