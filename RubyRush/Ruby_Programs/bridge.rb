class Bridge
	def initialize
		puts 'bridge created'
		@opened = false 
	end


	def open 
		@opened = true

		puts 'bridge open'
	end

	def closed 
		@opened = false 

		puts 'bridge closed'
	end

	def status
		if @opened == true
			puts 'Bridge status: bridge open'
		else
			puts 'Bridge status: bridge closed'
		end
	end
end

bridge = Bridge.new


bridge.open
bridge.closed
bridge.status
bridge.open

