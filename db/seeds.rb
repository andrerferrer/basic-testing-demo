puts 'Clean the db'
Product.destroy_all

puts 'Create products'

100.times do
  Product.create!(
    name: Faker::Company.name,
    tagline: Faker::Company.catch_phrase
  )
end

puts "We're good to go"