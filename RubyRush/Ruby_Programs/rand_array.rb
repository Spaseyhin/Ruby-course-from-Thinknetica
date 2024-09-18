print 'enter number: '
nu = gets.to_i
arr = []
nu.times do 
	arr << random_num = rand(0..100)
end 
print arr

large_num = 0
arr.each do |i|

	if i > large_num 
		large_num  = i 
		
	end
end
puts "the large num = #{large_num }"