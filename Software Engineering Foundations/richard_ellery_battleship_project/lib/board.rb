class Board
  attr_reader :size
  
  def self.print_grid(grid)
    grid.each do |row| 
      puts row.join(" ")
    end
  end

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
    if self[position] == :S
      self[position] = :H
      p 'you sunk my battleship!'
      true
    else
      self[position] = :X
      false
    end
  end
  
  def random_position
    max_length = @grid.length
    random_row = rand(1...max_length)
    random_col = rand(1...max_length)
    position = [random_row, random_col]
  end

  def place_random_ships
    amount_to_place = (@size * 0.25).to_i
    amount_to_place.times do
      position = self.random_position
      if self[position] == :S
        until self[position] != :S
          position = self.random_position
        end
      end
      self[position] = :S
    end
  end

  def hidden_ships_grid
    @grid.map do |row|
      row.map { |val| val == :S ? :N : val}
    end
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end
end
