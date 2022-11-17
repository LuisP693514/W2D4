
# recap_exercise_3/vigenere_cipher.rb

def vigenere_cipher(str, arr)

    alpha = "abcdefghijklmnopqrstuvwxyz"
    i = 0
    new_str = ""
    while i < str.length
        arr_i = (arr.length + i) % arr.length

        letter = str[i]

        new_letter = alpha[ ( alpha.index(letter) + arr[arr_i] ) % alpha.length ]

        new_str << new_letter

        i+=1
    end

    new_str

end

# Examples
#----------

# p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
# p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# p vigenere_cipher("yawn", [5, 1])             # => "dbbo"