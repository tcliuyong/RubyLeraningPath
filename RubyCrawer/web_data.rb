require 'uri'
require 'timeout'
require 'net/http'

class GetDataFromWeb
  @@flag = ['<di','1.下','2.下','3.如','<im','','<br']
  def getData(url, timeout,curpage)
    begin
      resp = data = nil
      timeout(timeout){
        h = Net::HTTP.new(url,80)
        resp, data = h.get(curpage)
      }
    rescue => e
      puts  '超时异常'
      return 'error'
    end
    #puts resp.body.encoding
    #resp.body.encode! 'ASCII-8BIT'
    resp.body
  end
  def extractFromStr(str)
    if str.size < 3
      return 'error'
    end
    for f in @@flag
      if str[0,3] == f
        return 'error'
      end
    end
    str = str.delete('◎').delete('<p>').delete('<\/p>').delete('<br \/>')
    return str
  end
end
