tweets = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!", "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.", "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]

def tweet_shortener(tweet_string)
	new_tweet = []
	if tweet_string.length > 140
		tweet_string.split(" ").each do |word|
			if word.downcase == "to" || word.downcase == "two" || word.downcase == "too"
					new_tweet << "2"
			elsif word.downcase == "for" || word.downcase == "four"
				new_tweet << "4"
			elsif word.downcase == "be"
				new_tweet << "b"
			elsif word.downcase == "you"
				new_tweet << "u"
			elsif word.downcase == "at"
				new_tweet << "@"
			elsif word.downcase == "and"
				new_tweet << "&"
			else
				new_tweet << word
			end
		end
		new_tweet = new_tweet.join(" ")
		if new_tweet.length > 140
			short = new_tweet[0, 137]
			shorter_tweet = short + "..."
			new_tweet = shorter_tweet
		else
			new_tweet
		end
		new_tweet
	else
		tweet_string
	end
end

def bulk_tweet_shortener(tweet_array)
	shortened_tweets = []
	tweet_array.each do |tweet|
		shortened_tweets << tweet_shortener(tweet)
	end
	shortened_tweets
end