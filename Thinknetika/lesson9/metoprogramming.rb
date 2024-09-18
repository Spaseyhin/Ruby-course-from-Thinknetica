# class Foo
#   def initialize
#     @bar = 'instance var'
#   end

#   private
#   def privat
#     puts 'i\'m private method'
#   end
# end

# foo = Foo.new
# foo.@bar
# => error
# foo.privat
# => method 'privat' is privete method

# foo.instance_eval('@bar')
# => "instance var" 
# foo.instance_eval('privat')
# => i'm private method

# > module X
# > end
#  => nil 

# > class Y
# >   @@y = 12
# >   include X
# > end
#  => Y 

# Y.class_eval('@@y')
# => 12 

# > Y.class_eval do
# >   def m 
# >     puts 'hi'
# >   end
# > end
#  => :m 

# > y = Y.new
# => #<Y:0x0000000108f11ab8> 
# y.m
# hi
#  => nil 

# > X.module_eval do
# >   def module_method
# >     puts 'module method'
# >   end
# > end
# => :module_method 
# > y.module_method
# module method
#   => nil

# > class Y
# >   class_eval do
# >     def another_method
# >       puts '123'
# >     end
# >   end
# > end
#  => :another_method 
# > y.another_method
# 123
#  => nil 

# > Y.class_variables
#  => [:@@y] 
# > Y.class_variable_get :@@y
#  => 12 
# > Y.class_variable_set :@@y, 45
#  => 45 
# > Y.class_variable_get :@@y
#  => 45 

# > Y.class_variable_set :@@x, 55
#  => 55 
# > Y.class_variable_get :@@x
#  => 55 

# y = Y.new
#  => #<Y:0x000000010bb54d50> 
# y.instance_variable_get :@x
# => nil 
# y.instance_variable_set :@x, 23
#  => 23 
#  > y.instance_variable_get :@x
#  => 23 
# y.instance_variables
#  => [:@x] 

# > y2 = Y.new
#  => #<Y:0x000000010c37b678> 
# > y2.instance_variables
#  => [] 

# > class Y
# >   define_method(:my_method) do 
# >     puts 'my method'
# >   end
# > end

# y = Y.new
# => #<Y:0x000000010b73eae0> 
# y.my_method
# my method

# Y.const_get :ME
# (irb):79:in `const_get': uninitialized constant Y::ME (NameError)

#  Y.const_set :ME, 21
#  => 21 
#   Y.const_get :ME
#  => 21 

module MyAttreAccessor
  def my_attr_accessor(*names )
    names.each do |name|
      var_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}=".to_sym) {|value| instance_variable_set(var_name, value)}
    end
  end
end

class Test
  extend MyAttreAccessor
  my_attr_accessor :my_attr, :a, :v
end 


class X
 def hi
  puts 'hi'
 end

 def method_missing(name, *args)
  puts "Methot #{name} with arguments #{args}"
 end
end

# > x = X.new
#  => #<X:0x000000010628b8b8> 
# > x.hi
# hi
#  => nil 
# > x.hello
# Methot hello with arguments []
#  => nil 
# > x.hello(1)
# Methot hello with arguments [1]
#  => nil 
# > x.hello(1,2)
# Methot hello with arguments [1, 2]
#  => nil 
# > 


class U 
  def method_missing(name, *args)
    self.class.send(:define_method, name.to_sym, lambda { |*args| puts args.inspect })
  end
end
