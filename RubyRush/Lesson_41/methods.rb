def visual(leter_secret, good_letters)
	result = ""

	leter_secret.each do |x|
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

	if good_letters.uniq.size == leter_secret.uniq.size
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
    puts "
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    elsif bad_letters.size == 1
      puts "
          _______
          |/
          |     (_)
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    elsif bad_letters.size == 2
      puts "
          _______
          |/
          |     (_)
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    elsif bad_letters.size == 3
      puts "
          _______
          |/
          |     (_)
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        "
    elsif bad_letters.size == 4
      puts "
          _______
          |/
          |     (_)
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        "
    elsif bad_letters.size == 5
      puts "
          _______
          |/
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        "

    elsif bad_letters.size == 6
      puts "
          _______
          |/
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |     / 
          |    /   
          |
        __|________
        |         |
        "
    elsif bad_letters.size == 7
      puts "
          _______
          |/     |
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "

  end
end