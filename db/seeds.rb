User.destroy_all
u1 = User.create :name => 'Ken'
u2 = User.create :name => 'Yang'
u3 = User.create :name => 'Trent'
u4 = User.create :name => 'Mai'
puts "#{User.count} users created"

Airplane.destroy_all
a1 = Airplane.create :name => 'Dash8', :rows => '9', :cols => '4'
a2 = Airplane.create :name => 'Dash9', :rows => '8', :cols => '4'
a3 = Airplane.create :name => 'Dash10', :rows => '9', :cols => '5'
a4 = Airplane.create :name => 'Dash11', :rows => '7', :cols => '4'
puts "#{Airplane.count} planes created"

Flight.destroy_all
f1 = Flight.create :flight_number => 'KA001', :origin => 'Sydney', :destination => 'Melbourne', :date => '2021-02-11'
f2 = Flight.create :flight_number => 'KA002', :origin => 'Adelaide', :destination => 'Sydney', :date => '2021-02-15'
f3 = Flight.create :flight_number => 'KA003', :origin => 'Brisbane', :destination => 'Adelaide', :date => '2021-03-01'
f4 = Flight.create :flight_number => 'KA004', :origin => 'Perth', :destination => 'Darwin', :date => '2021-02-14'
puts "#{Flight.count} flights created"

# Associations
puts "Airplanes and Flights"
a1.flights << f1
a2.flights << f2
a3.flights << f3
a4.flights << f4

puts "Flights and Users"
u1.flights << f1 << f2
u2.flights << f2 << f3
u3.flights << f3 << f4
u4.flights << f4 << f1
