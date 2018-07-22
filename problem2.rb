int i = 1
int j = 2

int next_term = 0
numbers = [i, j]

while next_term < 4000000
  next_term = i + j
  numbers.insert(-1, next_term) if next_term < 4000000
  i = j
  j = next_term
end

numbers.delete_if {|x|  x%2 != 0}
sum = 0
numbers.each {|x| sum += x}
puts sum