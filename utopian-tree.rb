#https://www.hackerrank.com/challenges/utopian-tree

#!/bin/ruby

INITAL_HEIGHT = 1

# Recursively compute utopian tree.
# If cycles > 60 returns -1
# If cycles == 0 returns inital
# @param initial [Num] The inital height of the tree
# @param cycles [Num] The number of cycles remaining
def utopian_tree(initial, cycles)
    
    return -1 if cycles > 60
    
    # Base case
    return initial if cycles == 0
    
    if cycles % 2 == 1
        # Spring season multiply by 2
        utopian_tree(initial, (cycles - 1)) * 2 
    else
        # Summer season add 1
        utopian_tree(initial, (cycles - 1)) + 1
    end
    
end

num_tests = gets.strip.to_i
cycles_list = Array.new
for a0 in (0..num_tests-1)
    cycles_list << gets.strip.to_i
end

cycles_list.each do |cycles|
    puts utopian_tree(INITAL_HEIGHT, cycles)
end
