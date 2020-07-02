require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test

###Attempting to create a setup function to streamline testing.
# ##Tried "Let" and "Before" as well.
# def setup
#   @card1 = Card.new('heart', '5', 5)
#   @card2 = Card.new('spade', 'jack', 11)
#   @card3 = Card.new('diamond', 'ace', 14)
#   @deck = Deck.new(cards)
#   cards = [card1, card2, card3]
# end



  def test_it_exists

    card1 = Card.new('heart', '5', 5)
    card2 = Card.new('spade', 'jack', 11)
    card3 = Card.new('diamond', 'ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)

    assert_instance_of Deck, deck
  end

  def test_cards_have_readable_attributes
    card1 = Card.new('heart', '5', 5)
    card2 = Card.new('spade', 'jack', 11)
    card3 = Card.new('diamond', 'ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)

    assert_equal 'heart', deck.cards[0].suit
    assert_equal 'jack', deck.cards[1].value
    assert_equal 14, deck.cards[2].rank
  end

  def test_rank_card_at_method
    card1 = Card.new('heart', '5', 5)
    card2 = Card.new('spade', 'jack', 11)
    card3 = Card.new('diamond', 'ace', 14)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)

    assert_equal 5, deck.rank_of_card_at(0)
    assert_equal 14, deck.rank_of_card_at(2)
    assert_nil deck.rank_of_card_at(1)

  end
  #
  # def test_high_ranking_cards_method
  #   card1 = Card.new('heart', '5', 5)
  #   card2 = Card.new('spade', 'jack', 11)
  #   card3 = Card.new('diamond', 'ace', 14)
  #   cards = [card1, card2, card3]
  #   deck = Deck.new(cards)
  #
  #   assert_great_than 11, high_cards(0).rank
  #   assert_great_than 11, high_cards(1).rank
  # end

end