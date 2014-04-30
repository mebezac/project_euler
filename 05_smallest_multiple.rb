def smallest_multiple(beginning_of_range, end_of_range)
  range = (beginning_of_range..end_of_range).to_a
  number = 0
  found = false
  until found
    number += 1
    puts number
    if find_factors(number).last(10) == range.reverse
      break
    end
  end
  number
end

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

puts smallest_multiple(1, 20)