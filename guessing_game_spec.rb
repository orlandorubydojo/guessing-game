require './guessing_game.rb'

describe GuessingGame do

  before(:each) do
    @gg = GuessingGame.new(10, 3, 2)
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

  it "should return x as correct guess" do
    expect(@gg.guess(@gg.answer)).to eq true
  end

  it "should return false for wrong answer" do
    expect(@gg.guess(@gg.answer + 5)).to eq false
  end

  it "should return 3 for tries" do
    expect(@gg).to respond_to :tries
    expect(@gg.tries).to eq(3)
  end

  it "should decrement tries for a guess" do
    expect{@gg.guess(5)}.to change{@gg.tries}.from(3).to(2)
  end

  it "should not let you guess more than 3 times" do
    expect{
      4.times { @gg.guess(5) }
    }.to raise_error GuessingGame::NoMoreGuessesError
  end

  it "should tell you if you are 'close' when within 'closeness' range" do
    @gg.answer = 7
    expect(@gg.guess(5)).to eq :close
  end

end

