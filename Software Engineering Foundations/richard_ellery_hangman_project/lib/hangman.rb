class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length) { "_" }
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    indices = []
    @secret_word.each_char.with_index { |secret_char, idx| indices << idx if secret_char == char }
    indices
  end

  def fill_indices(char, indices)
    indices.each { |matching_idx| @guess_word[matching_idx] = char }
  end

  def try_guess(char)
    if self.already_attempted?(char)
      p "that has already been attempted"
      return false
    end

    @attempted_chars << char
    indices = self.get_matching_indices(char)
    indices.empty? ? @remaining_incorrect_guesses -= 1 : self.fill_indices(char, indices)
    true
  end

  def ask_user_for_guess
    p "Enter a char:"
    input = gets.chomp
    self.try_guess(input)
  end

  def win?
    if @guess_word.join("") == @secret_word
      print "WIN"
      return true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      p "LOSE"
      return true
    else
      false
    end
  end

  def game_over?
    if self.win? || self.lose?
      p @secret_word
      return true
    else
      false
    end
  end
end
