class Car
	attr_reader :current_rpm
	attr_accessor :number

	def initialize(number)
		@current_rpm = 0
		@number = number
		validate!
	end

	def start_engine 
		start_engine! if engine_stopped?
	end
	def engine_stopped? 
		current_rpm.zero?
	end

	def validate!
		raise "Number can't be nil" if number.nil?
		raise "Number should be at least 6 symbols" if number.length < 6
		true
	end

	protected 
	attr_writer :current_rpm
	def initial_rpm
		700
	end

	def start_engine!
		self.current_rpm = initial_rpm
	end
end
