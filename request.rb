require "http"

response = HTTP.get("https://narutoramenex.com/brooklyn/")

pp response.parse(:json)
