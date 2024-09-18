system 'clear'
text_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_65/file.txt"

file = File.new(text_path, 'a')

file.print 'hello world'