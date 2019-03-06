def dictionary
  {
    "hello"=> "hi",
    "to"   => "2",
    "two"  => "2",
    "too"  => "2",
    "for"  => "4",
    "four" => "4",
    "be"   => "b",
    "you"  => "u",
    "at"   => "@",
    "and"  => "&"
  }
end

def word_substituter(tweet)
  subst = dictionary
  new_tweet = []
  tweet_array = tweet.split(" ")
  tweet_array.each do |word|
    if subst.keys.include?(word.downcase)
      new_tweet << subst[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ").to_s
end

def bulk_tweet_shortener(list)
  list.each do |tweet|
    puts word_substituter(tweet.to_s)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    tweet[0..139]
  else
    tweet
  end
end
