def find_factors(number)
  factors = [number]
  divider = (number / 2) + 1
  while divider > 1
    divider -= 1
    if number % divider == 0
      factors << divider
    end
  end
  factors
end

def find_largest_prime_factor(array)
  prime = []
  array.each do |number|
    factors = find_factors(number)
    if factors.length == 2
      prime << number
      break
    end
  end
  prime
end

puts find_largest_prime_factor(find_factors(600851475143))
