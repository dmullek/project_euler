# Not Yet Optimized

GRID_WIDTH = 20
GRID_HEIGHT = 20

def calculate_route_combinations (i = 0, j = 0)
  counter = 0

  if i < GRID_WIDTH
    counter += calculate_route_combinations(i + 1, j)
  end

  if j < GRID_HEIGHT
    counter += calculate_route_combinations(i, j + 1)
  end

  if (i == GRID_WIDTH && j == GRID_HEIGHT)
    return counter + 1
  else
    return counter + 0
  end
end

puts calculate_route_combinations