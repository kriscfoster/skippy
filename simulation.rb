require './grid'
require './die'
require './kangaroo'

class Simulation

  def initialize(dimension)
    @grid = Grid.new(dimension)
    @die = Die.new
    @skippy = Kangaroo.new(@grid)
  end

  def run
    until @skippy.is_home
      @skippy.hop(@die.throw)
    end
  end

  def print_stats
    puts "Finished in #{@skippy.hops} hops!"
    puts
    puts @die.get_stats
  end
end
