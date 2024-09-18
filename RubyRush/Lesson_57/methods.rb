def import_files
	vis_0_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/images/0.txt"
	vis_1_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/images/1.txt"
	vis_2_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/images/2.txt"
	vis_3_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/images/3.txt"
	vis_4_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/images/4.txt"
	vis_5_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/images/5.txt"
	vis_6_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/images/6.txt"
	vis_7_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/images/7.txt"

	vis_0 = File.open(vis_0_path,'r').readlines
  vis_1 = File.open(vis_1_path,'r').readlines
  vis_2 = File.open(vis_2_path,'r').readlines
  vis_3 = File.open(vis_3_path,'r').readlines
  vis_4 = File.open(vis_4_path,'r').readlines
  vis_5 = File.open(vis_5_path,'r').readlines
  vis_6 = File.open(vis_6_path,'r').readlines
  vis_7 = File.open(vis_7_path,'r').readlines
  return [vis_0, vis_1, vis_2, vis_3, vis_4, vis_5, vis_6, vis_7]

end

def random_word
	word = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/Visilisa_les57/data/words.txt"

	word = File.new(word,'r').readlines.map {|element| element.chomp}.sample

	return word
end


def visual(leter_secret, good_letters)
	result = ""

	leter_secret.each_char	 do |x|
		if good_letters.include?(x)
			result += x + " "
		else
			result += '_ '
		end
	end

	return result
end

def logical(leter_secret, good_letters, bad_letters)

	print "Attempts (#{7 - bad_letters.size}): (#{bad_letters.join", "}) "

	if good_letters.uniq.size == leter_secret.chars.uniq.size

		puts "\nyou won"
		exit
	end

	answered = gets.chomp.downcase

	if good_letters.include?(answered) || bad_letters.include?(answered)
		puts 'You have already entered this letter'

	elsif (leter_secret.include?(answered))


		good_letters << answered
	else
		system "clear"
		bad_letters << answered
	end

end

def enter_man(bad_letters)
  if bad_letters.size == 0
    puts import_files[0]

  elsif bad_letters.size == 1
  	puts import_files[1]

  elsif bad_letters.size == 2
  	puts import_files[2]

  elsif bad_letters.size == 3
  	puts import_files[3]

  elsif bad_letters.size == 4
  	puts import_files[4]

  elsif bad_letters.size == 5
  	puts import_files[5]

  elsif bad_letters.size == 6
  	puts import_files[6]

  elsif bad_letters.size == 7
		puts import_files[7] 

  end
end
