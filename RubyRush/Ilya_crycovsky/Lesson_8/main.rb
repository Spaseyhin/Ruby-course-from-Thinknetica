class Animal
	attr_accessor :name, :age

	def initialize(name, age) 
		@name = name
		@age = age
	end

	def speak
		puts "something"
	end
end

class Dog < Animal
	def speak
		puts "Wof"
	end

	def eat(amount)
		if amount > 0.5
			puts 'Я столько не съем'
		else
			puts 'Вкусно!'
		end
	end

end

class Cat < Animal
	def speak
		puts "Meuw"
	end
	def eat(amount)
		if amount > 0.3
			puts 'Я столько не съем'
		else
			puts 'Вкусно!'
		end
	end

end

dog = Dog.new("scooby", 10)
dog.speak
puts dog.name
