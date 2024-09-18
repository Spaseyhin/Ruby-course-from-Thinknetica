forehead_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_66/data/forehead.txt"
eyes_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_66/data/eyes.txt"
nose_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_66/data/nose.txt"
mouth_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_66/data/mouth.txt"

file_name = Time.now.strftime("%H:%m")

file_new_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_66/new_images/#{file_name}.txt"

system ('clear')

forehead = File.open(forehead_path,'r').readlines.map {|element| element.chomp}
eyes = File.open(eyes_path,'r').readlines.map {|element| element.chomp}
nose = File.open(nose_path,'r').readlines.map {|element| element.chomp}
mouth = File.open(mouth_path,'r').readlines.map {|element| element.chomp}

file = File.new(file_new_path, 'a')

file.print("#{forehead.sample} \n")
file.print("#{eyes.sample} \n")
file.print("#{nose.sample} \n")
file.print("#{mouth.sample} \n")
file.print("__________________\n\n")

file.close

BbunkhgF