# Write your code here.
def word_substituter(tweet)
  tweet_array = tweet.split
    tweet_array.each_with_index do |word, index|
      if in_dictionary?(word)
        tweet_array[index] = return_dictionary_value(word)
      end
    end
  tweet_array.join(" ")
end


def dictionary
  sub_words = {"hello" => "hi",
               "to" => "2",
               "too" => "2",
               "two" => "2",
               "for" => "4",
               "four" => "4",
               "you" => "u",
               "at" => "@",
               "and" => "&",
               "be" => "b"}
end

def bulk_tweet_shortener(lots_of_tweets)
  lots_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)

  if tweet.length < 140
    tweet
  else
    shorten_tweet = word_substituter(tweet)
    ellipses = "..."
      if shorten_tweet.length > 140
        shorten_tweet.slice!(137..shorten_tweet.length)
        shorten_tweet << ellipses
      end
  end
end

def in_dictionary?(word)
  keys = dictionary.keys
  word = word.downcase
  keys.include?(word)
end

def return_dictionary_value(word)
  word = word.downcase
  keys = dictionary.keys
  if keys.include?(word)
    return dictionary[word]
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end