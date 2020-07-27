class Board
  def initialize(n)
    @grid = Array.new(n) {Array.new(n, :N)}
    @size = n * n
  end

  def size
    @size
  end

  def [](arr)
    @grid[arr[0]][arr[1]] 
  end

  def []=(pos, val)
    @grid[pos[0]][pos[1]] = val
  end

  def num_ships
    count = 0
    @grid.each do |row|
      row.each{|val| count += 1 if val == :S}
    end
    count
  end
end
