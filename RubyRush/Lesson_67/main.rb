require 'date'
system'clear'
path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_67/data/weekend.txt"

file_content = File.readlines(path, chomp: true)

def datermine_weekday
	path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_67/data/weekend.txt"
	time_now = Time.now.strftime("%m.%d")

	file_content = File.readlines(path, chomp: true)
	day_of_week = Date.today.strftime("%A")
	
	is_weekend = day_of_week  == 'Sunday' || day_of_week  == 'Saturday'
	is_holiday = file_content.any? { |line| line == time_now }

	if is_weekend || is_holiday
		puts 'Сегодня выходной'
	else
		puts 'Сегодня будний день'
	end
datermine_weekday
