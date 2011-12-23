#http://www.ibm.com/developerworks/java/library/j-cb08016/
require 'net/http'

# ruby Net::HTTP Not Acceptable

Net::HTTP.start('localhost', 3000) do |http|
#  response = http.get('/people/list', 'Accept' => 'text/xml')

#  response = http.get('/msgs', 'Accept' => 'text/xml')
#  response = http.get('/msgs/1', 'Accept' => 'text/xml')
response = http.get('/msgs/4', 'Accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8')
#  response = http.get('/msgs/1')


 # response = http.get('/msgs', 'Accept' => 'json')
#  response = http.get('/msgs')

  #Do something with the response.

  puts "Code: #{response.code}"
  puts "Message: #{response.message}"
  puts "Body:\n #{response.body}"
end