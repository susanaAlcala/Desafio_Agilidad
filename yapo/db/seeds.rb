# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

2.times do |i|
    User.create!({
        name: "User number #{i}",
        email: "user#{i}@example.cl",
        password: 'strongpass',
        password_confirmation: 'strongpass'
    })
end

User.all.each do |user|
    4.times do |i|
        Product.create!({
            name: "Producto #{i} del usuario #{user.name}",
            user_id: user.id,
            description: 'some string......',
            price: 1111*i
        })
    end
end