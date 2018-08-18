LIMIT = 10000000
NUM_ARRAY = []

NUM_ARRAY[1] = 1
NUM_ARRAY[89] = 89

def check_number(current_number)
  next_number = current_number.to_s.chars.map{ |digit| digit.to_i*digit.to_i }.reduce(:+)

  if !NUM_ARRAY[next_number].nil?
    NUM_ARRAY[current_number] = NUM_ARRAY[next_number]
    return NUM_ARRAY[next_number]
  else
    NUM_ARRAY[current_number] = check_number(next_number)
  end
end

(1..LIMIT).each do |number|
  if NUM_ARRAY[number].nil?
    check_number(number)
  end
end

puts "1: " + NUM_ARRAY.select{ |number| number == 1 }.count.to_s
puts "89: " + NUM_ARRAY.select{ |number| number == 89 }.count.to_s