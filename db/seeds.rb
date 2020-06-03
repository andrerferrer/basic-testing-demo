puts 'Clean the db'
Product.destroy_all
User.destroy_all

puts 'Create products'
User.create! email: 'player@one.com', password: '123456'

puts 'Create products'

100.times do
  Product.create!(
    name: Faker::Company.name,
    tagline: Faker::Company.catch_phrase
  )
end

puts "We're good to go"