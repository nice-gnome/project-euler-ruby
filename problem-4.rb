# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome(limit)
    palindromes = []
    for x in (limit).downto(0)
        for y in (limit).downto(0)
            p = x*y
            palindromes << p if p == p.to_s.reverse.to_i
        end
    end
    return palindromes.max
end


# test
puts largest_palindrome(99)==9009

# solution
puts largest_palindrome(999)