module FuelTank
	def fill_tank(level)
		self.fuel_tank = level
	end

	def fuel_level 
		self.fuel_tank
	end

	protected
	attr_accessor :fuel_tank
end
 

module Debugger
	def self.included(base)
		base.extend ClassMethds
		base.send :include, InstanceMethods
	end

	module ClassMethds
		def debug(log)
			puts "!!!DEBUG: #{log} !!!"
		end
	end

	module InstanceMethods
		def debug(log)
			self.class.debug(log)
		end

		def print_class
			puts self.class
		end
	end
end

class Car
	include FuelTank
	include Debugger

	attr_reader :current_rpm

	@@instances = 0

	# class << self
	# 	def description
	# 		puts 'Это родительский класс для всех авто'
	# 	end
	# end

	# def description
	# 	puts 'Это экземпляр класса Car'
	# end

	def self.instances
		@@instances
	end

	debug 'Start interface'

	def initialize 
		@current_rpm = 0 
		@@instances += 1
		debug 'initialize'
	end


	def start_engine
		start_engine! if  engine_stopped?
	end
	def engine_stopped?
		current_rpm.zero?
	end

	debug 'End interface'

	protected  

	attr_accessor :fuel_tank
	attr_writer :current_rpm 

	def initial_rpm
		700
	end
	def start_engine!
		self.current_rpm = initial_rpm
	end

end


class MotoBike
	include FuelTank
	extend Debugger::ClassMethds
	include Debugger::InstanceMethods

	debug 'MotoBike class'
end
