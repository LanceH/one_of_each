meats = %w(steak carnitas chicken barbacoa)
beans = %w(no pinto black)
salsas = %w(no mild medium hot nuclear)
guacamoles = [true,false]
rices = [true,false]
sour_creams = [true,false]
cheeses = [true,false]
lettuces = [true,false]

burritos = []

meats.each do |meat|
	beans.each do |bean|
		salsas.each do |salsa|
			guacamoles.each do |guac|
				rices.each do |rice|
					sour_creams.each do |sour|
						cheeses.each do |cheese|
							lettuces.each do |lettuce|
								burrito = "#{meat} burrito with #{bean} beans"
								burrito += rice ? ", rice" : ""
								burrito += guac ? ", guacamole" : ""
								burrito += sour ? ", sour cream" : ""
								burrito += lettuce ? ", lettuce" : ""
								burrito += cheese ? ", cheese" : ""
								burrito += ", and #{salsa} salsa"
								burritos.push burrito
							end
						end
					end
				end
			end
		end
	end
end

puts burritos
puts burritos.count

