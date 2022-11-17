# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
def all_vowel_pairs(words)


    vowel_pairs = []

    words.each.with_index {|word1, idx1|
        words.each.with_index {|word2, idx2|
    
        if idx1 != idx2 && idx2 > idx1

            temp_word = word1.downcase + word2.downcase

            a = temp_word.include?("a")
            e = temp_word.include?("e")
            i = temp_word.include?("i")
            o = temp_word.include?("o")
            u = temp_word.include?("u")

            if a && e && i && o && u
                
                vowel_pairs << word1 + " " + word2

            end

        end

        }
    }

    vowel_pairs

end


# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)

    (2...num).each {|n| return true if num % n == 0}

    false

end


# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
def find_bigrams(str, bigrams)

    bigrams.select {|bigram| str.include?(bigram)}

end

class Hash
    # Write a method, Hash#my_select, that takes in an optional proc argument
    # The method should return a new hash containing the key-value pairs that return
    # true when passed into the proc.
    # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
    #
    # Examples:
    #
    # hash_1 = {x: 7, y: 1, z: 8}
    # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
    #
    # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
    # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
    # hash_2.my_select                            # => {4=>4}
    def my_select(&prc)

        if prc == nil

            return self.select {|k, v| k == v}

        end

        self.select {|key, val| prc.call(key, val)}

    end
end

class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]
    def substrings(length = nil)

        substrings = []
    
        self.each_char.with_index do |char, idx|
            iteration = 0
            while iteration < self.length
                if iteration > idx
                    break
                end
                substrings << self[iteration..idx]
                iteration += 1
            end
        end

        if length
            substrings.select {|ele| ele.length == length}
        else
            substrings
        end
    end


    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"
    def caesar_cipher(num)

        alpha = "abcdefghijklmnopqrstuvwxyz"

        new_str = ""

        self.downcase.each_char {|char|
            alpha.each_char.with_index {|a_c, i|
                if char == a_c
                    new_str << alpha[(i+num) % 26]
                    break
                end
            }
        }

        new_str

    end
end
