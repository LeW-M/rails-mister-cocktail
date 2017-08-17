# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all

p "Populating Ingredient seeds"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
p "Ingredients populated"

p "Populating Cocktail seeds"
Cocktail.create(name: "Mint Julep")
Cocktail.create(name: "Whiskey Sour")
Cocktail.create(name: "Mojito")
p "Cocktail populated"

p "Populating cocktail attributes"
Cocktail.all.each do |cocktail|
  description = %w(20ml 40ml 50ml)
  5.times do
    Dose.create(description: description.sample, ingredient: Ingredient.all.sample, cocktail: cocktail)
  end
end
p "Finished populating cocktail attributes"
