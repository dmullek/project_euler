prime_counter = 1
j_is_prime = true
i = 2

while prime_counter <= 10001
  for j in 1..i
    j_is_prime = false if (i%j == 0 && j != 1 && j != i)
    if (j == i && j_is_prime == true)
      puts (prime_counter.to_s + ": " + j.to_s)
      prime_counter += 1
    end
  end
  j_is_prime = true
  i += 1
end
