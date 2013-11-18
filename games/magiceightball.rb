#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

def eightball(options)
	answer = ask_response
	play(answer, options)
end

def ask_response
	puts "Do you want to shake the eight ball? Yes or No?"
	response = gets.chomp
end

def play(response, options)
	if response.downcase == "yes"
		shake(options)
	elsif response.downcase == "no"
		puts "Okay, no fortune for you."
	else
		puts "Sorry, I didn't understand that."
		eightball(options)
	end
end
	
def shake(options)
	puts "Okay, what's your question?"
	gets.chomp
	puts "Ready? Okay! Let's shake the eight ball. Your response is:"
	puts options[rand(options.length)]
	play_again(options)
end

def play_again(options)
	puts "Would you like to play again? Yes or No?"
	play_again = gets.chomp
	play(play_again, options)
end

fortune = ["Yes","No","Maybe","In your dreams!","Absolutely not!", "If you're lucky!", "It looks lovley!"]

eightball(fortune)