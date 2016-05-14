load 'web_data.rb'
$reg  = /<a href="(.*)" target="_blank" class="classlinkclass">.*<\/a>/
$reg_c = /(.*)(<br \/>|<\/p>)/
$pre = 'index_'
$tail = '.htm'
$page = 406
$d = Array.new
$p = 0
$error = 0
$root = 'www.dygang.com'
(2...$page).each {|val|  $d.push('/ys/'+$pre + val.to_s+'.htm')}
$d.unshift('/ys/index'+$tail)
getDataFromWeb = GetDataFromWeb.new()
aFile = File.new("D:\\2.txt","w")
for curPage in $d
  data = getDataFromWeb.getData($root,10, curPage)
  if data == nil
    next
  end
  $p += 1
  puts "爬取第#{$p}页数据"
  regData =  data.scan($reg)
  for val in regData
    #抽取数据
    str = val.join('')
    #http://www.dygang.com/ys/20160513/34692.htm
    #str = str.gsub(/http:\/\//,'')
    str_tail =  '/ys/'+str.split('/')[-2] + '/'+str.split('/')[-1]
    curData = getDataFromWeb.getData($root,10, str_tail)
    begin
      curData = curData.force_encoding('gbk').encode('utf-8')
      if curData == nil
        next
      end
    rescue => Exception
      $error += 1
      puts  "第#{$p}页发生异常,信息:#{Exception},是第#{$error}个异常"
      next
    end

    reg_cData =  curData.scan($reg_c)
    for c in reg_cData
      str_c = c.join('').chomp.strip
      str_t = getDataFromWeb.extractFromStr(str_c)
      # puts str_c
      # puts str_t
      if str_t != 'error'
        aFile.puts str_t
      end

    end
    aFile.puts
    aFile.puts '******************************************************'
    aFile.puts
  end
  a = rand(25)
  puts "随机歇息#{a}秒钟"
  sleep(a)
  puts "随机歇息#{a}秒钟完成"
end
# for val in regData
#   a = '◎'
#   str = val.join('')
#   str = str.force_encoding('gbk').encode('utf-8')
#   str =  str.gsub(/\s+/,'')
#   str = str.gsub(/◎/,'')
#   puts str
# end
 aFile.close