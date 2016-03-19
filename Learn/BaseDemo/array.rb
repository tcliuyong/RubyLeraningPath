
class ArrayList
  a = Array.[](1,2,3,4,0)
  b = Array[1,2,3,4]
  c = [1,2,3,4]
  print(a[1])
  print("\n")
  print(a.at(1))
  print("\n")
  print(a[2..4])
  print("\n")
  print(a.at(-1))
  print("\n")
  print(a.first)
  print("\n")
  print(a.length)
  print("\n")
  print(a.sort)
  print("\n")
  #数组的筛选 detect最多找到一个元素 并且与find同样的意义 reject 排除
  print( a.detect{|e| e %2  == 0})
  print("\n")
  print(a.find_all{|e| e %2 == 0})
  print("\n")
  print(a.grep(2..4))
  print("\n")
  print(a.max)
  print("\n")
  #数组的拼接
  print(a << 13 )
  print("\n")
  print(a + b )
  #此外 ruby还有数组的去重 a。uniq 数组的颠倒 a.reverse 数组的交织 a.zip

  for i in b
    puts "#{i}"
  end
end