def below_1000
  numbers = []
  n = 0
  while n < 999
    n += 1
    if n % 3 == 0 || n % 5 == 0
      numbers << n 
    end
  end
  total = numbers.inject(:+) 
end

puts below_1000