require 'prime'

overall_limit = 50000000
numbers = []

def number(prime_1, prime_2, prime_3)
  prime_1**2 + prime_2**3 + prime_3**4
end

Prime.each(7072) do |prime_1|
  Prime.each(369) do |prime_2|
    Prime.each(85) do |prime_3|
      value = number(prime_1, prime_2, prime_3)
      if value < overall_limit
        numbers << value
      end
    end
  end
end

puts numbers.uniq.count