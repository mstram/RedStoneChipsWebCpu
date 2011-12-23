#http://leejava.wordpress.com/2009/08/24/udp-client-and-server-in-ruby/

require 'active_support'

j = ActiveSupport::JSON
#e = j.encode("abc")
#d = j.decode(e)

#print "\n e = '#{e}'  d='#{d}'"


print "\nUDP server waiting ..."
require 'socket'
	s = UDPSocket.new
	s.bind(nil, 25600)

	#5.times do
	while 1
	  text, sender = s.recvfrom(255)
	  puts "\ntext.size = #{text.size}  sender.size = #{sender.size}"
	  puts "\nsender : #{sender}"
	  puts "\n text = #{text}"
	 # puts "\ntext.class : #{text.class}"
	  # d = j.decode(text)
	 #  d = j.decode(text.content)
	 #  puts "\n msg = #{d['content']}"
	end

