# Write your code here
require 'json'
require 'open-uri'
require 'net/http'

class GetRequester

attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(self.get_response_body)
        # use get_response_body method to get data and parse from json
    end
end