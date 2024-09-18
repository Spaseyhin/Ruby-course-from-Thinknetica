i = 0
i += 1 # i = i + 1

array = [1,2,3]
a, b, c, = array # a = 1, b = 2, c = 3
x, y = 1 ,2

x, y = y, x # x = 2, y = 1

z ||= 1 # z = 1
z ||= 2 # z = 1



class Train
  attr_accessor :type, :number, :number_of_wagons, :model

 # def initialize(type = "Unknown", number, @number_of_vagons = 0, model = "Unknown" )
  def initialize(number, *args)
    @number = number[0] || "Unknown"
    @type = type[0] || "Unknown"
    @model = model[0] || "Unknown"
    @nnumber_of_wagons = number_of_wagons[0] || "Unknown"
  end

end
class Foo
  def bar(key)
    h = {a: 1, b: 2, c: 3}
    value = h[key]
    value ||=0
    #...используем value
    #/ irb
    #/ load './main.rb'
    #/ foo = Foo.new
    #/ foo.bar(:a) => 1
    #/ foo.bar(:b) => 2
    #/ foo.bar(:c) => 3
    #/ foo.bar(:d) => 0

  end

  def long_method
    sleep(3)
  end

  def memoization
    @m ||= long_method
  end

  #foo.long_method => 3 (выполняется долдго)
  #foo.memoization => 3 (выполняется долдго - записывается значение в переменную)
  #foo.memoization => 3 (выполняется быстро - переменная уже знает значение)

end

class User
  attr_accessor :name

  def has_name?
    !!name
  end
  # load './main.rb'
  # => true 
  # user = User.new
  # => #<User:0x00000001037ae668> 
  # user.has_name?
  # => false 
  # user.name = 'Dmitry'
  # => "Dmitry" 
  # user.has_name?
  # => true  

  def has_not_name?
    !has_name?
  end

  def name=(value)
    @name = value.capitalize
  end
 
end

fruts = %w(apple orange grape) #['apple', 'ornge', 'grape']

fruts.map{ |x| x.upcase} # => ["APPLE", "ORANGE", "GRAPE"] 
fruts.map(&:upcase)      # => ["APPLE", "ORANGE", "GRAPE"] (возвращает новый масив)
fruts.each(&:upcase)     #  => ["apple", "orange", "grape"] (возвращает старый масив)

class Color
  COLORS = { red: "#f00", green: "#0f0" }
  
  def code(name)
    @code = COLORS[name] || "#000"

    # @code = case name
    # when :red
    #   "#f00"
    # when :green
    #   "#0f0"
    # else
    #   "#000"
    # end
  end

  alias_method :by_name, :code #создание псевдонима (метод можно будет вызвать через code и через by_name)
end

def m(arm, my_hash)
  puts my_hash
end
m(3, a: 1, b: 2) # => {:a=>1, :b=>2}



