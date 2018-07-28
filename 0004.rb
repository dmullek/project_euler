i = 800
j = 800
highest_palindrome = 0
while i <= 999 do
  while j <= 999 do
    k = i*j
    if k === k.to_s.reverse.to_i && k >= highest_palindrome
      highest_palindrome = k
      puts highest_palindrome
    end
    j += 1
  end
  i += 1
  j = i
end