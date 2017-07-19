require_relative 'card'
require_relative 'deck'
require_relative 'round'
require_relative 'guess'
require_relative 'card_generator'
require 'pry'

class FlashCardRunner
  def initialize
    cards = CardGenerator.new('cards.txt').cards
    deck = Deck.new(cards)
    round = Round.new(deck).start
  end
end

FlashCardRunner.new
