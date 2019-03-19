# Write your code here.
def dictionary
  word = {
    "hello"=> "hi", 
    "to"=> "2", 
    "two"=> "2", 
    "too"=> "2", 
    "for"=> "4", 
    "four"=> "4",
    "be"=> "b", 
    "you"=> "u", 
    "at"=> "@", 
    "and"=> "&"}
end

def word_substituter(tweet)
  tweet.split.collect do |a|
    if dictionary.keys.include?(a.downcase)
      a = dictionary[a.downcase]
    else
      a
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
tweet.each do |x|
  
  puts word_substituter(x)
end
end

def selective_tweet_shortener(tweet)
  if tweet.length >140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
   tweet =  word_substituter(tweet)
   tweet[0..136] + "..."
  else
   tweet
 end
 end
  
  