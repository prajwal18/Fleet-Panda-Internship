=begin
    There is a string, , of lowercase English letters that is repeated infinitely many times. 
    Given an integer, , find and print the number of letter a's in the first  letters of the infinite string.
=end
def repeatedString(s, n)
    a_count_in_s = 0
    a_count_in_remainder = 0
    multiplier = (n / s.length)
    remainder = n % s.length

    if remainder != 0
        substring = s[0,remainder]
        substring.each_char{ |char| a_count_in_remainder += 1 if char == 'a' }
    end

    s.each_char { |char| a_count_in_s += 1 if char == 'a' }

    a_count_in_s * multiplier + a_count_in_remainder

end

puts repeatedString('aba', 10)