class GuessingGame

  class NoMoreGuessesError < StandardError; end

  attr_accessor :answer, :tries, :closeness

  def initialize(max, tries=3, closeness=2)
    self.answer = rand(max)
    self.tries = tries
    self.closeness = closeness
  end

  def guess(number)
    if tries <= 0
      raise NoMoreGuessesError
    else
      self.tries -= 1
      range=(answer-closeness)..(answer+closeness)

      case 
      when answer != number && range.cover?(number)
        :close
      when answer == number
        true  
      else answer != number
        false
      end
    end
  end

end