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
    i = 0
    while i < guess_inst.length
      if guess_inst[i] == self[i]
        exact_matches += 1
      end
      i += 1
    end
    exact_matches
  end

  def num_near_matches(guess_inst)
    near_matches = 0
    i = 0
    while i < guess_inst.length
      peg = guess_inst[i]
      if self.pegs.include?(peg) && self[i] != guess_inst[i]
        near_matches += 1
      end
      i += 1
    end
    near_matches
  end
end
