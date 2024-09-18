line_num = 0
input = ''

loop do 
  print "#{line_num += 1}: => "
  line = gets
  break if line.strip == 'exit'
  if line.strip == ''
    puts 'Evaluating...'
    puts eval(input)
    input = ''
  else
    input += line
  end
end

# eval('def m(var)
#       var * 100
#       end
#       puts m(2)')

# obj = Object.new
# obj.instance_eval('def m(a); puts a; end) 
#  => :m 
# obj.m('hi')
#  => hi

# obj.instance_eval(' def ah(something)
# 3.2.2 :013'>   something**9
# 3.2.2 :014 >   end')
#  => :ah 
# obj.ah(5)
#  => 1953125 

