# Airbnb Clone — ERD Requirements

## Objective

Design an Entity-Relationship Diagram (ERD) that clearly outlines the structure of the Airbnb Clone database. The ERD should visually represent entities, their attributes, and the relationships between them to guide the database design and implementation process.

---

## Core Entities & Attributes

### 1. User

- id (PK)
- username
- email
- password_hash
- profile_picture
- created_at

### 2. Property

- id (PK)
- owner_id (FK to User)
- title
- description
- location
- price_per_night
- created_at

### 3. Booking

- id (PK)
- user_id (FK to User)
- property_id (FK to Property)
- start_date
- end_date
- status
- created_at

### 4. Review

- id (PK)
- user_id (FK to User)
- property_id (FK to Property)
- rating
- comment
- created_at

### 5. Payment

- id (PK)
- booking_id (FK to Booking)
- amount
- payment_date
- payment_status
- created_at

---

## Relationships

- **User → Property**: One user (owner) can own multiple properties (one-to-many).
- **User → Booking**: One user can have multiple bookings (one-to-many).
- **Property → Booking**: One property can have multiple bookings (one-to-many).
- **User → Review**: One user can write multiple reviews (one-to-many).
- **Property → Review**: One property can have multiple reviews (one-to-many).
- **Booking → Payment**: One booking has exactly one payment (one-to-one).

---

## Constraints

- Primary keys (PK) must be unique identifiers for each entity.
- Foreign keys (FK) must enforce referential integrity between related tables.
- Appropriate constraints (e.g., NOT NULL, UNIQUE) should be applied to ensure data quality.

---

## Indexing

- Index foreign key columns to improve JOIN performance.
- Consider indexing frequently queried columns (e.g., email in User, location in Property).

---

## Expected Deliverable

- A clear ERD diagram file (e.g., PNG, PDF, or diagram tool link).
- Diagram should include:
  - Entity rectangles with listed attributes.
  - Primary and foreign key indications.
  - Lines/arrows representing relationships, with cardinalities (1:1, 1:M, etc.) clearly marked.

---

*Prepared for Pro Dev Backend Cohort 2 — Airbnb Clone Project*
