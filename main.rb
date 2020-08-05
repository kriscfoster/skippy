require './simulation'

puts 'Enter dimension of the Grid (>=1):'

while (dimension = gets.to_i) < 1 do
  puts 'Dimension must be an integer greater than 0'
end

simulation = Simulation.new(dimension)
simulation.run
simulation.print_stats
