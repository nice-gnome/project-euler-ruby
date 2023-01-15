# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(n)
    factors = []
    while n.even?
        factors << 2
        n /= 2
    end
    i = 3
    while i <= Math.sqrt(n) + 1
        while n%i == 0
            factors << i
            n /= i
        end
        i += 2
    end
    factors << n if n > 2
    return factors.last
end

# test
puts largest_prime_factor(13195)==29

# solutions
puts largest_prime_factor(600851475143)
