class Film
	def initialize
		@film = []
	end

	def enter_films
		puts "What films do you like?"
		while @film.size < 3
			answer = gets.chomp
			@film << answer
		end
	end

	def rand_films
		x = rand(0..2)
		puts "Look #{@film[x]}"
	end

end

system 'clear'
puts 'Don\'t know what films to watch? I will help you:'
film = Film.new

film.enter_films
film.rand_films