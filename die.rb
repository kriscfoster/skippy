class Die

  def initialize
    @directions = %w[N S E W]
    @throws = 0
    @results = Hash[@directions.collect {|d| [d, 0.0]}]
  end

  def throw
    direction = @directions[rand(4)]
    @throws += 1
    @results[direction] += 1.0
    return direction
  end

  def get_stats
    return "Die statistics:\nTotal throws: #{@throws}\n" +
        "North #{(@results['N'] / @throws * 100).round(2)}% " +
        "South #{(@results['S'] / @throws * 100).round(2)}% " +
        "East #{(@results['E'] / @throws * 100).round(2)}% " +
        "West #{(@results['W'] / @throws * 100).round(2)}%"
  end
end
