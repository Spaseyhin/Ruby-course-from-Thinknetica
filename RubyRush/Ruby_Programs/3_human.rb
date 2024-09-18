class People
	def initialize
		@all_people = []
		@people_name = []
	end

	def add_new_people(user_input_name,user_input_last_name, user_input_age)
		@people_name << user_input_name
		@people_name << user_input_last_name
		@people_name << user_input_age
		@all_people << @people_name
		@people_name = []
	end

	def put_all_people
		@all_people.each do |x|
			puts '______________________'
			
			if x[2] > 60
				puts "Имя: #{x[0]} #{x[1]}"
			else
				puts "Имя: #{x[0]}"
			end

			puts "Возраст: #{x[2]}"
		end
	end

end

people = People.new

loop do

	puts 'Enter name'
	user_input_name = gets.chomp

	if user_input_name == 'end'
		break
	end

	puts 'Enter last name'
	user_input_last_name = gets.chomp

	puts 'Сколько ему(ей) лет?'
	user_input_age = gets.to_i


	people.add_new_people(user_input_name,user_input_last_name, user_input_age)
end
	people.put_all_people
