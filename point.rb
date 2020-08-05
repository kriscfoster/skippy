class Point

  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def eql?(other)
    other.class == self.class && other.x == self.x && other.y == self.y
  end
end
