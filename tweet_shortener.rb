# Write your code here.
def dictionary
    dictionary = {
      'hello' => 'hi',
      'to' => '2',
      'too' => '2',
      'two' => '2',
      'for' => '4',
      'four' => '4',
      'be' => 'b',
      'you' => 'u',
      'at' => '@',
      'and' => '&'
  }
end

def word_substituter(message)
  message_array = message.split(" ").map do |word|
    dictionary.keys.include?(word.downcase) ? dictionary[word.downcase]: word
  end
  message_array.join(" ")
end

def bulk_tweet_shortener(messages)
  messages.each{|message| puts word_substituter(message)}
end

def selective_tweet_shortener(message)
  message.length > 140 ? word_substituter(message) : message
end

def shortened_tweet_truncator(message)
  word_substituter(message)[0..139]
end
