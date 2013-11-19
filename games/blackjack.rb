#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.

def blackjack
	game_start
end

def game_start
	puts "Would you like to begin playing blackjack? Yes or no?"
	play = gets.chomp
	if play.downcase == "yes"
		game
	elsif play.downcase == "no"
		puts "You don't want to play? I guess luck just isn't on my side today."
	else
		puts "Sorry, I didn't understand that."
		blackjack
	end
end

def game
	playing = true
	hand = []
	total = initial_move(hand)
	playing = hit_stay(hand)
	if playing == true
		hit_stay(hand)
	end
end

def initial_move(hand)
	deal(hand)
	deal(hand)
	total(hand)
end

def deal(hand)
	card = rand(1..11)
	puts "You have been dealt a #{card}."
	hand << card
end

def total(hand)
	total = 0
	hand.each do |num|
		total += num
	end
	puts "Your hand is currently equal to #{total}."
	total
end

def hit_stay(hand)
	puts "Would you like to hit or stay?"
	response = gets.chomp.downcase
	if response == "stay"
		win_lose(hand)
	elsif response == "hit"
		deal(hand)
		total(hand)
		playing = true
	else
		puts "Sorry, I didn't understand."
		hit_stay(hand)
	end
end

def win_lose(hand)
	total = total(hand)
	if total < 21
		puts "Sorry, bad luck. You lose."
		playing = false
	elsif total == 21
		puts "Congratulations! You won!"
		playing = false
	else
		puts "Bust!"
		playing = false
	end
end


blackjack

