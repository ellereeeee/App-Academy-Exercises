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
  
  def random_position
    max_length = @grid[0].length
    random_row = rand(1...max_length)
    random_col = rand(1...max_length)
    position = [random_row, random_col]
  end

  def place_random_ships
    amount_to_place = (@grid.flatten.length * 0.25).round
    amount_to_place.times do
      position = self.random_position
      if self.[](position) == :S
        until self.[](position) != :S
          position = self.random_position
        end
      end
      self.[]=(position, :S)
    end
  end

  def hidden_ships_grid
    hidden_grid = []
    @grid.each do |row|
      hidden_row = []
      row.each { |val| val == :S ? hidden_row << :N : hidden_row << val}
      hidden_grid << hidden_row
    end
    hidden_grid
  end

  def self.print_grid(grid)
    grid.each do |row| 
      print row.join(" ")
      print "\n"
    end
  end
end
