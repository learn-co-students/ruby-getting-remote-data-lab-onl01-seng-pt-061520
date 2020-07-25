# Write your code here
require 'net/http'
 require 'open-uri'
 require 'json'
 require_relative 'lib/get_requester.rb'
class GetRequester

    URL =  "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @url = URL
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        responses = JSON.parse(self.get_response_body)
        responses.collect do |response|
         response
        end
    end
end