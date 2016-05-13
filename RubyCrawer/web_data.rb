require 'uri'
require 'timeout'
require 'net/http'

class GetDataFromWeb
  def getData(url, timeout,curpage)
    begin
      resp = data = nil
      timeout(timeout){
        h = Net::HTTP.new(url,80)
        resp, data = h.get(curpage)
      }
    rescue => e
        puts e.to_s.force_encoding('gbk').encode('utf-8')
        exit
    end
    #puts resp.body.encoding
    #resp.body.encode! 'ASCII-8BIT'
    resp.body
  end
end
