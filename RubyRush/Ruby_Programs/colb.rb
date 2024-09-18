def rez(answer, arr)
	new_arr = []
	coll = -1

	arr.each do |x|
		coll += 1
		if coll == answer
			break
		end

		new_arr << x
	end

	print new_arr
end

arr = %w/1 2 3 4 5 6 7 8 9 10/

puts "array size #{arr}"
puts 'how much?'


enter_user = gets.to_i
puts rez(enter_user, arr)

puts 'how much?'
enter_user = gets.to_i
puts rez(enter_user, arr)