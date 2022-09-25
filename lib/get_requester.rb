# Write your code here

require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

    attr_reader :URL

    def initialize(url)
        @URL = url
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        response = JSON.parse(self.get_response_body)
    end

end

get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')

p get_requester.URL