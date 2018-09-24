require 'rest-client'
require 'json'
# require 'pry'


puts "taking a quick nap. Be right back"

sleep(5)

puts "okay I'm awake now"

puts "Making an HTTP GET request with RestClient"

ron_swanson_quote_response = RestClient.get('http://ron-swanson-quotes.herokuapp.com/v2/quotes')

puts "Request is complete"

parsed_quote = JSON.parse(ron_swanson_quote_response)

puts "Parsing the JSON from the response"

print parsed_quote
