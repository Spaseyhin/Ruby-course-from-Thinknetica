random_number = rand(1..10)

puts random_number  

puts  "Я загадал число от 1 до 10"
iterations = 0
loop do

	iterations = iterations + 1
		if iterations > 9000
			puts "аварийный выход!"
			break
		end

	guess = gets.to_i
	
	if guess == random_number
		puts "Молодец!"
		break 
	elsif
	guess < random_number
		puts "Нет, моё число больше"
	else
		puts "Нет, моё число меньше"
	end 
end