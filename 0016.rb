number = 2**1000
puts number.to_s.split(//).map{ |char| char.to_i}.reduce(:+)