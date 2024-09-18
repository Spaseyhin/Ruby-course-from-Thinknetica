class BodyBilders

	def initialize
		@biceps = [0]
		@triceps = [0]
		@press = [0]

		@one_bodybilders = []
		@bodybilders = []
		@bodybilders_name = ''
		@max = 0
	end

	def levl_up(user_imput)

		if user_imput == '1'
			puts "we pumped up our biceps"
			@biceps[0] += 1 

		elsif user_imput == '2'
			puts "we pumped up the triceps"
			@triceps[0] += 1

		elsif user_imput == '3'
			puts "we pumped up the press"
			@press[0] += 1
		end 

	end

	def put_all_atlet

		@bodybilders.each do |x|
			puts "Athlete name: #{x[3]}"
			puts "biceps: #{x[0]}"
			puts "triceps: #{x[1]}"
			puts "press: #{x[2]}"
			puts "__________________________"

		end
	end

	def next_body_bilder(user_imput)
		if user_imput == 'next'
			puts 'What\'s his name'
			@bodybilders_name = gets.chomp

			@one_bodybilders << @biceps
			@one_bodybilders << @triceps
			@one_bodybilders << @press 
			@one_bodybilders << @bodybilders_name
			puts @one_bodybilders
			
			@bodybilders << @one_bodybilders 
			
			@one_bodybilders  = []	
			@biceps = [0]
			@triceps = [0]
			@press = [0]
		end	

	end

	def spisoc
		print "List of participants:"
		@bodybilders.each do |x|
			print "#{x[3]} "
		end
		puts "\n\nCreating a new athlete \n\n" 

	end

	def status
		puts "biceps: #{@biceps}, triceps: #{@triceps}, press: #{@press}"
	end

end



user_imput = 0
body = BodyBilders.new

while user_imput != 'end'

	puts 'Enter which muscle we will pump (Biceps - 1, Triceps - 2, Press - 3)'
	puts 'Type \'next\' to upgrade the next bodybuilder'
	
	user_imput = gets.chomp
    body.next_body_bilder(user_imput)
    system "clear"
    body.spisoc

	body.levl_up(user_imput)

	puts body.status

end

body.put_all_atlet


