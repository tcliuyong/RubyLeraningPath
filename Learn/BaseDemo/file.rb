
class File
  #写文件
  File.open("E:\\11.txt",'w') do |file|
    file.puts "test"
  end
  File.open("E:\\sdxl.txt","r").each_line do |line|
    print line
  end
end