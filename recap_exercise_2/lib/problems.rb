# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)

    product = num_1 * num_2

    (1..product).each {|n|

        factors_arr = factors(n)

        return n if factors_arr.include?(num_1) && factors_arr.include?(num_2) && n >= [num_1, num_2].max

    }

end

def factors(num)

    (1..num).select {|n| num %n == 0}

end

# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)

    bigrams = Array.new

    str.each_char.with_index {|c, i| bigrams << str[i] + str[i+1] if str[i+1]}

    bigrams.select! {|ele| ele.length == 2}

    bigram_frequency = bigrams.map {|ele| frequency(str, ele)}

    bigrams[bigram_frequency.find_index(bigram_frequency.max)]

end

def frequency(str, bigram)

    count = 0

    str.each_char.with_index {|c, i| count += 1 if str[i..i+1].length == 2 && str[i..i+1] == bigram }

    count

end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse

        hash = Hash.new

        self.each {|k,v| hash[v] = k}

        hash

    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)



    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)

    end
end
