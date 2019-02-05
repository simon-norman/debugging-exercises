def factorial(number)
  product = 1
  p "at the start product is #{product}"
  while number > 0
    p "we multiply #{product} by #{number}"
    product *= number
    p "we get #{product}"
    number -= 1
  end
  product
end
