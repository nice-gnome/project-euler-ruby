# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples(limit)
    sum = 0
    for n in 1..limit-1
        if n%3 == 0 || n%5 == 0
            sum += n
        end
    end
    return sum
end

# test
puts sum_multiples(10)==23

# solution
puts sum_multiples(1000)