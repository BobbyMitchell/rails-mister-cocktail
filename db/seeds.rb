puts 'Clearing database....'

Ingredient.destroy_all
Dose.destroy_all
Cocktail.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
