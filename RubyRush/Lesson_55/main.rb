forehead_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_55/data/forehead.txt"
eyes_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_55/data/eyes.txt"
nose_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_55/data/nose.txt"
mouth_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_55/data/mouth.txt"

system ('clear')

forehead = File.open(forehead_path,'r').readlines.map {|element| element.chomp}
eyes = File.open(eyes_path,'r').readlines.map {|element| element.chomp}
nose = File.open(nose_path,'r').readlines.map {|element| element.chomp}
mouth = File.open(mouth_path,'r').readlines.map {|element| element.chomp}
file&.close
puts forehead.sample
puts eyes.sample
puts nose.sample
puts mouth.sample