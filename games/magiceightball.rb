#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

def eightball
	answer = ask_response
	play(answer)
end

def ask_response
	puts "Do you want to shake the eight ball? Yes or No?"
	response = gets.chomp
end

def play(response)
	if response.downcase == "yes"
		shake
	else
		puts "Okay, no fortune for you."
	end
end
	
def shake
	puts "Okay, let's shake the eight ball. Your response is:"
	
end

fortune = ["Yes","No","Maybe","In your dreams!","Absolutely not!", "If you're lucky!"]

eightball