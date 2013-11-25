class SecretHandshake

	attr_reader :code

	def initialize(code)
		@code = code
	end

	def commands
		handshake = []
		handshake << "wink" if code[-1] == "1"
		handshake << "double blink" if code[-2] == "1"
		handshake << "close your eyes" if code[-3] == "1"
		handshake << "jump" if code[-4] == "1"
		handshake.reverse! if code[-5] == "1"
		handshake
	end

end