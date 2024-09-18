class People

	def add_people
		puts 'Введите имя'
		people_name = gets.chomp
		puts people_name
		return people_name

		
	end
end

class Film

	def add_film 
		puts 'Введите фильм'
		film_name = gets.chomp
		puts film_name
		return film_name
		
	end

end


people = People.new
film = Film.new

people.add_people
film.add_film
