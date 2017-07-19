require_relative 'test_helper'
require_relative '../lib/card_generator'


class CardGeneratorTest < Minitest::Test
  def test_it_can_create_cards_from_txt_file
    filename = 'cards.txt'
    cards = CardGenerator.new(filename).cards

    assert_instance_of Array, cards
    assert_equal 4, cards.count
  end
end
