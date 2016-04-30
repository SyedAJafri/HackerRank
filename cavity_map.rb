n = gets.strip.to_i
grid = Array.new(n)

(0..(n - 1)).each do |grid_i|
  grid[grid_i] = gets.strip
end

grid = grid.inject([]) { |a, e| a.concat e.split('') }

grid.each_with_index do |elem, index|
  top_elem = grid[index - 4]
  bottom_elem = grid[index + 4]
  left_elem = grid[index - 1]
  right_elem = grid[index + 1]

  # Skip edge elements
  if top_elem.nil? || bottom_elem.nil? || left_elem.nil? || right_elem.nil?
    puts elem
    next
  end

  # if surrounding elements are all less than elem. Mark as cavity 'X'
  if top_elem > elem && bottom_elem > elem && left_elem > elem &&
     right_elem > elem
    puts 'X'
  else
    puts elem
  end
end
