def transform_number (number, counter = 0)
  counter += 1

  if number > 1
    if number % 2 == 0
      return transform_number(number/2, counter)
    else
      return transform_number(number*3 + 1, counter)
    end
  end

  return counter
end

puts (1..1000000).max_by{ |starting_integer| transform_number(starting_integer) }