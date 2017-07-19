require_relative 'card'
require_relative 'deck'
require_relative 'round'
require_relative 'guess'
require 'pry'

class FlashCardRunner
  def initialize
    card_1 = Card.new("What is 5 + 5?","10")
    card_2 = Card.new("What is the capital of Alaska?","Juneau")
    card_3 = Card.new("What color is the ocean?","blue")
    card_4 = Card.new("What is street is Turing on?","Blake")
    deck = Deck.new([card_1, card_2, card_3, card_4])
    round = Round.new(deck).start
  end
end

FlashCardRunner.new
