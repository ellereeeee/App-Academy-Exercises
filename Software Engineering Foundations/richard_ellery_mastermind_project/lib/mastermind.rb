require_relative "code"

class Mastermind
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(guess_inst)
    p "exact matches: #{@secret_code.num_exact_matches(guess_inst)}"
    p "near matches: #{@secret_code.num_near_matches(guess_inst)}"
  end

  def ask_user_for_guess
    p "Enter a code"
    guess_inst = Code.from_string(gets.chomp)
    self.print_matches(guess_inst)
    guess_inst == @secret_code
  end
end
