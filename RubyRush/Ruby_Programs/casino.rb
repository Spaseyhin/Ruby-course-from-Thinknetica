def logical
	system ("clear")
	@x.times do 
		array = [111, 222, 333, 444, 555, 666, 777, 888, 999]

		@random_num = rand(0..999)
		
		if array.find { |elem| elem == @random_num}
			@balance2 += 100
		else
			@balance2 -= 1
		end
		system ("clear")

		puts @random_num 
		puts "Баланс: #{@balance2}" 

			
		sleep (0.005)

		if @balance1 <= 0
			puts "Ты проиграл"
			exit
		end
	end
end


@balance1 = 10000
@balance2 = 10000
system ("clear")
puts 'Играем в автоматического однорукого бандита, какая ставка?'
@x = gets.to_i


loop do
		
	logical
	system ("clear")
	puts @random_num 
	if (@balance1 - @balance2) > 0
		puts "Вы проиграли #{@balance1 - @balance2}" # 900
	else
		puts "Вы выйграли #{(@balance1 - @balance2).abs} "
	end



	@balance1 = @balance2
	
	
	puts "Баланс: #{@balance1}" 

	puts 'продолжим?'
	user_answer = gets.chomp

	if user_answer != ''
		system ("clear")
		puts "Ваш баланс: #{@balance1}"
		exit
	end
end