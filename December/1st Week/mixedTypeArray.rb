=begin
------ The Question ------
ruby task where array has integer, float, Boolean, string.
get the following result:
- the count of each data type       : Done
- the sum of all integer            : Done
- the sum of all float              : Done    
- the average of all float value    : Done
- get all prime number from integer : Done
- Longest string                    : Done
- group strings by size ex: 2 => am, is, 7: smarter : Done
=end


my_list = [1,2,"Hello", "ABCDE", true, 2, false, "Hello again", 2.4, 4.6, "What up", "Halo", "I see fire, ed sheeran"]

def integer_list()
    @integer_list ||= []
end

def float_list()
    @float_list ||= []
end

def string_list()
    @string_list ||= []
end

def boolean_list()
    @boolean_list ||= []
end


# 1
def printVariableTypeCountOfAList(my_list)
    for item in (my_list)
         case item
         when String
            string_list.append(item)
         when Integer
            integer_list.append(item)
         when Float
            float_list.append(item)
         when !!item == item # Boolean case
            boolean_list.append(item)
        end
    end
    
    puts "Integer count #{integer_list.length}"
    puts "Float count #{float_list.length}"
    puts "String count #{string_list.length}"
    puts "Boolean count #{boolean_list.length}"
end

# 2 Note: this will only work if the function getVariableTypeCountOfAList is executed prior. (Assigns the integer_list variable some value)
def getSumOfAllIntegerInAList()
    return integer_list.sum
end

# 3 Note: this will only work if the function getVariableTypeCountOfAList is executed prior. (Assigns the float_list variable some value)
def getSumOfAllFloatInAList()
    return float_list.sum
end

# 4: Note: this will only work if the function getVariableTypeCountOfAList is executed prior. (Assigns the float_list variable some value) 
def getAverageOfAllFloatInAList()
    float_sum = getSumOfAllFloatInAList()
    float_count = float_list.length
    return float_sum/float_count
end

# 5
def printAllPrimeNumberLessThanEqualTo(num)
    primes = []

    if num <= 2
        print "All prime <= #{num}: #{2}"
        return
    end

    for i in (2..num)
        is_i_prime = true
        for j in (2..Math.sqrt(i))
            if i%j == 0
                is_i_prime = false
                break
            end
        end
        if is_i_prime
            primes.append(i)
        end
    end
    print "All primes <= #{num}: #{primes}"
end

# 7 Note: this will only work if the function getVariableTypeCountOfAList is executed first. (Assigns the string_list variable some value)
def getStringsGrouppedByLength()
    stringGroupedByLength = Hash.new()
    for item in string_list
            string_length = item.length
            if stringGroupedByLength.key?(string_length)
                stringGroupedByLength[string_length].append(item)
            elsif
                stringGroupedByLength[string_length] = [item]
            end
    end
    return stringGroupedByLength
end

# 6 Returns the first longest string if there are more than one with the same max length.
def getTheLongestString()
    stringGroupedByLength = getStringsGrouppedByLength()
    largestStringLen = stringGroupedByLength.keys.max
    return stringGroupedByLength[largestStringLen][0]
end



printVariableTypeCountOfAList(my_list)
print "\n\n"
print "Sum of all integers in a list: #{getSumOfAllIntegerInAList()}"
print "\n\n"
print "Sum of all floats in a list: #{getSumOfAllFloatInAList()}"
print "\n\n"
print "Average of all floats in a list: #{getAverageOfAllFloatInAList()}"
print "\n\n"
print "The longest string in a list: #{getTheLongestString()}"
print "\n\n"
print "String grouped by length: #{getStringsGrouppedByLength()}"
print "\n\n"
printAllPrimeNumberLessThanEqualTo(33)