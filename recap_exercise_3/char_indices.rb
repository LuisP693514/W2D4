

# recap_exercise_3/char_indices.rb


def char_indices(str)

    hash = Hash.new {|h,k| h[k] = Array.new}

    str.each_char.with_index {|c, i| hash[c] << i}

    hash

end

# Examples
#----------

# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}