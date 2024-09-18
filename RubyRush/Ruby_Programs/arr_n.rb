print 'enter number: '
number_of_array = gets.to_i
arr = []
x = 0
number_of_array.times do  
	x += 1
	arr << x
end

sum = 0
y = 0
arr.each do |i|

	sum += i
	
	if y == arr.size - 1
		print i
		break
	end

	y +=1
	print "#{i} + "
end
puts  " = #{sum}"