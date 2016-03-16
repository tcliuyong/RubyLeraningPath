class Collections
  require 'set'
  s1 = Set[2,3,4]
  s2 = Set[1,2,3]
  #求集合的交集
  a = s1.intersection(s2)
  #检测元素是否在集合内
  Set[1,2,3].include?(2)
  s1.empty?
  #Ruby没有栈和队列的概念
end