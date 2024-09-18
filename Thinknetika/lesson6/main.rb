# begin
# 	puts 'Before execption'
# 	Math.sqrt(-1)
# rescue StandardError => e
# 	puts "Error!!!"
# 	raise
# rescue NoMemmoryError => e
# 	puts "No memmory!!!"
# end

# puts 'After execption'
#__________________________________________

# def method_whith_error
# 	#....
# 	raise ArgumentError, "Oh no!"
# end

# begin
# 	method_whith_error
# rescue RuntimeError => e
# 	puts e.inspect
	
# end

# puts "After exeption"
#__________________________________________

# def sqrt(value)
# 	sqrt = Math.sqrt(value)
# 	puts sqrt
# rescue StandardError
# 	puts "Неверное значение"
# end

# sqrt(-1)
#__________________________________________

def connect_to_wiki
#....
	raise "Connection error"
end

attempt = 0
begin 
	connect_to_wiki
rescue RuntimeError
	attempt += 1
	retry if attempt < 3
	#puts 'Check your internet conection!'
ensure
	puts "There was #{attempt} attempts"
end































