question = %w/1 2 3 4 5/
result = ["1 result", "2 result", "3 result"]
answer = 0
question.each do |x|
	puts x
	user_answer = gets.chomp
	while user_answer != 'yes' && user_answer != "no"
		puts "puts yes or no"
		user_answer = gets.chomp.downcase 
	end
	if user_answer == 'yes'
		answer += 1
	end
end

puts "answer = #{answer}"

if answer >= 4
	puts "bad result"
elsif answer >= 2 && answer < 4
	puts "normal result"
else
	puts "the best result"
end
