def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  keys = dictionary.keys
  final_tweet = ""
  tweet_array.each do |str|
    if keys.include?(str.downcase)
      final_tweet << dictionary[str.downcase] + " "
    else
      final_tweet << str + " "
    end
  end
  final_tweet.rstrip
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0...137] + "..."
  else
    tweet
  end
end

