# pretentious_primes
# Write a method pretentious_primes that takes accepts an array 
# and a number, n, as arguments. The method should return a new array
#  where each element of the original array is replaced according to the following rules:

# when the number argument is positive, replace an element with the n-th 
#     nearest prime number that is greater than the element
# when the number argument is negative, replace an element with the n-th
#      nearest prime number that is less than the element
# For example:

# if element = 7 and n = 1, then the new element should be 11 because 11 is the nearest prime greater than 7
#     if the element = 7 and n = 2, then the new element should be 13 because 13 is the 2nd nearest prime greater than 7
#     if the element = 7 and n = -1, then the new element should be 5 because 5 is the nearest prime less than 7
#     if the element = 7 and n = -2, then the new element should be 3 because 3 is the 2nd nearest prime less than 7
#     Note that we will always be able to find a prime that is greater than a given number
#      because there are an infinite number of primes (this is given by Euclid's Theorem). However,
#       we may be unable to find a prime that is smaller than a given number, because 2 is the smallest 
#       prime. When a smaller prime cannot be calculated, replace the element with nil.
    
    # Examples


def pretentious_primes(arr,shift)
arr.map{|num| primeGen(num,shift)}

end

def prime?(n)
return false if n<2
(2...n).none?{|v| n%v==0}

end

def primeGen(num,shift)
    
        newNum=num+1
        i=0

        while(i<shift)

            if prime?(newNum)==false
            newNum+=1
            elsif prime?(newNum)==true
                i+=1
                if(i<shift)
                    newNum+=1
                end
            end

        end
        return newNum

end

p pretentious_primes([4, 15, 7], 1)           # [5, 17, 11]
p pretentious_primes([4, 15, 7], 2)           # [7, 19, 13]
p pretentious_primes([12, 11, 14, 15, 7], 1)  # [13, 13, 17, 17, 11]
p pretentious_primes([12, 11, 14, 15, 7], 3)  # [19, 19, 23, 23, 17]
p pretentious_primes([4, 15, 7], -1)          # [3, 13, 5]
p pretentious_primes([4, 15, 7], -2)          # [2, 11, 3]
p pretentious_primes([2, 11, 21], -1)         # [nil, 7, 19]
p pretentious_primes([32, 5, 11], -3)         # [23, nil, 3]
p pretentious_primes([32, 5, 11], -4)         # [19, nil, 2]
p pretentious_primes([32, 5, 11], -5)         # [17, nil, nil]



# array1=[2,2,26]

# p array1
# p array1.length
# p array1.uniq
# p array1.uniq.length
