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
    @grid.flatten.count{|val| val == :S}
  end

  def attack(position)
    if self.[](position) == :S
      self.[]=(position, :H)
      p 'you sunk my battleship!'
      true
    else
      self.[]=(position, :X)
      false
    end
  end
end
