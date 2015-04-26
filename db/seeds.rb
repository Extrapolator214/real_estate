# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(full_name: 'John Doe', role: :customer, phone: +12345678901, email: 'john.doe@test.com', password: 'testtest', api_token: 'supersecretkey!')
User.create!(full_name: 'Johnny Depp', role: :agent, phone: +12234567890, email: 'johnny.depp@test.com', password: 'testtest')
User.create!(full_name: 'Angelina Jolie', role: :customer, phone: +12345678902, email: 'angelina.jolie@test.com', password: 'testtest')
User.create!(full_name: 'ZeroC0ol', role: :admin, phone: +12345678901, email: 'zeroc0ol@hackers.com', password: 'testtest')

Ad.create(country: 'US', region: 'CA', city: 'Mountain View', address: "1600 Amphitheatre Parkway", offer: :rent_out,
          user_id: User.find_by(full_name: 'John Doe').id, price: 10_000_000, currency: 'USD', price_period: :month,
          description: 'Nice location, a lot of smart Googlers')

Ad.create(country: 'France', region: '', city: 'Paris', address: "Louvre", offer: :sell,
          user_id: User.find_by(full_name: 'Johnny Depp').id, price: 100_000_000_000, currency: 'EUR',
          description: 'Paintings!')

Ad.create(country: 'RU', region: 'St Petersburg', city: 'St Petersburg', address: "Gorokhovaya, 1", offer: :rent_out,
          user_id: User.find_by(full_name: 'Johnny Depp').id, price: 100_000, currency: 'USD', price_period: :month,
          description: 'in the center of the city, near a park')

Ad.create(country: 'US', region: 'NJ', city: 'New Ark', address: "YMCA", offer: :sell,
          user_id: User.find_by(full_name: 'Angelina Jolie').id, price: 10_000_000, currency: 'USD',
          description: "Y-m-c-a ... you'll find it at the y-m-c-a")

Ad.create(country: 'RU', region: 'Moscow', city: 'Moscow', address: "Kremlin", offer: :rent_out,
          user_id: User.find_by(full_name: 'ZeroC0ol').id, price: 10_000_999, currency: 'RUB', price_period: :day,
          description: 'open and spacious venue for all kinds of events')

Ad.create(country: 'RU', region: 'Moscow', city: 'Moscow', address: "Red Square", offer: :rent_out,
          user_id: User.find_by(full_name: 'ZeroC0ol').id, price: 5_999, currency: 'RUB', price_period: :day,
          description: '6 sq meter for street retail')