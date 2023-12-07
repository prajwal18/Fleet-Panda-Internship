=begin
  This files contains a function that will calculate and print the first n number of 
  primes. 'n' being the argument that is fed into the function. 
=end


def check_is_prime(num)
  is_prime = true
  if num < 2
    is_prime = false
  else
    for i in (2..Math.sqrt(num))
      if num%i == 0
        is_prime = false
        break
      end
    end
  end
  is_prime
end

def first_n_primes(num)
  primes_list = []
  count = 2
  while primes_list.length < 10 do
    is_count_prime = check_is_prime(count)
    if is_count_prime
      primes_list.push(count)
    end
    count += 1
  end
  primes_list
end

def get_all_primes_upto(num)
  primes_list = []
  if num <= 2
    return []
  else
    for i in (2..num)
      is_prime = check_is_prime(i)
      if is_prime
        primes_list.push(i)
      end
    end
  end 
  primes_list
end


# puts first_n_primes(10)

puts get_all_primes_upto(100)