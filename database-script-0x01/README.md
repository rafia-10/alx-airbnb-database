# Airbnb Clone Database Schema

## Overview

This directory contains the SQL schema for the Airbnb Clone project. The schema defines all database tables, their fields, relationships, constraints, and indexes to support efficient data storage and queries.

## Files

- **schema.sql**: Contains all the `CREATE TABLE` statements for the database, including primary keys, foreign keys, and indexes.
- **README.md**: This documentation file explaining the schema and design decisions.

## Tables

### Users

- Stores user credentials and profile information.
- Includes unique constraints on `username` and `email`.

### Properties

- Stores property listings added by users (owners).
- Linked to the Users table via `owner_id`.

### Bookings

- Manages property bookings by users.
- Linked to Users and Properties tables.

### Reviews

- Stores feedback left by users on properties.
- Includes a rating system (1–5 stars).

### Payments

- Handles payment details linked to bookings.

## Relationships

- One User can own multiple Properties.
- One User can have multiple Bookings and Reviews.
- One Property can have multiple Bookings and Reviews.
- One Booking has one Payment.

## Indexes

Indexes are created on foreign key columns to optimize query performance, especially for joins.

---

*Developed by Rafia Kedir — Pro Dev Backend Cohort 2*
