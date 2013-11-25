class SecretHandshake

	attr_reader :code

	def initialize(code)
		@code = code
	end

	def commands
		handshake = []
		if code[-1] == "1"
			handshake << "wink"
		end
		if code[-2] == "1"
			handshake << "double blink"
		end
		if code[-3] == "1"
			handshake << "close your eyes"
		end
		if code[-4] == "1"
			handshake << "jump"
		end
		if code[-5] == "1"
			handshake.reverse!
		end
		handshake
	end

end