class FlightReservation < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :flight, :optional => true
end
