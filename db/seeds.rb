# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.create(name: "John F. Kennedy International Airport", airport_code: "JFK")
Airport.create(name: "Los Angeles International Airport", airport_code: "LAX")
Airport.create(name: "Chicago O'Hare International Airport", airport_code: "ORD")
Airport.create(name: "San Francisco International Airport", airport_code: "SFO")
Airport.create(name: "London Heathrow Airport", airport_code: "LHR")
Airport.create(name: "Paris Charles de Gaulle Airport", airport_code: "CDG")
Airport.create(name: "Tokyo Narita Airport", airport_code: "NRT")
Airport.create(name: "Sydney Airport", airport_code: "SYD")
Airport.create(name: "Mumbai Chhatrapati Shivaji International Airport", airport_code: "BOM")
Airport.create(name: "Dubai International Airport", airport_code: "DXB")


# Fetch airports
jfk = Airport.find_by!(airport_code: "JFK")
lax = Airport.find_by!(airport_code: "LAX")
ord = Airport.find_by!(airport_code: "ORD")
sfo = Airport.find_by!(airport_code: "SFO")
lhr = Airport.find_by!(airport_code: "LHR")
cdg = Airport.find_by!(airport_code: "CDG")
nrt = Airport.find_by!(airport_code: "NRT")
syd = Airport.find_by!(airport_code: "SYD")
bom = Airport.find_by!(airport_code: "BOM")
dxb = Airport.find_by!(airport_code: "DXB")

# Flights
Flight.create!(
  departure_airport: jfk,
  arrival_airport: lax,
  start: Time.current + 1.day,
  duration: 360
)
Flight.create!(
  departure_airport: lax,
  arrival_airport: sfo,
  start: Time.current + 2.days,
  duration: 90
)

Flight.create!(
  departure_airport: ord,
  arrival_airport: jfk,
  start: Time.current + 3.days,
  duration: 120
)

Flight.create!(
  departure_airport: lhr,
  arrival_airport: cdg,
  start: Time.current + 4.days,
  duration: 75
)

Flight.create!(
  departure_airport: lhr,
  arrival_airport: dxb,
  start: Time.current + 5.days,
  duration: 420
)

Flight.create!(
  departure_airport: dxb,
  arrival_airport: bom,
  start: Time.current + 6.days,
  duration: 180
)

Flight.create!(
  departure_airport: nrt,
  arrival_airport: syd,
  start: Time.current + 7.days,
  duration: 600
)

Flight.create!(
  departure_airport: syd,
  arrival_airport: lax,
  start: Time.current + 8.days,
  duration: 840
)