puts 'enter string'
str = gets.chomp
puts 'enter method'
method = gets.chomp
puts str.send(method)