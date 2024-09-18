a = []
b = [3, 6, 7, 2, 8]
c = [1, 2, 3, 4, 5, 7, 10]

a << b
a << c 

n = 0

a.each do |x|
	x.each do |y|
		if y > n
			n = y.to_i
		end
	end
end

puts n
