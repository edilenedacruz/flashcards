require_relative 'test_helper'
require_relative '../lib/card'

class CardTest < Minitest::Test
  def test_class_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_instance_of Card, card
  end

  def test_it_access_question
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_it_access_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "Juneau", card.answer
  end
end
