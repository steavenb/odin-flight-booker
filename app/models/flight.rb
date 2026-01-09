class Flight < ApplicationRecord


  validates :start, presence: true, comparison: { greater_than: Time.now }
  validates :duration, presence: true, numericality: { greater_than: 0 }
  validates :departure_airport, presence: true
  validates :arrival_airport, presence: true
  validates :departure_airport, comparison: { other_than: :arrival_airport }

  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"
  has_many :bookings
end
