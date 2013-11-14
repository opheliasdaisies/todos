# Create a ruby file called birthday.rb in todo3
# ask the user for their birthday
# print happy birthday if their birthday is today!
# CHALLENGE: allow the user to enter their birthday in multiple formats
# push to your github repo and post link to this thread

require "Date"

puts "What is your birthday? Enter in numbers, separated by a dash. ie. 11-14."
birthday = gets.chomp
today = Date.today.to_s

if birthday == today[5..today.length]
	puts "Happy Birthday! Hope you're not feeling too old yet."
else
	puts "Oh, it's not your birthday. No cake for you!"
end