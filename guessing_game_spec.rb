require './guessing_game.rb'

describe GuessingGame do

  before(:each) do
    @gg = GuessingGame.new(10)
  end

  it "should respond with a random number for the guess" do
    number_array = []
    100.times do
      number_array << GuessingGame.new(10).answer
    end
    expect(number_array.uniq.size).not_to be(1)
    expect(number_array.uniq.max).not_to be >= 10
    expect(number_array.uniq.min).not_to be < 0
  end

end
