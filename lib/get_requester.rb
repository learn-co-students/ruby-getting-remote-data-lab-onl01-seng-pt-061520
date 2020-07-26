require 'net/http'
require 'open-uri'

class GetRequester
  attr_accessor :url 
  def initialize(url)
    @url = url 
  end 
  
  def get_response_body 
    a = Net::HTTP.get_response(URI.parse(url))
    a.body 
  end 
  
  def parse_json 
    JSON.parse(get_response_body)
  end 
end 
