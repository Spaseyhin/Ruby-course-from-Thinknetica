3.times do |i|
  puts i
end
# 0
# 1
# 2
#  => 3 

3.times { |i| puts i } 
# 0
# 1
# 2
#  => 3 

def m(i)
  puts i
end
# => :m 

for i in 1..3 
  m(i)
end
# 1
# 2
# 3
#  => 1..3 

hash = {a: 1, b: 2, c: 3}
# 3.2.2 :021 > 
#  => {:a=>1, : b=>2, :c=>3}

hash.each do |value, keys|
  puts "#{value} = #{keys}"
end
# a = 1
# b = 2
# c = 3 

[1,2,3,4].each { |i| puts i * 10 } 
# 10
# 20
# 30
# 40
line_num = 0
File.open('./main.rb').each do |line|
  puts "#{ line_num += 1 }: #{line}"
end
# 1: 3.times do |i|
#   2:   puts i
#   3: end
#   4: # 0
#   5: # 1
#   6: # 2
# ...
# ...

a = Proc.new { |i| i*= 10; puts i}
b = proc { |i| i*= 10; puts i}
c = lambda { |i| i*= 10; puts i} #need given only one arguments
d = -> (i) {i*= 10; puts i} #need given only one arguments

# a - b - c - d.call(10)
# => 100

x = 'hello'
blok = proc { puts x }
blok.call 
# => hello

def m(blok)
  x = 'goodbye'
  puts "x from method: #{x}"
  blok.call
end

m(blok)
# "x from method: goodbye
# hello
#  => nil 

def n 
  puts 'before blok'
  yield
  puts 'after blok'
end

n {puts 'inside blok'}

# before blok
# inside blok
# after blok

def caps(str)
  str.capitalize!
  yield(str)
end

caps('something'){|x| puts x[0]}
# => S

def caps(str, &block) #if you see any argument with -> '&' you need to pass a block argument
  str.capitalize!
  block.call(str)
end

block = -> (i) {puts i}
caps 'abc', block
# => Abc

def c(str, &block)
  if block_given?
    yield(str)
  else
    puts str
  end
end

c("som"){ |x| puts x.upcase }


