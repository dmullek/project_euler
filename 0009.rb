for b in 1..500
  a = (1000000 - 2000*b)/(2000 - 2*b)
  c = Math.sqrt(a*a + b*b)
  puts a * b * c if ((a + b + c == 1000) && (a < b) && (b < c))
end