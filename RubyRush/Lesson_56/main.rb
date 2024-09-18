question_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_56/data/question.txt"
answer_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_56/data/answer.txt"

system ('clear')

question = File.open(question_path,'r').readlines.map {|element| element.chomp} #.join(', ')
answer = File.open(answer_path,'r').readlines.map {|element| element.chomp} #.join(', ')


count_in_array = 0
right_answer = 0

question.each do |x|
	puts x
	ans = gets.chomp
	if ans == answer[count_in_array]
		puts "Верный ответ!"
		right_answer += 1
	else
		puts "Неправильный ответ. Верный #{answer[count_in_array]}"
		
	end
	count_in_array += 1
end 
file&.close
puts "Правильных ответов #{right_answer}"

