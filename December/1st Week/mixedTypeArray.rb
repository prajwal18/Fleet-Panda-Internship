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


# 1
def getVariableTypeCountOfAList(my_list)
    int_count = 0
    float_count = 0
    str_count = 0
    bool_count = 0
    
    last_index = my_list.length - 1
    
    for i in (0..last_index)
        my_var = my_list[i]
        if my_var.is_a?(String)
            str_count += 1
        elsif my_var.is_a?(Integer)
            int_count += 1
        elsif my_var.is_a?(Float)
            float_count += 1
        elsif !!my_var == my_var # Boolean case
            bool_count += 1   
        end
    end
    
    puts "Integer count #{int_count}"
    puts "Float count #{float_count}"
    puts "String count #{str_count}"
    puts "Boolean count #{bool_count}"
end

# 2
def getSumOfAllIntegerInAList(my_list)
    last_index = my_list.length - 1
    int_sum = 0
    for i in (0..last_index) 
        if my_list[i].is_a?(Integer)
            int_sum += my_list[i]
        end
    end
    puts "Sum of all the integers: #{int_sum}"
end

# 3
def getSumOfAllFloatInAList(my_list)
    last_index = my_list.length - 1
    float_sum = 0.0
    for i in (0..last_index) 
        if my_list[i].is_a?(Float)
            float_sum += my_list[i]
        end
    end
    puts "Sum of all the float: #{float_sum}"
end

# 4
def getAverageOfAllFloatInAList(my_list)
    last_index = my_list.length - 1
    float_sum = 0
    float_count = 0
    for i in (0..last_index) 
        if my_list[i].is_a?(Float)
            float_sum += my_list[i]
            float_count += 1
        end
    end
    puts "Average of all the float: #{float_sum/float_count}"
end

# 5
def getAllPrimeNumberLessThanEqualTo(num)
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
    print primes
end

# 6
def getTheLongestString(my_list)
    last_index = my_list.length - 1
    longest_str = "";
    for i in (0..last_index) 
        if my_list[i].is_a?(String)
            if longest_str.length < my_list[i].length
                longest_str = my_list[i]
            end
        end
    end
    puts "The longest String is: #{longest_str} \nWith a length of: #{longest_str.length}"
end

# 7
def groupStringByLength(my_list)
    last_index = my_list.length - 1
    stringGroupedByLength = Hash.new()
    for i in (0..last_index)
        if my_list[i].is_a?(String)
            string_length = my_list[i].length
            if stringGroupedByLength.key?(string_length)
                stringGroupedByLength[string_length].append(my_list[i])
            elsif
                stringGroupedByLength[string_length] = [my_list[i]]
            end            
        end
    end
    print stringGroupedByLength
end



getVariableTypeCountOfAList(my_list)
print "\n\n"
getSumOfAllIntegerInAList(my_list)
print "\n\n"
getSumOfAllFloatInAList(my_list)
print "\n\n"
getAverageOfAllFloatInAList(my_list)
print "\n\n"
getTheLongestString(my_list)
print "\n\n"
groupStringByLength(my_list)
print "\n\n"
getAllPrimeNumberLessThanEqualTo(33)