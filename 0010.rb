require 'prime'
puts (1..2000000).select{ |number| Prime.prime?(number) }.reduce(:+)