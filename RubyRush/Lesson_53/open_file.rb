file_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_53/data/1.txt"


if File.exist?(file_path)

	file = File.open(file_path, 'r')
	puts file.readlines.sample
	file.close

else
	puts 'Файл не найден'
end

