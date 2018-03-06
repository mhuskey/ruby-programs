def enter_weight
	puts "Enter how much weight you would like to use in 5 lbs. increments. The bar weighs 45 lbs. by itself and it must be evenly balanced."
	full_weight = gets.chomp.to_i
	puts full_weight

	if full_weight % 5 != 0
		enter_weight
	elsif (full_weight - 45) < 5
		puts "That's less weight than the bar by itself. Add more weight."
		enter_weight
	elsif ((full_weight - 45) / 2) % 5 != 0
		puts "The bar will not be evenly balanced. Add at least 5 more lbs."
		enter_weight
	end

	get_weight(full_weight)
end

def get_weight(full_weight)
	weight = (full_weight - 45)

	results = {}
	plates = [5, 10, 15, 25, 35, 45]

	plates.sort.reverse.each do |plate|
		if weight >= plate
			quantity = (weight / plate)
			if quantity > 1 && quantity % 2 == 0
				weight %= plate
				results[plate] = quantity
			end
		end
	end

	puts "To lift #{full_weight} lbs., you should put the following on the bar:"
	results.sort.reverse.each do |key, value|
		puts "(#{value}) #{key} lbs. plates"
	end
end

enter_weight









