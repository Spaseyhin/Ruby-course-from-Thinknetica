class Animal

	attr_accessor :age, :name

	def initialize(name, age) 
		#Метод который вызывается при создании 
		#нового животного
		@name = name
		@age = age
	end


	# def birthay
	# 	@age = @age + 1
	# end


end

animal1 = Animal.new("Котопес", 3) 
animal2 = Animal.new("Песокот", 5)

puts animal1.age

animal2.name = "Piter" 
puts animal2.name