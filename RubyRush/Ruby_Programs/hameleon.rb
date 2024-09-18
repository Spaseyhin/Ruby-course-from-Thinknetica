class Hameleon
	def initialize

		@color = 'white'
		puts 'the chameleon is now white'
		puts "enter the corresponding number to make the chameleon change color.\n Green: 1, red: 2, blue: 3, purple 4, white 5."
		puts 'Type end to exit'	
	end

	def color_edit(col)
		if col == '1'
			@color = 'green'
			puts 'the chameleon turned green'
		elsif col == '2'
			@color = 'red'
			puts 'the chameleon turned red'
		elsif col == '3'
			@color = 'blue'
			puts 'the chameleon turned blue'
		elsif col == '4'
			@color = 'purple'
			puts 'the chameleon turned purple'
		elsif col == '5'
			@color = 'white'
			puts 'the chameleon turned white'
		end
	end
end


hameleon = Hameleon.new
user_imput = 0 

while user_imput != 'end' 

	user_imput = gets.chomp.downcase
	hameleon.color_edit(user_imput.split('')[0])

end


