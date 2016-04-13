op_file = File.open("D:\\1.txt", "w")
begin
while data = socket.read(512)
  op_file.write(data)
end
rescue SystemCallError
$stderr.print "IO failed"
  op_file.close
  File.delete(op_file_name)
  raise
end
