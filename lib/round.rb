require_relative 'card'
require_relative 'deck'
require_relative 'guess'
require 'colorize'

class Round
  attr_reader :deck, :guesses, :number_correct, :number_incorrect
  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
    @number_incorrect = 0
  end

  def current_card
    current_card = deck.cards[@guesses.count]
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

  def start
    puts "Welcome! You are playing with #{@deck.count} cards."
    puts "---------------------------------------------------"


    @deck.cards.each do |card|
      puts "This is card number #{@guesses.count + 1} out of #{@deck.count}."
      puts "Question: #{card.question}"
      player_guess = gets.chomp
      record_guess(player_guess)
      puts "#{@guesses.last.feedback}"
    end
    puts "****** Game over! ******"
    puts "You had #{@number_correct} correct guesses out of #{@deck.count} for a score of #{percent_correct}%."
  end
end
