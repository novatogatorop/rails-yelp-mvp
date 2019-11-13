require 'faker'

CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

puts "Cleans DB..."
Restaurant.destroy_all

puts "Adds 20 new Restaurant records..."
20.times do
  res = Restaurant.create!(name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code)
res.reviews << Review.new(content: Faker::Restaurant.review,
    rating: (0..5).to_a.sample)
end
