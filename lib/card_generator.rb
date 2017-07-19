require_relative 'card'

class CardGenerator
  def initialize(filename)
    @filename = filename
  end

  def cards
    cards = []
    f = File.open(@filename, "r")
    f.readlines.each do |row|
      cards.push(Card.new(row.chop.split(",")[0], row.chop.split(",")[1]))
    end
    f.close
    cards
  end
end
