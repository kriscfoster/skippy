class Grid
  attr_reader :dimension

  def initialize(d)
    @dimension = d
  end

  def is_valid_point(point)
    if point.x >= 0 && point.x < @dimension && point.y >= 0 && point.y < @dimension
      return true
    end
  end
end
