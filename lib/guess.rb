require_relative 'card'

class Guess
  attr_reader :card, :response
  def initialize(response, card)
    @card = card
    @response = response
  end

  def correct?
    @response == card.answer ? true : false
  end

  def feedback
    correct? == true ? "Correct!" : "Incorrect."
  end

end
