path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_73/data/text.txt"

text = File.open(path,'r').readlines.map {|element| element.chomp}

text.each do |elem|
	puts elem if elem.size == 3
end