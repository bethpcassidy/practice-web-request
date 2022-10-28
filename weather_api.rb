require "http"

system clear
puts "bethweather"
puts "city?"

city = gets.chomp
city = city.downcase

response = "https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid={API key}"

temp = weather_data["main"]["temp"]
desc = weather_data["weather"][0]["description"]
