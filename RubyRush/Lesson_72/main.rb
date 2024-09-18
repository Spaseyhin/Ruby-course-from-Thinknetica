puts 'Введите строку с хештегами'

user_imput = gets.chomp

hashtags = user_imput.scan(/#\w+/)

if hashtags.any?	
	puts 'мы нашли вот такие хештеги'
	hashtags.each {|hashtags| puts hashtags}
else
	puts 'Хештегов не обнаружено'
end