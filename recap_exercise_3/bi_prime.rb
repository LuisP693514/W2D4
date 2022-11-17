
# recap_exercise_3/bi_prime.rb

def bi_prime?(n)

    prime_factors = (1...n).select {|num| n % num == 0 && is_prime?(num)}

    prime_factors.each {|f1| prime_factors.each {|f2| return true if f1 * f2 == n } }

    false

end

def is_prime?(n)

    return false if n < 2

    (2...n).each {|num| return false if n % num == 0}

    true
end

# Examples
#----------

# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(94)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false