# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Freegraffer.destroy_all

user_1 = User.new(email: 'crazyp@gmail.com', password: 'hello123')
user_1.save

user_2 = User.new(email: 'Baby@gmail.com', password: 'hello123')
user_2.save

freegraffer_1 = Freegraffer.new(description: 'Crazy P', price: 50, disponibility: 'any month', style: 'calligrapher')
freegraffer_1.user = User.first

file = File.open(File.join(Rails.root, 'app/assets/images/el_xupet_negre.png'))
freegraffer_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

freegraffer_1.save

# file2 = File.open(File.join(Rails.root, 'app/assets/images/lenomdemonimage.jpg'))


freegraffer_2 = Freegraffer.new(description: 'Tim', price: 50, disponibility: 'any month', style: 'calligrapher')
freegraffer_2.user = User.first

file = File.open(File.join(Rails.root, 'app/assets/images/photo_un.jpg'))
freegraffer_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

freegraffer_2.save

freegraffer_3 = Freegraffer.new(description: 'Dj Pink Jelly', price: 50, disponibility: 'any month', style: 'calligrapher')
freegraffer_3.user = User.first

file = File.open(File.join(Rails.root, 'app/assets/images/photo_deux.jpg'))
freegraffer_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

freegraffer_3.save

freegraffer_4 = Freegraffer.new(description: 'Terrence evans', price: 50, disponibility: 'any month', style: 'calligrapher')
freegraffer_4.user = User.first

file = File.open(File.join(Rails.root, 'app/assets/images/photo_trois.jpg'))
freegraffer_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

freegraffer_4.save

freegraffer_5 = Freegraffer.new(description: 'Zoro lasticot', price: 50, disponibility: 'any month', style: 'calligrapher')
freegraffer_5.user = User.first

file = File.open(File.join(Rails.root, 'app/assets/images/photo_quatre.jpg'))
freegraffer_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

freegraffer_5.save


freegraffer_6 = Freegraffer.new(description: 'Banksy', price: 50, disponibility: 'any month', style: 'calligrapher')
freegraffer_6.user = User.first

file = File.open(File.join(Rails.root, 'app/assets/images/photo_cinq.jpg'))
freegraffer_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

freegraffer_6.save


