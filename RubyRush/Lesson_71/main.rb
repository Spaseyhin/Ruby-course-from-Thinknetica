puts 'Введите свой емаил:'
user_imput = gets.chomp

if user_imput.match?(/^[\w\d]+@[\w\d]+\.[\w]+/)  
	puts 'Правильный емаил'
else
	puts 'Неправильный емаил'
end

