
# recap_exercise_3/no_dupes.rb

def no_dupes?(arr)

    arr.select {|ele| arr.one?(ele)}

end

# Examples
# ---------

# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])            # => []