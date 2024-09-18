require 'yaml'
system "clear"

puts "Введите ваше имя"
name = gets.stripй



path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Ilya_crycovsky/Lesson_yaml/questions/question.yml"
all_questions = YAML.safe_load_file(path, symbolize_names: true)

# puts all_questions.inspect


a_code = 'A'.ord

all_questions.shuffle.each do |question_data|
	puts question_data[:question]

	currect_answer = question_data[:answers].first

	answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
		
		answer_char = (a_code + i).chr
		result[answer_char] = answer

		puts "#{answer_char}. #{answer}"

		result
	end

	user_answer_char = nil
	currect_answers = 0
	incorect_answer = 0

	loop do
		puts 'Введите ваш ответ'
		user_answer_char = gets.upcase.strip[0]

		if user_answer_char != nil && user_answer_char.between?('A','D')
			break
		else
			puts 'Ответ только A - D'
		end
	end
system ("clear")
	if answers[user_answer_char] == currect_answer
		puts "Ваш ответ #{user_answer_char}, Верно"
		currect_answers += 1
	else
		puts "Ваш ответ #{user_answer_char}, неверно, правильно #{currect_answer}"
		incorect_answer += 1
	end

end