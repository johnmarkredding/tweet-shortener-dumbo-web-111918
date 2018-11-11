# Write your code here.

def word_substituter(str)
  short_hash = {
    "hello" => 'hi',
    "to" => '2'
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
  short_hash.each {|k,v|
    str.sub!(k,v)
  }
  str
end

def bulk_tweet_shortener()
end

def selective_tweet_shortener()
end

def shortened_tweet_truncator()
end
short_hash = {"hello" => 'hi',
"to, two, too" => '2',
"for, four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@" ,
"and" => "&" }