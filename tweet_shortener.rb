require "pry"
# Write your code here.
def dictionary
  words_hash= {:hello => "hi", :to => "2", :two => "2", :too => "2", :for => "4", :For => 4, :four => "4", :be => "b", :you => "u", :at => "@", :and => "&"}
    #if words_hash.has_key?(word_sym_key)
       #   return words_hash[word_sym_key]
     # end
end

def word_substituter(tweet_str)
  n_tweet_arr= tweet_str.split(" ")
    words_hash= dictionary
    
  dictionary_keys= words_hash.keys
  
  n_diction_keys= dictionary_keys.collect do |key|
    key.to_s
  end
  
  len= n_tweet_arr.length
  count= 0
  while count < len
    if n_diction_keys.include?(n_tweet_arr[count])
      n_symb_tweet= n_tweet_arr[count].to_sym
      n_tweet_arr[count]= words_hash[n_symb_tweet]
    else
      "no words to replace"
    end
      count+= 1
      #binding.pry
  end
  n_tweet_arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  
  count= 0
  len= tweets.length
  while count < len
  print_tweet= word_substituter(tweets[count])
  puts print_tweet
  count += 1
  end
end

def selective_tweet_shortener(tweet_one)
  tweet_len= tweet_one.length
  
  if tweet_len > 140  
    word_substituter(tweet_one)
  else
    tweet_one
  end
end

def shortened_tweet_truncator(tweet)
  n_twitt= word_substituter(tweet)
  len= n_twitt.length
  #binding.pry
  if len > 140
    n_twitt= n_twitt[0...140]
  end
  n_twitt
end