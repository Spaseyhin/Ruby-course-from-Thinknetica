def res
	answer = gets.to_i

	if answer < @x
		puts 'more'
	elsif answer > @x
		puts 'less'
	else
		puts 'You guessed'
	end

	if answer == @x
		exit
	end
end

@x = rand(16)

puts 'guess a number from 0 to 16 in 3 attempts'


res
res 
res