require_relative 'card'
require 'colorize'

class Guess
  attr_reader :card, :response
  def initialize(response, card)
    @card = card
    @response = response
  end

  def correct?
    @response.downcase == card.answer.downcase ? true : false
  end

  def feedback
    correct? == true ? "Correct!".colorize(:green) : "Incorrect.".colorize(:red)
  end
end
