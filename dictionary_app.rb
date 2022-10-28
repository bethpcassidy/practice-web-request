require "http"

puts "dictionary"
puts "enter to continue"
blank = gets.chomp

puts "type a word"
word = gets.chomp

response = HTTP.get "https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=KEY"

data = response.parse(:json)

puts data[1]["text"]

pronounce = HTTP.get "https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=KEY"

datap = pronounce.parse(:json)

puts datap[1]["raw"]

example = HTTP.get "https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=KEY"

datae = example.parse(:json)

puts datae["examples"][0]["text"]
