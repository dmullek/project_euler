square_of_sum = (101*50)**2
sum_of_squares = (1..100).map{ |number| number**2 }.reduce(:+)

puts square_of_sum - sum_of_squares