class GuessingGame

  class NoMoreGuessesError < StandardError; end

  attr_accessor :answer, :tries

  def initialize(max, tries=3)
    self.answer = rand(max)
    self.tries = tries
  end

  def guess(number)
    if tries <= 0
      raise NoMoreGuessesError
    else
      self.tries -= 1
    end
    answer == number
  end

end
