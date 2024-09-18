system 'clear'
file_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_54/data/1.txt"

arr = []
file = File.open(file_path,'r').readlines

@arr = file .map {|element| element.chomp}
new_arr = []

@arr.each do |x|
	if x == ''
		x = 'blank'
		new_arr << x
	else 
		new_arr << x
	end
end

puts "Масив: #{new_arr.join(', ')}"

def count_string
	@nil_string = 0
	string = 0 
	@arr.each do |x|
		if x == ''
			@nil_string += 1
		else
			string += 1
		end
	end
end

def counting_lines_from_the_end
	last_array = []
	string = 0 
	@arr.reverse_each do |x|
		if x != ''
			string += 1
			last_array << "это #{string} с конца: #{x}"
		end
		if string == 5 
			puts last_array.reverse
			break
		end
	end

end

count_string
counting_lines_from_the_end

puts "пустые строки не учитываются\n\n"
puts "пустых строк #{@nil_string}"
puts "строк #{@arr.size}"

