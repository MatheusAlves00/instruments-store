# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instrument.create!(
  name: 'Violão Acústico 3/4',
  model: 'FA-15',
  brand: 'Fender',
  price: 1234.00
)

Instrument.create!(
  name: 'ContraBaixo Elétrico',
  model: 'Classic Vibe 60s Precision Bass',
  brand: 'Squier',
  price: 4975.00
)

Instrument.create!(
  name: 'Guitarra',
  model: 'Pacifica 112 VII',
  brand: 'Yamaha',
  price: 835.00
)
