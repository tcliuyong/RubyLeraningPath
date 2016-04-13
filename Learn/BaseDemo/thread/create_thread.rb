require 'net/http'
pages = %w[www.baidu.com www.google.com]
threads = []
for page_to_fetch in pages
  threads<<Thread.new(page_to_fetch) do |url|
    h = Net::HTTP.new(url, 80)
    puts "Fetching: #{utl}"
    resp = h.get("/", nil)
    puts "Got #{url}:#{resp}"
  end
end
threads.each{|thr| thr.join}

