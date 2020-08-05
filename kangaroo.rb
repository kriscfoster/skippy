require './point'

class Kangaroo

  attr_reader :hops

  def initialize(grid)
    @grid = grid
    @home = Point.new(grid.dimension - 1, grid.dimension - 1)
    @position = Point.new(0, 0)
    @hops = 0
  end

  def hop(direction)
    x_velocity = 0
    y_velocity = 0

    case direction
    when 'N'
      y_velocity = 1
    when 'S'
      y_velocity = -1
    when 'E'
      x_velocity = 1
    when 'W'
      x_velocity = -1
    end

    @position.x += x_velocity
    @position.y += y_velocity

    if @grid.is_valid_point(@position)
      @hops += 1
      puts "Hopped to: (#{@position.x}, #{@position.y})"
    else
      puts "Oops, hit the boundary: (#{@position.x}, #{@position.y})"
      @position.x -= x_velocity
      @position.y -= y_velocity
    end

  end

  def is_home
    return @position.eql?(@home)
  end
end
