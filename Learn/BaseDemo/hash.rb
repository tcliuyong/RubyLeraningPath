
class Hash
  h1 = Hash.[]("a",2,"b",43)
  h2 = Hash.[]("a"=>2,"b"=>43)
  h3 = Hash.new #创建一个空的映射
  #添加一个键值对
  h1["c"] = 100
  h1.store("c", 100)
  #删除随意键值对
  h1.shift
  #hash的遍历
  h1.each do |key,val|
    print(key)
    print(val)
  end
  print("\n")
  #键值对转换为数组
  print(h1.to_a)
  print("\n")
  #键值对的查找
  print(h1.detect{|k,v| v == 100})
  #键值对的排序
  h1.sort
  #实现包含重复的映射
end