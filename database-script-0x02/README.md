# Airbnb Clone Database Seeding

## Overview

This directory contains SQL scripts to populate the Airbnb Clone database with sample data. The seed data helps simulate realistic scenarios for testing and development.

## Files

- **seed.sql**: Contains `INSERT` statements for Users, Properties, Bookings, Reviews, and Payments.
- **README.md**: Explains the purpose and contents of the seed data.

## Sample Data Details

### Users

Three sample users with different usernames and emails to simulate a small community.

### Properties

Three diverse properties:
- Cozy city apartment
- Luxury beachfront villa
- Rustic mountain cabin

### Bookings

Bookings from different users, with various statuses (confirmed, pending).

### Reviews

Feedback from users to showcase the review system and its influence on future guests.

### Payments

Payments linked to bookings, with different statuses (completed, pending) to reflect real transaction states.

## Usage

Run the `seed.sql` script **after** creating the schema (from `database-script-0x01/schema.sql`) to populate the tables:

```bash
mysql -u your_username -p your_database_name < seed.sql
