load 'web_data.rb'
$reg  = /<a href="(.*)" target="_blank" class="classlinkclass">.*<\/a>/
$pre = 'index_'
$tail = '.htm'
$page = 406
$d = Array.new
$root = 'www.dygang.com'
(2...$page).each {|val|  $d.push('/ys/'+$pre + val.to_s+'.htm')}
$d.unshift('/ys/index'+$tail)
getDataFromWeb = GetDataFromWeb.new()
# puts $d
 # aFile = File.new("D:\\2.txt","w")
for curPage in $d
  data = getDataFromWeb.getData($root,10, curPage)
  regData =  data.scan($reg)
  for val in regData
    #抽取数据
    str = val.join('')
    #http://www.dygang.com/ys/20160513/34692.htm

    #str = str.gsub(/http:\/\//,'')
    str_tail =  '/ys/'+str.split('/')[-2] + '/'+str.split('/')[-1]
    curData = getDataFromWeb.getData($root,10, str_tail)
    curData = curData.force_encoding('gbk').encode('utf-8')
    puts curData
  end
end
# for val in regData
#   a = '◎'
#   str = val.join('')
#   str = str.force_encoding('gbk').encode('utf-8')
#   str =  str.gsub(/\s+/,'')
#   str = str.gsub(/◎/,'')
#   puts str
# end
#  aFile.close