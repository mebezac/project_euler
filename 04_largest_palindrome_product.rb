def largest_palindrome_product(digits)
  factor_1 = ("9" * digits).to_i
  factor_2 = factor_1 + 1

  while factor_2 > 0
    factor_2 -= 1
    product = factor_1 * factor_2
    if palindrome?(product)
      break
    else
      if factor_2.to_s.length < digits
        factor_2 = factor_1
        factor_1 -= 1
      end
    end
  end
  [factor_1, factor_2].join(" and ") + " whose product is #{factor_1 * factor_2}"
end

def palindrome?(number)
  if number.to_s.reverse == number.to_s
    true
  else
    false
  end
end

puts largest_palindrome_product(3)