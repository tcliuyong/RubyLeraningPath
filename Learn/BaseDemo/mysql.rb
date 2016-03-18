require 'mysql'
class Mysql
  m = Mysql.new("localhost","root","liuyong","test")
  r = m.query("select * from user")
  r.each_hash do |f|
    print "#{f['username']}"
  end
end