class GuessingGame

  attr_accessor :answer

  def initialize(max)
    self.answer = rand(max)
  end

end
