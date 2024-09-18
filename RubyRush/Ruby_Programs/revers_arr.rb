arr = %w/1 2 3 4 5/
print "array #{arr}"
new_arr = []
arr.each do |x|
	new_arr.unshift(x)
end
puts
print "new array #{new_arr}"