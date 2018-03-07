# 1.
puts "Problem 1:"
def get_name
	puts "Please enter your name."
	name = gets.chomp
	greeting(name)
end

def greeting(name)
	puts "Hello #{name}. Nice to meet you."
end
get_name
puts


# 2.
puts "Problem 2:"
def sum_numbers(x, y, z)
	puts x + y + z
end
sum_numbers(5, 10, 20)
puts


# 3.
puts "Problem 3:"
to_do = ["wash the car", "buy groceries", "finish homework", "pay the bills"]
to_do.each do |item|
	puts "Don't forget to #{item}."
end
puts


# 4.
puts "Problem 4:"
def avg(a, b, c, d)
	total = a + b + c + d
	avg = total / 4
	return c + d
end
avg(5, 8, 6, 10)
# return value is 16
puts


# 5.
puts "Problem 5:"
names = ['David', 'Trevor', 'Sarah', 'Mason']
names[2]
# returns Sarah
puts


# 6.
puts "Problem 6:"
wild_cats= ['cheetah', 'lion', 'leopard', 'tiger']
wild_cats.push("bobcats")
puts wild_cats
puts


# 7.
puts "Problem 7:"
user1 = {:firstname=> "Johnny", :lastname => "Begood", :gender => "male", :dob => "08/21/1981", :birthplace => "Seattle, WA"}
puts user1[:birthplace]
puts


# 8.
puts "Problem 8:"
user1[:current_city] = "Atlanta, GA"
puts user1[:current_city]
puts


# 9.
puts "Problem 9:"
alpha_soup= ["c", "k", "y", "u"]
puts alpha_soup[2]
puts


# 10.
puts "Problem 10:"
alphabits= {"d" =>4, "k" => 14, "u" => 52}
puts alphabits["k"]
puts


# 11.
puts "Problem 11:"
number = 0
until number == 3
	puts number = rand(1..10)
end
puts


# 12.
puts "Problem 12:"
number = 0
array = []
until number == 3
	number = rand(1..10)
	array.push(number)
end

total = 0
array.each do |number|
	if number < 6
		total += 1
		puts number
	end
end
puts "There are #{total} numbers under 6."
puts


# 13.
puts "Problem 13:"
class Vehicle
	attr_reader :color, :type

	def initialize(color, type)
		@color = color
		@type = type # car, truck, motorcyle, scooter, van
	end

	def honk
		puts "Beep!"
	end

end

new_vehicle = Vehicle.new("red", "truck")
new_vehicle.honk















