require 'json'
textfile = File.open("././dictionary.json").read
data = JSON.parse(textfile)

data["dictionary"].each do |item|
  Word.create(name: item["word"])
end
# https://developer.oxforddictionaries.com/documentation#!/Utility/get_domains_source_language
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Arttype.create(name:"Ink")
Arttype.create(name:"Clay")
Arttype.create(name:"Acrylic Paint")
Arttype.create(name:"Paper")
Arttype.create(name: "Watercolor Painting")
Arttype.create(name: "Drawing")
Arttype.create(name: "Oil Paint")
Arttype.create(name: "Chalk")
Arttype.create(name: "Tempera")
Arttype.create(name: "Gouache")
Arttype.create(name: "Airbrushes")
Arttype.create(name: "Crayons")
Arttype.create(name: "Textile")
Arttype.create(name: "Fresco")
Arttype.create(name: "Engraving")
Arttype.create(name: "Photography")
Arttype.create(name: "Woodblock Print")
Arttype.create(name: "Ceramic")
Arttype.create(name: "Sound Project")
