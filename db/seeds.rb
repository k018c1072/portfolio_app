# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User_number = 5
users = []
User_number.times do |n|
    time = Time.current
    users <<
        {
            email: Faker::Internet.email,
            encrypted_password: 'password',
            name: Faker::Name.name,
            created_at: time,
            updated_at: time
        }
end
User.insert_all users

portfolios = []
5.times do |n|
    time = Time.current
    portfolios <<
    {
        title: Faker::Book.title,
        description: Faker::Lorem.sentence,
        url: Faker::Internet.url,
        user_id: "#{ rand(1..5)}",
        created_at: time,
        updated_at: time
    }
end
Portfolio.insert_all portfolios
