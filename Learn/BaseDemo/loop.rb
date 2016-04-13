3.times do
  print "JH"
end
puts
0.upto(9) do |x|
  print x, " "
end
puts
0.step(12, 3){|x| print x," "}
puts

 [1,2,3,4].each {|val| print val, ""}
a = [4,5,6,7]
puts
for var in a
  print var
end
puts
for i in 1...8
  print i
end
puts
i = 1
loop do
  i +=1
  next if i < 3
  print i
  break if i > 4
end
