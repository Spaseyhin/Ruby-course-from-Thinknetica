class SportCar < Car

	def start_engine
		puts 'click!'
		super 

		puts "Wroom!!"
	end

	protected

	def initial_rpm
		1000
	end

end