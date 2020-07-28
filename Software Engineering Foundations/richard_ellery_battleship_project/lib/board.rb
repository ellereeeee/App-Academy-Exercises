class Board
  attr_reader :size

  def initialize(n)
    @grid = Array.new(n) {Array.new(n, :N)}
    @size = n * n
  end

  def [](position)
    row, col = position
    @grid[row][col] 
  end

  def []=(position, val)
    row, col = position
    @grid[row][col] = val
  end

  def num_ships
    count = 0
    @grid.each do |row|
      row.each{|val| count += 1 if val == :S}
    end
    count
  end
end
