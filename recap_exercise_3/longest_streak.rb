
# recap_exercise_3/longest_streak.rb

def longest_streak(str)

    hash = Hash.new(0)

    str.each_char {|c| hash[c] += 1}

    sorted = hash.sort_by {|key, val| val}

    letter = sorted[-1][0]

    longest = ""

    str.each_char {|c| longest << c if c == letter}

    longest

end

# Examples
#----------

# p longest_streak('a')           # => 'a'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy'
# p longest_streak('aaabbb')      # => 'bbb'
# p longest_streak('abc')         # => 'c'