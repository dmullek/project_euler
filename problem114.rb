SLOT_SIZE = 50
BLOCK_SIZES = *(3..SLOT_SIZE)

def get_block_slot_count(block_size, slot_size)
  count = slot_size - block_size + 1

  # new_slot_size = slot_size - 4
  # new_block_sizes = (3..new_slot_size)
  # new_block_sizes.each do |new_block_size|
  #   count += get_block_slot_count(new_block_size, new_slot_size)
  # end

  # count
end

BLOCK_SIZES.each do |block_size|
  puts get_block_slot_count(block_size, SLOT_SIZE)
end