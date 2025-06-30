# Airbnb Clone — Database Normalization

## Objective

Apply normalization principles to ensure the Airbnb Clone database schema is in the Third Normal Form (3NF), minimizing redundancy and ensuring data integrity.

---

## First Normal Form (1NF)

### Requirements
- Each table must have a primary key.
- No repeating groups or arrays.
- All attributes must contain only atomic (indivisible) values.

### Review
- All tables in the schema have a primary key (`id`).
- Each field holds atomic values (e.g., no comma-separated lists or arrays).

✅ **Schema satisfies 1NF.**

---

## Second Normal Form (2NF)

### Requirements
- Must meet all 1NF requirements.
- All non-key attributes must be fully functionally dependent on the entire primary key.
- No partial dependency on part of a composite key.

### Review
- All tables use a single-column primary key (`id`), so no composite keys exist.
- All non-key attributes depend on the full primary key in each table.

✅ **Schema satisfies 2NF.**

---

## Third Normal Form (3NF)

### Requirements
- Must meet all 2NF requirements.
- No transitive dependencies (non-key attributes should not depend on other non-key attributes).

### Review
- **Users Table:** All non-key attributes depend on `id`.
- **Properties Table:** All non-key attributes depend on `id`, and `owner_id` is a foreign key referencing `users(id)`.
- **Bookings Table:** All non-key attributes depend on `id`. Foreign keys (`user_id`, `property_id`) reference primary keys in other tables.
- **Reviews Table:** Same structure — no transitive dependencies.
- **Payments Table:** All non-key attributes depend on `id`. `booking_id` is a foreign key.

### Adjustments (if any)

No changes were required to achieve 3NF. The original schema was already designed to minimize redundancy and ensure all non-key attributes depend only on the primary key.

✅ **Schema satisfies 3NF.**

---

## Conclusion

After carefully reviewing each entity, the Airbnb Clone database design fully complies with 3NF. All attributes are atomic, have no partial dependencies, and do not have transitive dependencies.  

This ensures data integrity, reduces redundancy, and improves maintainability of the system.

---

*Prepared for Pro Dev Backend Cohort 2 — Airbnb Clone Project*
