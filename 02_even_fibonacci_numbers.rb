def fibonacci_under(limit)
  numbers = [1 ,2]
  num1 = 1
  num2 = 2
  while numbers.last < limit
    new_num = num1 + num2
    numbers << new_num
    num1 = num2
    num2 = new_num
  end
  numbers.pop if numbers.last > limit
  numbers
end

def sum_even_nums_in_array(array)
  even_nums = []
  until array.empty?
    last_num = array.pop
    if last_num % 2 == 0
      even_nums << last_num
    end
  end
  total = even_nums.inject(:+) 
end

puts sum_even_nums_in_array(fibonacci_under(4000000))
