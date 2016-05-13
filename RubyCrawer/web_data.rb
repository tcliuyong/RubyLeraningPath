require 'uri'
require 'timeout'
require 'net/http'

class GetDataFromWeb
  def getData(url, timeout)
    begin
      resp = data = nil
      timeout(timeout){
        h = Net::HTTP.new(url,80)
        resp, data = h.get("/ys/index.htm")
      }
    rescue => e
        puts e
        exit
    end
    puts resp.body.encoding
    #resp.body.encode! 'ASCII-8BIT'
    resp.body
  end
end
