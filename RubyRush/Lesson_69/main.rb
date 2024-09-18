system'clear'
puts 'Это программа для определения палиндрома, введите слово:'
user_input = gets.chomp

change_input = user_input.gsub(/[\s[:punct:]]+/, '')
change_input_reverse = change_input.reverse

system'clear'

if change_input.downcase == change_input_reverse.downcase
	puts "Слово #{user_input} - палиндром"
else
	puts "Слово #{user_input} - не палиндром"
end