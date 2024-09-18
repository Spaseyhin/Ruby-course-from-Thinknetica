require_relative "./methods.rb"

puts "Guess the word:"

leter_secret = gets.chomp.downcase.split("") # масив

system "clear"

bad_letters = [] 
good_letters = []

while bad_letters.size < 7 do 
	puts enter_man(bad_letters)
	puts visual(leter_secret, good_letters)
	logical(leter_secret, good_letters, bad_letters)
	system "clear"

	if bad_letters.size == 7
		enter_man(bad_letters)
		puts "\nyou lose"
		exit
	end
	
end