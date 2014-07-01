require 'open-uri'
require 'json'
require 'psych'
 
city = 'cochabamba,bolivia'
request = "http://api.openweathermap.org/data/2.5/weather?q=#{city}"
response = open(request).readlines.join
print Psych.dump( JSON.parse(response) )
