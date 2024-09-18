system 'clear'
puts 'Which character\'s enemy do you want to know?'
answer = gets.chomp.capitalize

case answer
when 'Batman'
	puts 'Joker'
when 'Sherlock Holmes'
	puts 'Professor Moriarty'
when 'Frodo Baggins'
	puts 'Sauron'
else
	puts 'Failed to find enemy'
end

