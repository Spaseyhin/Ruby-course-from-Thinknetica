class String
  def self.random(length)
    rand(36**length).to_s(36)
  end

  def my_method
    self.capitalize
  end
end

# class My_class ; end

#3.2.2 :1 > foo = My_class.new
#3.2.2 :2 > foo.m => error
#
#3.2.2 :3 > class << foo
#3.2.2 :4 > def m 
#3.2.2 :5 >   puts "This string for only one object"
#3.2.2 :6 > end
#3.2.2 :027 > foo.m
# This string for only one object
# => nil 
