require_relative 'test_helper'
require_relative '../lib/guess'

class GuessTest < Minitest::Test
  def test_class_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Card, guess.card
    assert_instance_of Guess, guess
  end

  def test_it_can_acess_access_player_guess
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Juneau", guess.response
  end

  def test_it_can_confirm_guess_is_correct
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert guess.correct?
  end

  def test_it_can_provide_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Correct!".colorize(:green), guess.feedback
  end

  def test_it_can_accept_different_card
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    assert_instance_of Card, guess.card
  end

  def test_it_can_access_different_answer
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    assert_equal "Saturn", guess.response
  end

  def test_it_can_confirm_guess_is_incorrect
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    refute guess.correct?
  end

  def test_it_can_provide_feedback_when_guess_is_incorrect
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    assert_equal "Incorrect.".colorize(:red), guess.feedback
  end
end
