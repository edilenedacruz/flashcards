class Deck
  attr_reader :cards
  def initialize(cards = Array.new)
    @cards = cards
  end

  def count
    @cards.count
  end
end
