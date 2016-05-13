load 'web_data.rb'
$reg  = /(.*\n*)<br \/>/
getDataFromWeb = GetDataFromWeb.new()
data = getDataFromWeb.getData("www.dygang.com",10)
m = $reg.match(data)
regData =  data.scan($reg)
 aFile = File.new("D:\\2.txt","w")
for val in regData

  str = val.join('')
  str =  str.gsub(/\s+/,'')
  #aFile.puts str
  len = str.size
  aFile.puts str

end
 aFile.close