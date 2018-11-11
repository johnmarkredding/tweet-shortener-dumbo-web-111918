# Write your code here.

def word_substituter(str)
  short_hash = {
    " hello " => ' hi ',
    " to " => ' 2 ',
    " two " => ' 2 ',
    " too " => ' 2 ',
    " for " => ' 4 ',
    " For " => ' 4 ',
    " four " => ' 4 ',
    " be " => ' b ',
    " you " => ' u ',
    " at " => " @ " ,
    " and " => " & "
  }
  short_hash.each {|k,v|
    str.gsub!(k, v)
  }
  str
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.size >= 140 {
    short_tweet = word_substituter(tweet)
    if short_tweet.size > 140
      short_tweet = short_tweet[0, 140]
    end
    short_tweet
  else
    tweet
  }
end