# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.new(email: 'crazyp@gmail.com', password: 'hello123')
user_1.save

freegraffer_1 = Freegraffer.new(description: 'Crazy P', price: 50, disponibility: 'any month', style: 'calligrapher')
freegraffer_1.user = User.first
freegraffer_1.save
