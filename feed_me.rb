require "./one_of_each"

meats = %w(steak carnitas chicken barbacoa)
beans = %w(no pinto black)
salsas = %w(no mild medium hot nuclear)
guacamoles = [true,false]
rices = [true,false]
sour_creams = [true,false]
cheeses = [true,false]
lettuces = [true,false]

ingredients = [meats, beans, salsas, guacamoles, rices, sour_creams, cheeses, lettuces]


ingredients.one_of_each(ingredients, []) do |i|
	p i.join " "
end
