system 'clear'
file_name = Time.now.strftime("%d.%m.%Y")
text_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_64/data/#{file_name}.txt"
file = File.new(text_path,'a')#.readlines.map {|element| element.chomp} #.join(', ')
puts'Поделитесь своим днем'

my_string = nil

my_string = gets.chomp	
lines = my_string.scan(/.{1,80}\b|\S{1,80}$/)
formatted_string = lines.join("\n")
	
file.print("\n#{formatted_string}\n\r")

puts"Ваша запись сохранена под именем: #{file_name}"
file.print'____________________________________________'
file.close

