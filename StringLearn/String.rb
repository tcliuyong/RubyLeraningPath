class String
  s1 = "test"
  #计算字符串的长度
  print(s1.size)
  print("\n")
  print (s1.length)
  print("\n")
  print(s1.count('t'))#计算字符出现个数
  print("\n")
  #每次处理一行
  s2 = "test\ntest1\ntest2"
  num = 0
  s2.each_line do |line|
    num += 1
    print "Line #{num}:#{line}"
  end
  print("\n")
  s3 = "I,am,a,student"
  words = s3.split(",",4)#返回其中的几项
  print(words)
  print("\n")
  print(s3.ljust(30))
  print(s3.rjust(30))
  print(s3.rjust(30, "+")) #后一个参数用来填充字符串
  print(s3.center(30))
  print("\n")
  #子串的操作 以下的字符串操作 不仅可以用来取值 还能用来赋值
  s4 = "tests"
  print(s4[1..4] + "\n")
  print(s4[1,4] + "\n")
  #判断子串
  print(s4["est"] + "\n")
  #字符串替换 gsub sub
  #字符串的查找
  str = "Albert Einstein"
  pos1 = str.index(?E)
  pos2 = str.index(/in/)
  print(pos1)
  print("\n")
  print(pos2)
  #字符串反转
  print(str.reverse)
  print("\n")
  #删除重复字符
  print(str.squeeze)
  print("\n")
  #删除指定字符
  print(str.delete('e'))
  print("\n")
end