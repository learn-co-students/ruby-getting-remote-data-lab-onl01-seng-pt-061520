# Write your code here
require "net/http"
require "open-uri"
require "json"
require "pry"

class GetRequester

  def initialize(url)
    @url = url
  end

  attr_accessor :url

  def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
    # binding.pry
  end

  def parse_json
    data = JSON.parse(self.get_response_body)
    # hash = {}
    # data.collect do |i|
    #   #return a Ruby Array or Hash
    #   hash = i
    # end
  end

end
