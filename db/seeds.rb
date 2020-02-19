#puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = [
  {
    name:         'Light & Spacious Garden Flat London',
    address:      '7 Boundary St, London E2 7JE',
    description:  'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night:  60,
    number_of_guests: 3
  },
  {
    name:         'Imperial Palace',
    address:      'Hue',
    description:  'the perfect palace for all your friend',
    price_per_night:  1000,
    number_of_guests: 20
  },
  {
    name:         'Cage à poules',
    address:      'Paris 3ième',
    description:  'A lovely little flat of 12m²',
    price_per_night:  800,
    number_of_guests: 1
  },
  {
    name:         'Space Station',
    address:      'Mars',
    description:  'A beautiful capsule on Mars',
    price_per_night:  300,
    number_of_guests: 8
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
