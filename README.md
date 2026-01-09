# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Flight booking systenm as part of Odin project

### Step 1:

One way flights
4 dropdowns - from, to, date and number of passengers

Airport model:
Name
Airport code

Flight model:
Departure
Arrival airport
start time 
flight duration

Added index.html for flights with 4 fields - searh included
Search values need to be retained 

Add booking model:
belong to flight
has many passengers

flight has many bookings

passenger
name
email
age max limit addition required

passenger belongs to booking 