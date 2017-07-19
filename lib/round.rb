require_relative 'card'
require_relative 'deck'
require_relative 'guess'

class Round
  attr_reader :deck, :guesses, :number_correct, :number_incorrect
  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
    @number_incorrect = 0
  end

  def current_card
    current_card = deck.cards.shift
  end

  def record_guess(guess)
    attempt = Guess.new(guess, current_card)
    @guesses.push(attempt)
    if attempt.correct?
      @number_correct += 1
    else
      @number_incorrect += 1
    end
  end

  def percent_correct
    ((@number_correct.to_f / @guesses.count) * 100).to_i
  end
end
