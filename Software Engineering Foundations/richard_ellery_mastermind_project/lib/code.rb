class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs
  
  def self.valid_pegs?(chars)
    chars.all? { |color| POSSIBLE_PEGS.has_key?(color.upcase) }
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def initialize(chars)
    if !Code.valid_pegs?(chars)
      raise "contains invalid peg(s)"
    else
      @pegs = chars.map(&:upcase)
    end
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess_inst)
    exact_matches = 0
    (0...guess_inst.length).each do |i|
      exact_matches += 1 if guess_inst[i] == self[i]
    end
    exact_matches
  end

  def num_near_matches(guess_inst)
    near_matches = 0
    (0...guess_inst.length).each do |i|
      near_matches += 1 if self.pegs.include?(guess_inst[i]) && self[i] != guess_inst[i]
    end
    near_matches
  end

  def ==(guess_inst)
    guess_inst == self.pegs
  end
end
