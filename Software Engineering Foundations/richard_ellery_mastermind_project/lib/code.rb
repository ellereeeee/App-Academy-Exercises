class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  
  def self.valid_pegs?(chars)
    chars.all? { |color| POSSIBLE_PEGS.has_key?(color.upcase) }
  end

  def initialize(chars)
    if !Code.valid_pegs?(chars)
      raise "contains invalid peg(s)"
    else
      @pegs = chars.map(&:upcase)
    end
  end

  def pegs
    @pegs
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end
end
