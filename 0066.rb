def minimum_x(d)
  x = 0.5
  y = 1
  until is_integer?(x) do
    x = Math.sqrt(1 + d*y*y)
    y += 1
  end
  # return x
  puts d.to_s + ": " + x.to_s + ", " + y.to_s
end

def is_integer?(num)
 num == num.floor
end

# highest_x = 0

2.upto(1000) do |d|
  next if is_integer?(Math.sqrt(d))
  minimum = minimum_x(d)
  # highest_x = minimum if minimum.to_i > highest_x.to_i
  # puts d.to_s + ": " + highest_x.to_s
end