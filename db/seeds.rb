# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.new(name:'inne').save
Category.create(name:'kolory')
Category.create(name:'jedzenie')
Word.create(polics'pomarańczowy',english:'orange',spanish:'naranja')