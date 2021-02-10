json.extract! flight_reservation, :id, :user_id, :flight_id, :seat_id, :created_at, :updated_at
json.url flight_reservation_url(flight_reservation, format: :json)
