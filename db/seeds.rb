# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ProductType.destroy_all
Instrument.destroy_all

ProductType.create!(
[{ type_name: 'Guitar' }, { type_name: 'Electric guitar' },
{ type_name: 'Bass' }, { type_name: 'Keyboard' },
{ type_name: 'Piano' }, { type_name: 'Flute' },
{ type_name: 'Cello' }, { type_name: 'Clarinet' },
{ type_name: 'Accordion' }, { type_name: 'Saxophone' },
{ type_name: 'Violin' }, { type_name: 'Drums' }])

Instrument.create!([{
  name: 'Violão',
  model: 'FA-15',
  brand: 'Fender',
  price: 1234.00,
  product_type_id: 1
},
{
  name: 'Guitarra',
  model: 'Classic Rock 60s',
  brand: 'Squier',
  price: 3415.00,
  product_type_id: 2
},
{
  name: 'Contrabaixo',
  model: 'Precision Bass',
  brand: 'LoseGroove',
  price: 4975.00,
  product_type_id: 3
},
{
  name: 'Teclado',
  model: 'Router Show C4',
  brand: 'Martinrian',
  price: 1100.00,
  product_type_id: 4
},
{
  name: 'Piano',
  model: 'Classic Arcoustic 90s',
  brand: 'Yamaha',
  price: 12500.00,
  product_type_id: 5
},
{
  name: 'Flauta',
  model: 'Metal Sorion X',
  brand: 'Sorion',
  price: 850.00,
  product_type_id: 6
},
{
  name: 'Violoncelo',
  model: 'Wood Stack',
  brand: 'Fortriss',
  price: 1300.00,
  product_type_id: 7
},
{
  name: 'Clarineta',
  model: 'Classic Vibe 60s Precision Bass',
  brand: 'Squier',
  price: 875.00,
  product_type_id: 8
},
{
  name: 'Acordion',
  model: 'G600',
  brand: 'PacBack',
  price: 1100.00,
  product_type_id: 9
},
{
  name: 'Saxofone',
  model: 'Ilustrate S10',
  brand: 'MadGroove',
  price: 1355.00,
  product_type_id: 10
},
{
  name: 'Violino',
  model: 'Frost NG100',
  brand: 'Nixus',
  price: 1245.00,
  product_type_id: 11
},
{
  name: 'Bateria',
  model: 'Pacifica 112 VII',
  brand: 'Yamaha',
  price: 1835.00,
  product_type_id: 12
}])
