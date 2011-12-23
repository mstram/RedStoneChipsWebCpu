require 'socket'
	s = UDPSocket.new
	s.send("hello", 0, 'localhost', 25600)